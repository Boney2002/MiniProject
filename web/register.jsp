<%-- 
    Document   : register
    Created on : 24-May-2022, 6:09:33 pm
    Author     : KRISHNAPRIYA
--%>

<%@page language="java"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html" xmlns:f="http://java.sun.com/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINI PROJECT</title>
        
    </head>
    <body>
        <h1>REGISTER</h1>
        
        
        <form action="display.jsp" method="POST">
            <table border="0">
                      <tbody>
                    <tr>
                        <td>UserName: </td>
                        <td><input type="text" name="UserName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Age: </td>
                        <td><input type="text" name="Age" value="" size="5" /></td>
                    </tr>
                    <tr>
                        <td>Choose a pic: </td>
                      <table border="1">
                         
                          <tbody>
                              <tr>
                                  <td><img src="pic.jpg" width="300" height="300" alt="pic"/></td>
                                  <td><img src="pic1.jpg" width="300" height="300" alt="pic1"/></td>
                              </tr>
                              <tr>
                                  <td><input type="radio" name="rb" value="1" />
                                  </td>
                                  <td><input type="radio" name="rb" value="2" /></td>
                              </tr>
                          </tbody>
                      </table>
            <input type="reset" value="clear" name="clear" />
            <input type="submit" value="submit" name="submit" />
        </form>
        <form name="file" action="filedb.php" method="post" enctype="multipart/form-data">
   <input type="file" name="file" />
   <input type="submit" name="Upload" value="Upload">
        </form>
    </body>
</html>
