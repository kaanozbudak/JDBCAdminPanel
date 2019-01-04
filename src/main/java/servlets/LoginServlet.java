package servlets;

import filters.ResponseTime;
import handler.Database;
import handler.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, NullPointerException {

        String url = "/";
        Database database = new Database();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = new User(userName,password);
        System.out.println(userName + "/" + password);
        database.startConnection();
        PrintWriter out = response.getWriter();
        ServletContext context = getServletContext();
        int t = Integer.parseInt(context.getAttribute("totalUser").toString());
        int c = (Integer)context.getAttribute("currentUser");
        if(database.loginCheck(userName, password)) // sent user to database and check is already exists or not
        {
            HttpSession session = request.getSession();
            System.out.println("Session ID "+session.getId());
            System.out.println("Total User Loged in: "+ t);
            System.out.println("Current User in: "+c);

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
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {}

}
