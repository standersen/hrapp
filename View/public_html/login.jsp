<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>login</title>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <body>
        <p>
            <h2>ACME Corporation: HR Application</h2>
        </p>
        <p>
            <h3>Application Login</h3>
        </p>
        <p>
            &nbsp;
        </p>
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
        <p>
            &nbsp;
        </p>
    </body>
</html>