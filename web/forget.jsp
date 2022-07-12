<%-- 
    Document   : forget
    Created on : 12-Jul-2022, 3:39:28 pm
    Author     : boney
--%>
<%@page language="java" import="import java.util.*"%>
<%@page language="java" import="import javax.mail.*"%>
<%@page language="java" import="import javax.mail.internet.*"%>
<%@page language="java" import="import javax.activation.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
        String to ="boneysajimon@gmail.com";
        String from = "undaakkunnaaccount@gmail.com";
        String host = "smtp.gmail.com";
        Properties properties = System.getProperties();
        try {
        }catch(MessagingException mex) {
            mex.printStackTrace();
        }
        %>
</html>
