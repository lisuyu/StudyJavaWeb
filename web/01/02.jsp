<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1 0001
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form>
        请输入数字<input type="text" name="number">
        <input type="submit"/>
        <%=application.getRealPath("/")%>
    </form>
    <%!
        int a = 10;
    %>
    <%=a%>
    <%
        try {
            int number = Integer.parseInt(request.getParameter("number"));
    %>
    <table border="1">
            <%
                for (int i = 1;i<=number;i++){
            %>
        <tr>
            <%
                for (int j=1;j<=i;j++){
            %>
            <td>
                <%=i%>*<%=j%>=<%=i*j%>
            </td>
            <%
            }
            %>
        </tr>
            <%
                }
            %>
    </table>
    <%
        } catch (NumberFormatException e) {
    %>
        <h1>请输入正确格式<h1>
    <%
        }
    %>
</body>
</html>
