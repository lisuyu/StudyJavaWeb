<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1 0001
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>这是我的第好多次的第一个jsp</title>
</head>
<body>
<h1>Hello JSP</h1>
<%--jsp有一些重要的内置对象，常用的有
    out(PrintWriter),request(HttpServletRequest),response(HttpServletResponse),session(HeepSession),application(ServletContext)--%>
<%
    String str = "hello";
    out.println(str+"<br/>");
    String username = request.getParameter("username");
    out.println(username);
%>
<br/>
<%=username%>
</body>
</html>
