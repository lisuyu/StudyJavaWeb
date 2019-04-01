package itat.zttc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ScopeServlet")
public class ScopeServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        String username = config.getInitParameter("username");
        System.out.println(username);
    }

    @Override
    public void init() throws ServletException {
        System.out.println("init servlet");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service in invoking");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("do get");
    }

    @Override
    public void destroy() {
        System.out.println("destory!");
    }
}
