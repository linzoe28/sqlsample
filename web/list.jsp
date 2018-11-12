<%-- 
    Document   : list
    Created on : 2018/11/12, 下午 04:48:37
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="add.html">ADD</a>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>PASSWORD</td>
                <td></td>
            </tr>
            <%
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from Login");
                while (rs.next()) {
            %>
            <tr><td><%=rs.getString("ID")%></td>
                <td><%=rs.getString("PASSWORD")%></td>
                <td><a href="delect.jsp?id=<%=rs.getString("ID")%>">delete</a></td>
            </tr>
            <%
                }
                conn.close();
               
            %>
        </table>
    </body>
</html>
