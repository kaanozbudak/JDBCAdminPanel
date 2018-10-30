package servlets;

import handler.Database;
import handler.User;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

public class RegisterServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String url = "";
        Database database = new Database();
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(firstName,lastName,userName,email,password);
        System.out.println(firstName + "/" + lastName + "/" + userName + "/" + email + "/" + password);

        if(database.registerCheck(email,userName))
        {
            // if register check return true that means that user already exists
            url = "/errorRegister.jsp";
        }
        else
        {

            database.registerUser(user);
            url = "/index.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
