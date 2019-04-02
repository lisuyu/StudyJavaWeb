<%@ page import="test.zttc.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="test.zttc.model.UserInit" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1 0001
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        List<User> users = UserInit.initUser();
    %>
</head>
<body>
<%
    out.println(request.getParameter("username"));
%>
<table width="700" align="center" border="1">
    <tr>
        <td>id</td><td>username</td><td>password</td>
    </tr>
    <%
        for (User u:users){
    %>
    <tr>
        <td><%=u.getId()%></td><td><%=u.getUsername()%></td><td><%=u.getPassword()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
