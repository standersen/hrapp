<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>login</title>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <body>

            <h2>
             &nbsp;
            <img height="40" width="270" src="Crayon.jpg"/>
            HR Application
        </h2>

            <h3>Application Login to HR DEMO</h3><%String loginerrormsg = null;
loginerrormsg = (String) session.getAttribute("loginerrormsg");
if (loginerrormsg != null) {%><%=loginerrormsg%>
        
<%}%>
         <form action="login_action.jsp">
            <table>
                <tr>
                    <td>User ID:</td>
                    <td>
                        <input type="text" name="userid"/>
                    </td>
                </tr><tr>
                    <td>Password:</td>
                    <td>
                        <input type="text" name="password"/>
                    </td>
                </tr><tr>
                    <td>Host:</td>
                    <td>
                        <input type="text" name="host"/>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Submit"/>
        </form>
        <p>
            &nbsp;
        </p>
    </body>
</html>