<%-- 
    Document   : display
    Created on : 24-May-2022, 6:11:31 pm
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
String user=request.getParameter("UserName");
session.setAttribute("UserName",user);
String age=request.getParameter("Age");
String s1 = request.getParameter("rb");
stmt.executeUpdate("insert into user values('"+user+"','"+age+"','"+s1+"');");
con.close();
stmt.close();
if(s1.equals("1"))
{
%>
<jsp:forward page="pic1.jsp"/>
<%
    }
else if(s1.equals("2"))
{
%>
<jsp:forward page="pic2.jsp"/>
<%
}
}
catch(ClassNotFoundException e)
{
out.println(e.getMessage());
} %>


    </body>
</html>
