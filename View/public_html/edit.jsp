<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <body>
        <p>
            <h2>ACME Co: HR Application</h2>
        </p>
        <p>
            <h3>Edit Employee Record</h3>
        </p>
        <jsp:useBean id="empsbean" class="hrapp.DataHandler" scope="session"/>
        <jsp:useBean id="employee" class="hrapp.Employee"/> 

        <%Integer employee_id = new Integer(request.getParameter("empid"));
employee = empsbean.findEmployeeById(employee_id.intValue());
%>
        <form action="update_action.jsp">
            <table>
                <tr>
                    <th>
                        First Name
                    </th>
                    <td>
                        <input type="hidden" name="employee_id" value="&lt;%= employee.getEmployeeId()%>"/>
                        <input type="text"   name="first_name"  value="&lt;%= employee.getFirstName()%>"/>
                    </td>
                </tr><tr>
                    <th>
                        Last Name
                    </th>
                    <td>
                        <input type="text" name="lastname" value="&lt;%= employee.getLastName()%>"/>
                    </td>
                </tr><tr>
                    <th>
                        Email
                    </th>
                    <td>                       
                    <input type="text" name="email" value="&lt;%= employee.getEmail()%>"/>
</td>
                </tr><tr>
                    <th>
                        Phone
                    </th>
                    <td>                        <input type="text" name="phone_number" value="&lt;%= employee.getPhoneNumber()%>"/>
</td>
                </tr><tr>
                    <th>
                        Job
                    </th>   
                    <td>                        <input type="text" name="job_id" value="&lt;%= employee.getJobId()%>"/>
</td>
                </tr><tr>
                    <th>
                        Monthly Salary
                    </th>
                    <td>
                           <input type="text" name="salary" value="&lt;%= employee.getSalary()%>"/>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Update"/>
        </form>
    
    </body>
</html>