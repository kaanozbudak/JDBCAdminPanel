package servlets;

import handler.Database;
import handler.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String url = "/";
        Database database = new Database();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = new User(userName,password);
        System.out.println(userName + "/" + password);
        database.startConnection();

        if(database.loginCheck(userName, password)) // sent user to database and check is already exists or not
        {
            url = "/userPage.jsp";
            // true username and password, success login
        }
        else
        {
            url = "/errorPage.jsp";
            // wrong username or password, give pop up to screen
        }

    request.getRequestDispatcher(url).forward(request,response);
    //RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
    //requestDispatcher.forward(request, response);
}
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
