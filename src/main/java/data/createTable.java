package data;


import handler.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class createTable extends javax.servlet.http.HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, NullPointerException {
        String uri = request.getRequestURI();

        if (uri.endsWith("filltheTable")) {
            filltheTable(request, response);
        }
    }

    public void filltheTable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tableName = request.getParameter("tableName");
        String colName = request.getParameter("colName");
        String type = request.getParameter("type");
        String pk = request.getParameter("pk");
        Database db = new Database();
        System.out.println(pk);
        db.createTable(tableName,colName,type);
    }


    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }

}
