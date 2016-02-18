<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    </head>
        <jsp:useBean id="empsbean" class="hrapp.DataHandler" scope="session"/>
    <body>
            <%Integer employee_id =
new Integer(request.getParameter("empid"));
empsbean.deleteEmployeeById(employee_id.intValue());%>
<jsp:forward page="employees.jsp"/>
    </body>
</html>