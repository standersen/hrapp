<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.ResultSet"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    </head>
    <jsp:useBean id="empsbean" class="hrapp.DataHandler" scope="session"/>
    <%Integer employee_id = new Integer(request.getParameter("employee_id"));
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email = request.getParameter("email");
String phone_number = request.getParameter("phone_number");
String salary = request.getParameter("salary");
String job_id = request.getParameter("job_id");
empsbean.updateEmployee(employee_id.intValue(), first_name, last_name, email,
phone_number, salary, job_id );%>
    <body>
        <jsp:forward page="employees.jsp"/>
    </body>
</html>