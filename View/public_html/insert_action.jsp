<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <jsp:useBean id="empsbean" class="hrapp.DataHandler" scope="session"/>
    <%String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email = request.getParameter("email");
String phone_number = request.getParameter("phone_number");
String job_id = request.getParameter("job_id");
Integer salary = new Integer(request.getParameter("salary"));
empsbean.addEmployee(first_name, last_name, email, phone_number, job_id,
salary.intValue());%>
    <body>
        <jsp:forward page="employees.jsp"/>
    </body>
</html>