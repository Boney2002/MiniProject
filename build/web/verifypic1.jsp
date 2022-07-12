<%-- 
    Document   : verifypic1
    Created on : 06-Jun-2022, 12:09:30 pm
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
        <form name="form5" action="verify.jsp" method="POST">
            <tbody>
                <tr>
                    <td> Click 5 points in the image: </td>
                    <td>  <img  name="pic" src="pic.jpg" width="500" height="500" alt="pic"/> </td>
                </tr>
                <tr>
                    <td>x1</td>
                    <td><input id="x11" type="text" name="x1" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y1 </td>
                    <td><input id="y11" type="text" name="y1" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x2</td>
                    <td><input id="x12" type="text" name="x2" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y2 </td>
                    <td><input id="y12" type="text" name="y2" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x3</td>
                    <td><input id="x13" type="text" name="x3" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y3 </td>
                    <td><input id="y13" type="text" name="y3" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x4</td>
                    <td><input id="x14" type="text" name="x4" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y4 </td>
                    <td><input id="y14" type="text" name="y4" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>x5</td>
                    <td><input id="x15" type="text" name="x5" value="" size="5" readonly="readonly" /></td>
                </tr>
                <tr> 
                    <td> y5 </td>
                    <td><input id="y15" type="text" name="y5" value="" size="5" readonly="readonly" /></td>
                </tr>
            </tbody>
        </table>
        <script>
             const x1=[],y1=[];
             var i=1;
               function printMousePos(event)
                {   
                    x1[i] = event.clientX;
                    y1[i] = event.clientY;
                    document.getElementById("x1"+i).value=x1[i];
                    document.getElementById("y1"+i).value=y1[i]
                    i++;
                }
                  document.pic.addEventListener("click",printMousePos);  
                 </script>
                 Press Confirm button only after clicking the password points
                 <input type="submit" value="CONFIRM" name="b4" />
        </form>
    </body>
</html>
