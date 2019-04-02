<%@ page import="test.zttc.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/2 0002
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用来进行参数传输设置</title>
    <%
        User user = new User(1,"lsy","123");
        pageContext.setAttribute("user",user);
        request.setAttribute("user",user);
        session.setAttribute("user",user);
        application.setAttribute("user",user);
    %>
</head>
<body>
<a href="01-1.jsp?username=XXX">客户端跳转到01-1</a><br>

<%=((User)pageContext.getAttribute("user"))%>   pageContext可以在同一页面传输
通过将下面代码注释，控制跳转方式
<%--<jsp:forward page="01-1.jsp"></jsp:forward>--%>
</body>
</html>
