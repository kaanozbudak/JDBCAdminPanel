package data;

import handler.Database;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CreateDatabase extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, NullPointerException {
        String url = "";
        HttpSession session = request.getSession();
        Database database = new Database();
        String dbName = request.getParameter("dbName");
        session.setAttribute("dbName",dbName);

        if(database.checkNewDatabase(dbName)){
            System.out.println("It is exist!");
        }else{
            database.createDatabase(dbName);
            url="showDatabases.jsp";
        }
        request.getRequestDispatcher(url).forward(request,response);
    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {}

}
