<%-- 
    Document   : delect
    Created on : 2018/11/12, 下午 04:54:50
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
    Statement stmt = conn.createStatement();

    stmt.executeUpdate("delete from Login WHERE ID='" + request.getParameter("id") + "'");
    response.sendRedirect("list.jsp");

%>