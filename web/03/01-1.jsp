<%@ page import="test.zttc.model.User" %>
<%@ page import="javax.print.attribute.standard.JobOriginatingUserName" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/2 0002
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用来进行参数接受测试</title>

    <%
        User u =(User)request.getAttribute("user");
        User u1 = (User)pageContext.getAttribute("user");
        User u2 = (User)session.getAttribute("user");
        User u3 = (User)application.getAttribute("user");
    %>
</head>
<body>
<%--pageContext无法跨页面传输<%=u.getUsername()%>--%>
<table border="1">
    <tr>
        <td>传参方式</td><td>客户端跳转（response.redirect()）</td><td>服务器端跳转（jsp:forward）</td>
    </tr>
    <tr>
        <td>getParameter传参</td><td><%=request.getParameter("username")%></td>
    </tr>
    <tr>
        <td>request.getAttribute()传参</td><td><%=u%></td><td><%=u%></td>
    </tr>
    <tr>
        <td>pageContext.getAttribute()传参</td><td><%=u1%></td><td><%=u1%></td>
    </tr>
    <tr>
        <td>session.getAttribute()传参</td><td><%=u2%></td><td><%=u2%></td>
    </tr>
    <tr>
        <td>application.getAttribute()传参</td><td><%=u3%></td><td><%=u3%></td>
    </tr>
    <tr>
        <td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td>
    </tr>
</table>
</body>
</html>
