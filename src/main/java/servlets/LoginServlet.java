package servlets;

import handler.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import handler.Database;

public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String url = "";
        Database database = new Database();
        User user = new User(request.getParameter("firstname")
                , request.getParameter("lastname")
                , request.getParameter("username")
                , request.getParameter("email")
                , request.getParameter("password"));

        if(database.loginCheck(user))
        {

            url = "user_page.jsp"
        }
        else
        {
            url = "";
        }


    RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
    requestDispatcher.forward(request, response);
}
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
