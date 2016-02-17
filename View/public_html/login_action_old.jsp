<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>login_action.jsp</title>
    </head>
    <body>
        <%@ page import="java.sql.ResultSet"%><jsp:useBean id="empsbean" class="hrapp.DataHandler" scope="session"/>
        <%
boolean userIsValid = false;
String host = request.getParameter("host");
String userid = request.getParameter("userid");
String password = request.getParameter("password");
//String jdbcUrl = "jdbc:oracle:thin:hr/hr@localhost:1521:pdbx1.localdomain";
String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:pdbx1.localdomain";
System.out.println("\nExecuting jdbcUrl: " + jdbcUrl);
userIsValid = empsbean.authenticateUser(jdbcUrl, userid, password, session);
%>
<%if (userIsValid){%><jsp:forward page="employees.jsp"/><%} 
else {%><jsp:forward page="login_old.jsp"/><%}%>
    </body>
</html>
