<%-- 
    Document   : login
    Created on : 25-May-2022, 7:26:20 pm
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
        <h1>LOGIN</h1>
        <form name="f6" action="" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td> UserName: </td>
                        <td> <input type="text" name="Name" value="" size="30" /> </td>
                        <td>Press enter key after typing username </td>
                    </tr>
                </tbody>
            </table>       
            <%
               try
{
ResultSet rs =null;
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/password","root","boney");
Statement stmt=con.createStatement();
        String s1 = request.getParameter("Name");
        session.setAttribute("User",s1);
        rs = stmt.executeQuery("select pic from user where name=('"+s1+"');");
        if(rs.next())
        {
            String s = rs.getString(1);
            if(s.equals("1"))
            {
                %>
                <jsp:forward page="verifypic1.jsp"/>
                <%
            }
            else if(s.equals("2"))
            {
                %>
                <jsp:forward page="verifypic2.jsp"/>
                <%
            }
        }
    con.close();
    stmt.close();
    }
    catch(ClassNotFoundException e)
    {
        out.println(e.getMessage());
    }  
             %>
        </form>
    </body>
</html>
