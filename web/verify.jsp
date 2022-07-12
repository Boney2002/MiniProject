<%-- 
    Document   : verify
    Created on : 05-Jun-2022, 2:08:33 pm
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
        String s1 = (String)session.getAttribute("User");
        rs = stmt.executeQuery("select * from points where user=('"+s1+"');");
        while(rs.next())
        {
            int x1 = rs.getInt(2);
            int y1 = rs.getInt(3);
            int x2 = rs.getInt(4);
            int y2 = rs.getInt(5);
            int x3 = rs.getInt(6);
            int y3 = rs.getInt(7);
            int x4 = rs.getInt(8);
            int y4 = rs.getInt(9);
            int x5 = rs.getInt(10);
            int y5 = rs.getInt(11);
            int p1 = Integer.parseInt(request.getParameter("x1"));
            int p2 = Integer.parseInt(request.getParameter("x2"));
            int p3 = Integer.parseInt(request.getParameter("x3"));
            int p4 = Integer.parseInt(request.getParameter("x4"));
            int p5 = Integer.parseInt(request.getParameter("x5"));
            int q1 = Integer.parseInt(request.getParameter("y1"));
            int q2 = Integer.parseInt(request.getParameter("y2"));
            int q3 = Integer.parseInt(request.getParameter("y3"));
            int q4 = Integer.parseInt(request.getParameter("y4"));
            int q5 = Integer.parseInt(request.getParameter("y5"));
            if((p1>x1-5 && p1<x1+5)&&(q1>y1-5&&q1<y1+5))
            {
                if((p2>x2-5 && p2<x2+5)&&(q2>y2-5&&q2<y2+5))
                {
                    if((p3>x3-5 && p3<x3+5)&&(q3>y3-5&&q3<y3+5))
                    {
                        if((p4>x4-5 && p4<x4+5)&&(q4>y4-5&&q4<y4+5))
                        {
                            if((p5>x5-5 && p5<x5+5)&&(q5>y5-5&&q5<y5+5))
                            {
                                %>
                <jsp:forward page="final.jsp"/>
                <%
                            }else
            {
                %>
                 <a href="login.jsp">PASSWORD INCORRECT!!!!!! CLICK HERE TO LOGIN AGAIN</a>
                <%
            }
                        }else
            {
                %>
                 <a href="login.jsp">PASSWORD INCORRECT!!!!!! CLICK HERE TO LOGIN AGAIN</a>
                <%
            }
                    }else
            {
                %>
                 <a href="login.jsp">PASSWORD INCORRECT!!!!!! CLICK HERE TO LOGIN AGAIN</a>
                <%
            }
                }else
            {
                %>
                 <a href="login.jsp">PASSWORD INCORRECT!!!!!! CLICK HERE TO LOGIN AGAIN</a>
                <%
            }
            }
            else
            {
                %>
                 <a href="login.jsp">PASSWORD INCORRECT!!!!!! CLICK HERE TO LOGIN AGAIN</a>
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
    </body>
</html>
