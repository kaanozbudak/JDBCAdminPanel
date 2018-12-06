package listener;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class CountListener implements HttpSessionListener {
    ServletContext context = null;
    static int t = -2, curr = -2;

    public void sessionCreated(HttpSessionEvent e){
        t++;
        curr++;

        context=e.getSession().getServletContext();
        context.setAttribute("totalUser",t);
        context.setAttribute("currentUser",curr);
    }
    public void sessionDestroyed(HttpSessionEvent e){
        curr--;
        context.setAttribute("currentUser",curr);
    }
}
