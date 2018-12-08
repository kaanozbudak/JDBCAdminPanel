package data;

import handler.Database;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class dropDatabase extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws javax.servlet.ServletException, IOException, NullPointerException {
        Database database = new Database();
        String elementDbName = request.getParameter("databases");
        System.out.println(elementDbName);
        request.setAttribute("elementDbName",elementDbName);

        database.dropDatabase(elementDbName);

        request.getRequestDispatcher("showDatabases.jsp").forward(request,response);

    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {}

}
