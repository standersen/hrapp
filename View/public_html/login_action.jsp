<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>login_action</title>
    </head>
    <body>
        <%@ page import="java.sql.ResultSet"%>
        <%@ page import="hrapp.DataHandler"%>
        <jsp:useBean id="empsbean" class="hrapp.DataHandler" type="hrapp.DataHandler" scope="session"/>
        <%boolean userIsValid = false;
String host = request.getParameter("host");
String userid = request.getParameter("userid");
String password = request.getParameter("password");
String jdbcUrl = "jdbc:oracle:thin:@" + host + ":1521/pdb1.crayon.oraclecloud.internal";
userIsValid = empsbean.authenticateUser(jdbcUrl, userid, password, session);%>

<%if (userIsValid){%><jsp:forward page="employees.jsp"/>
        
<%} else {%><jsp:forward page="login.jsp"/>
        
<%}%>
    </body>
</html>