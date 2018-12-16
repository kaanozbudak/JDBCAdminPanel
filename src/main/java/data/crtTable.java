package data;


import handler.Database;
import handler.Values;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class crtTable extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, NullPointerException {
        HttpSession session = request.getSession();
        String uri = request.getRequestURI();

        if (uri.endsWith("fillTables")) {
            fillTables(request, response);
        } else if (uri.endsWith("crtTable")) {
            crtTable(request, response);
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }

    public void fillTables(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        HttpSession session = request.getSession();
        String loop = (String) session.getAttribute("loop");
        int intloop = Integer.parseInt(loop);
        Values val = new Values();
        ArrayList<Values> values = new ArrayList<Values>();
        Database db = new Database();

        for (int i = 0; i < intloop; i++) {
            String colName = request.getParameter("colName" + i);
            String type = request.getParameter("type" + i);
            String pk = request.getParameter("pk" + i);

            session.setAttribute("colName" + i, colName);
            session.setAttribute("type" + i, type);
            session.setAttribute("pk" + i, pk);

            values.add(new Values(colName,type,pk));
        }

        for(int j=0;j<intloop;j++){
            String colName = values.get(j).getColName();
            System.out.println(values.get(j).getColName());
            System.out.println(values.get(j).getType());
            System.out.println(values.get(j).getPk());
        }


    }

    public void crtTable(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        HttpSession session = request.getSession();

        String loop = request.getParameter("numberOfCol");
        session.setAttribute("loop", loop);
        System.out.println(session.getAttribute("loop"));

        request.getRequestDispatcher("fillTable.jsp").forward(request, response);
    }
}


