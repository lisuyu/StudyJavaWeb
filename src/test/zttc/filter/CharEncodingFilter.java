package test.zttc.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharEncodingFilter implements Filter {
    private String encoding;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
         String e = filterConfig.getInitParameter("encoding");
         if (e==null||"".equals(e.trim())){
             encoding="UTF-8";
         }else{
             encoding = e;
         }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("过滤之前");
        servletRequest.setCharacterEncoding("UTF-8");
        filterChain.doFilter(servletRequest,servletResponse);
        System.out.println("过滤之后");
    }

    @Override
    public void destroy() {

    }
}
