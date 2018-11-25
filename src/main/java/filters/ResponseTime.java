package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class ResponseTime implements Filter {
    static int count=0;
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain fchain)throws IOException, ServletException{

        long before = System.currentTimeMillis();

        fchain.doFilter(req,res);

        long after = System.currentTimeMillis();

        long total = after-before;



        System.out.println("Response Time is: "+total);
    }
}
