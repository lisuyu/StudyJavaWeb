package test.zttc.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hello");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>"+request.getContextPath()+"</h1>");
        out.println("<h1>"+request.getSession().getServletContext().getRealPath("/")+"</h2>");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println("<h1>hello:"+username+"</h1>");
        out.println("<h1>password:"+password+"</h1>");
//        Enumeration<String> enu = request.getParameterNames();
//        while (enu.hasMoreElements()){
//            out.println(enu+"<br>");
//        }
        out.println("</body></html>");
    }
}
