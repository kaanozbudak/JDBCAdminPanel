package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class ResponseTime implements Filter {
    static int count=0;
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain fchain)throws IOException, ServletException{

        HttpServletRequest rq = (HttpServletRequest) req;
        String servletPath = rq.getServletPath();
        System.out.println("#INFO " + new Date() + " - ServletPath :" + servletPath //
                + ", URL =" + rq.getRequestURL());

        fchain.doFilter(req,res);
        //long before = System.currentTimeMillis();

        //long after = System.currentTimeMillis();

        //long total = after-before;

        //System.out.println(total);
    }
}
