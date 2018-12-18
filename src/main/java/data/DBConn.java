package data;

import handler.Values;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBConn {
    private static String serverID, serverIP, serverPassword;
    private static Connection con;
    private static Statement stat;
    private static ResultSet rs;
    private static PreparedStatement ps;

    public void make_DBConn(String ip, String id, String password) {
        this.serverIP = ip;
        this.serverID = id;
        this.serverPassword = password;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + this.serverIP + ":/?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
                    this.serverID, this.serverPassword);

        } catch (Exception e) {
            System.out.println("Have a problem while connecting DB server");
        }
    }

    public void closeStat() {
        try {
            stat.close();
        } catch (SQLException e) {
            System.out.println("Have a problem closing Statement: " + e.getLocalizedMessage());
        }
    }

    public void closeConn() {
        try {
            con.close();
        } catch (SQLException e) {
            System.out.println("Have a problem closing connection: " + e.getLocalizedMessage());
        }
    }

    public ResultSet executeQuerry(String qry) {
        try {
            stat = con.createStatement();
            rs = stat.executeQuery(qry);
        } catch (SQLException e) {
            System.out.println("Have a problem while executing querry: " + qry);
        }
        return rs;
    }

    public void updateQuerry(String databaseName, String tableName,
                             String changingColumnName, String changingValue, String primaryKeyColumnName, String primaryKeyValue) {
        try {
            ps = con.prepareStatement("update " + databaseName + "." + tableName + " set " + changingColumnName + "=? where " + primaryKeyColumnName + "=?");
            ps.setString(1, changingValue);
            ps.setString(2, primaryKeyValue);
            System.out.println(ps);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Have a problem while executing an update: " + e.getMessage());
        }
    }

    public void insertIntoTable(String databaseName, String tableName, String[] values, ArrayList<RowData> rowData) {
        String questionMarks = "";
        for (int i = 0; i < values.length; i++) {
            questionMarks = questionMarks + "?";
            if (i != values.length - 1)
                questionMarks = questionMarks + ", ";
        }
        System.out.println(questionMarks);
        try {
            ps = con.prepareStatement("insert into " + databaseName + "." + tableName + " values(" + questionMarks + ");");
            System.out.println(ps);
            for (int i = 0; i < values.length; i++) {
                ps.setString(++i, values[--i]);
            }
            System.out.println(ps);
            ps.execute();
            RowData temp = new RowData(values.length);
            for (int i = 0; i < values.length; i++) {
                temp.setCol(values[i], i);
            }
            rowData.add(temp);


        } catch (SQLException e) {
            System.out.println("Have a problem while inserting into the " + tableName + " : " + e.getLocalizedMessage());
        }
    }

    public void createNewTable(String databaseName, String newTableName, ArrayList<Values> val, ArrayList<String> tables) {
        String questionMarks = "";
        for (int i = 0; i < val.size(); i++) {
            if (i != val.size() - 1) questionMarks = questionMarks + "? ? ?,";
            else {
                questionMarks = questionMarks + "? ? ?";
            }
        }
        for (int i = 0; i < val.size(); i++) {
            System.out.println(val.get(i).getColName() + ":" + val.get(i).getType() + ":" + val.get(i).getPk());
        }
        System.out.println(questionMarks);
        try {
            String st = "create table " + databaseName + "." + newTableName + "(";
            for(int i=0;i<val.size();i++){
                if(i != val.size()-1)   st = st + val.get(i).getColName() +" " + val.get(i).getType() +" " + val.get(i).getPk() +",";
                else    st = st + val.get(i).getColName() +" " + val.get(i).getType() +" " + val.get(i).getPk() +");";
            }
            System.out.println(st);
            ps = con.prepareStatement(st);
            ps.executeUpdate();
            tables.add(newTableName);

        } catch (SQLException e) {
            System.out.println("Have a problem while creating a new table " + newTableName + " : " + e.getLocalizedMessage());
        }

    }
    public void dropTable(String databaseName, String tableName, ArrayList<String> tables) {
        String qry = "drop table " + databaseName + "." + tableName;
        try {
            ps = con.prepareStatement(qry);
            ps.executeUpdate();
            for(int i=0;i<tables.size();i++) {
                if(tables.get(i).equals(tableName)) {
                    tables.remove(i);
                }
            }
        } catch (SQLException e) {
            System.out.println("Have a problem while dropping table " + tableName + " : " + e.getLocalizedMessage());
        }
    }
    public void deleteRow(String databaseName, String tableName, int primaryKeyIndex ,int selectedRowIndex, ArrayList<ColumnData> columnData, ArrayList<RowData> rowData) {
        String primaryKeyColName = columnData.get(primaryKeyIndex).getName();
        String primaryKeyRowVal = rowData.get(selectedRowIndex).getCol()[primaryKeyIndex];
        String qry = "delete from " +databaseName +"." + tableName + " where " + primaryKeyColName + " = " + primaryKeyRowVal +";";
        System.out.println(qry);
        try {
            ps = con.prepareStatement(qry);
            ps.executeUpdate();
            for(int i=0;i<rowData.size();i++) {
                if(rowData.get(i).getCol()[primaryKeyIndex] == primaryKeyRowVal) {
                    rowData.remove(i);
                }
            }
        } catch (SQLException e) {
            System.out.println("Have a problem while deleting the row: " +  e.getLocalizedMessage());
        }
    }



}
