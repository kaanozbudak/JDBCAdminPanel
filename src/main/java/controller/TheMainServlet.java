package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import data.ColumnData;
import data.DBConn;
import data.RowData;

public class TheMainServlet extends HttpServlet {
    private DBConn dbc;
    private ArrayList<String> databases;
    private ArrayList<String> tables;
    private ArrayList<ColumnData> columnData;
    private ArrayList<RowData> rowData;
    private static HttpSession session;
    private ResultSet rs;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        session = request.getSession();
        if(uri.endsWith("databases")) {
            databases(request, response);
        }
        else if(uri.endsWith("tables")) {
            tables(request, response);
        }
        else if(uri.endsWith("rows")) {
            rows(request, response);
        }
        else if(uri.endsWith("editRow")) {
            editRow(request, response);
        }
        else if(uri.endsWith("updateRow")) {
            updateRow(request, response);
        }


    }
    private void databases(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dbc = new DBConn();
        String serverIP = request.getParameter("serverIP");
        String serverID = request.getParameter("serverID");
        String serverPassword = request.getParameter("serverPassword");
        dbc.make_DBConn(serverIP, serverID, serverPassword);
        rs = dbc.executeQuerry("show databases");
        databases = new ArrayList<String>();
        try {
            while(rs.next()) {
                databases.add(rs.getString(1));
            }
            session.setAttribute("databases", databases);
        }catch(SQLException e) {
            System.out.println("Have a problem getting database " + e.getLocalizedMessage());
        }
        dbc.closeStat();
        request.getRequestDispatcher("/showDatabases.jsp").forward(request, response);

    }
    private void tables(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkedDB = request.getParameter("databases");
        rs = dbc.executeQuerry("show tables from " + checkedDB);
        session.setAttribute("checkedDB", checkedDB);
        tables  = new ArrayList<String>();
        try {
            while(rs.next()) {
                tables.add(rs.getString(1));
            }
            session.setAttribute("tables", tables);
        } catch (SQLException e) {
            System.out.println("Have a problem getting tables " + e.getLocalizedMessage());
        }
        dbc.closeStat();
        request.getRequestDispatcher("/showTables.jsp").forward(request, response);
    }
    private void rows(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkedTable = request.getParameter("tables");
        String checkedDB = (String) session.getAttribute("checkedDB");
        session.setAttribute("checkedTable", checkedTable);
        rs= dbc.executeQuerry("show columns from "+ checkedDB + "." + checkedTable);
        columnData = new ArrayList<ColumnData>();
        boolean bool;
        try {
            while(rs.next()) {
                if(rs.getString("Null").equals("YES"))	bool = true;
                else bool = false;
                columnData.add(new ColumnData(rs.getString("field"), rs.getString("type"),
                        bool, rs.getString("key"), rs.getString("Default")));
            }
            session.setAttribute("columnData", columnData);
        } catch (SQLException e) {
            System.out.println("Have a problem getting columns: "+ e.getLocalizedMessage());
        }
        rs = dbc.executeQuerry("select * from " + checkedDB + "." + checkedTable);
        rowData = new ArrayList<RowData>();
        try {
            int i=0;
            while(rs.next()) {
                rowData.add(new RowData(columnData.size()));
                for(int j=1;j<=columnData.size();j++) {
                    rowData.get(i).setCol(rs.getString(j), j-1);
                }
                i++;
            }
            session.setAttribute("rowData", rowData);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        for(int i=0;i<columnData.size();i++) {
            if(columnData.get(i).getKey().equals("PRI"))	session.setAttribute("primaryKeyIndex", i);
        }


        dbc.closeStat();
        request.getRequestDispatcher("/showRows.jsp").forward(request, response);
    }
    private void editRow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String checkedRow = request.getParameter("rows");

        session.setAttribute("checkedRow", checkedRow);
        System.out.println(checkedRow);
        request.getRequestDispatcher("/edit_create_Row.jsp").forward(request, response);

    }
    private void updateRow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String databaseName = (String) session.getAttribute("checkedDB");
        String tableName = (String) session.getAttribute("checkedTable");
        String primaryKeyColumnName = columnData.get((Integer)session.getAttribute("primaryKeyIndex")).getName();
        String primaryKeyValue = rowData.get((Integer)session.getAttribute("selectedRowIndex")).getCol()[(Integer)session.getAttribute("primaryKeyIndex")];

        String updatedData [] = new String[columnData.size()];
        for(int i=0;i<columnData.size();i++) {
            updatedData[i]= request.getParameter(columnData.get(i).getName());
            if(!rowData.get((Integer)session.getAttribute("selectedRowIndex")).getCol()[i].equals(updatedData[i])) {
                dbc.updateQuerry(databaseName, tableName, columnData.get(i).getName(), updatedData[i], primaryKeyColumnName, primaryKeyValue);

            }

        }

        System.out.println();


    }
}
