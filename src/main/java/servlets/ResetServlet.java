package servlets;

import handler.Database;
import sun.rmi.server.Dispatcher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ResetServlet")
public class ResetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Database database = new Database();
        String url = "/";
        String userName = request.getParameter("userName");
        String password = request.getParameter("user_password");
        System.out.println("will change password :" + userName + "/" + password);

        if (database.checkUser(userName))
        {
            database.updatePassword(userName,password);
            // if there is an user update it

            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Password updated');");
            out.println("</script>");

            url = "/index.jsp";
        }
        else
        {
            System.out.println("there is not user like that");
            url = "/errorPage.jsp";
        }
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
