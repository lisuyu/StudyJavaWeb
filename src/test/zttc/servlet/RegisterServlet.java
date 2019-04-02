package test.zttc.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String address = request.getParameter("address");
        String[] interest = request.getParameterValues("interest");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>用户名："+username+"</h1>");
        out.println("<h2>密码："+password+"</h2>");
        out.println("<h3>性别："+sex+"</h3>");
        out.println("<h4>籍贯："+address+"</h4>");
        out.println("<h5>兴趣爱好：");
        for (String str:interest){
            out.print(str+" ");
        }
        out.println("<h5>");
        out.println("</body></html>");
    }
}
