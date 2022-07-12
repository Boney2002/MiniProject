<%-- 
    Document   : password
    Created on : 04-Jun-2022, 1:00:19 pm
    Author     : KRISHNAPRIYA
--%>
<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINI PROJECT</title>
    </head>
    <body>
        <%
           try
{
ResultSet rs =null;
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/password","root","boney");
Statement stmt=con.createStatement();
        String s1 = (String)session.getAttribute("UserName");
        String x1 = request.getParameter("x1");
        String y1 = request.getParameter("y1");
        String x2 = request.getParameter("x2");
        String y2 = request.getParameter("y2");
        String x3 = request.getParameter("x3");
        String y3 = request.getParameter("y3");
        String x4 = request.getParameter("x4");
        String y4 = request.getParameter("y4");
        String x5 = request.getParameter("x5");
        String y5 = request.getParameter("y5");
        stmt.executeUpdate("insert into points values('"+s1+"',"+x1+","+y1+","+x2+","+y2+","+x3+","+y3+","+x4+","+y4+","+x5+","+y5+");");
        out.println("ACCOUNT CREATED SUCCESSFULLY\n");
con.close();
stmt.close();
}
catch(ClassNotFoundException e)
{
out.println(e.getMessage());
} 
        %>
        <a href="index.jsp">BACK TO MAIN PAGE</a>
    </body>
</html>
