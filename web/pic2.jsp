<%-- 
    Document   : pic2
    Created on : 01-Jun-2022, 4:23:29 pm
    Author     : KRISHNAPRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>MINI PROJECT</title>
       
    </head>
    <body> 
            <form name="f2" action="password.jsp" method="POST">          
                <tbody>
                <tr>
                    <td> Click 5 points in the image: </td>
                    <td>  <img  name="pic1" src="pic1.jpg" width="500" height="500" alt="pic1"/> </td>
                </tr>
                <tr>
                    <td>x1</td>
                    <td><input id="x1" type="text" name="x1" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y1 </td>
                    <td><input id="y1" type="text" name="y1" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x2</td>
                    <td><input id="x2" type="text" name="x2" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y2 </td>
                    <td><input id="y2" type="text" name="y2" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x3</td>
                    <td><input id="x3" type="text" name="x3" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y3 </td>
                    <td><input id="y3" type="text" name="y3" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x4</td>
                    <td><input id="x4" type="text" name="x4" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y4 </td>
                    <td><input id="y4" type="text" name="y4" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x5</td>
                    <td><input id="x5" type="text" name="x5" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y5 </td>
                    <td><input id="y5" type="text" name="y5" value="" size="5" readonly="readonly" /></td>
                </tr>
            </tbody>
        </table>
            <script>
             const x=[],y=[];
             var i=1;
               function printMousePos(event)
                {   
                    x[i] = event.clientX;
                    y[i] = event.clientY;
                    document.getElementById("x"+i).value=x[i];
                    document.getElementById("y"+i).value=y[i]
                    i++;
                }
                document.pic1.addEventListener("click", printMousePos); 
            </script>  
            <input type="submit" value="CONFIRM" name="b3" /> 
            </form>
    </body>
</html>
