package servlets;
import handler.User;
import handler.Database;

import java.io.IOException;

public class RegisterServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String url = "";
        Database database = new Database();
        User user = new User(request.getParameter("firstname")
                , request.getParameter("lastname")
                , request.getParameter("username")
                , request.getParameter("email")
                , request.getParameter("password"));
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
