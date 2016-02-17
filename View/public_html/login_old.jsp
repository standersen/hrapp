<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>login</title>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <body>
        <h2>ACME Co: HR Application</h2>
        <p>
            <h3>Application Login</h3>
        </p>
        <p>
            <%String loginerrormsg = null;
             loginerrormsg = (String) session.getAttribute("loginerrormsg");
             if (loginerrormsg != null) {%>
        </p>
        <p>
            <h4>
            <%=loginerrormsg%>
            <%}%>
            </h4>
        </p>
        <form action="login_action.jsp"></form>
        <table>
            <tr>
                <td width="70">
                    User ID:
                </td>
                <td width="156">
                    <form>
                        <input type="text" name="userid"/>
                    </form>
                </td>
            </tr><tr>
                <td width="70">Password:</td>
                <td width="156">
                    <form>
                        <input type="text" name="password"/>
                    </form>
                </td>
            </tr><tr>
                <td width="70">Host:
                </td>
                <td width="156">
                    <form>
                        <input type="text" name="host"/>
                    </form>
                </td>
            </tr>
        </table>
        <form>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>