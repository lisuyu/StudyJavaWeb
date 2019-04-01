package itat.zttc.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NumberServlet")
public class NumberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        //int num =  Integer.valueOf(request.getParameter("times")) ;
        int num = Integer.parseInt(request.getParameter("times"));
        for (int i=0;i<num;i++){
            out.println("<h1>Hello<h1>" );
        }
        out.println("</body></html>");
    }
}
