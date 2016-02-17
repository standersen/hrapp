<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link type="text/css" rel="stylesheet" href="resources/css/jdeveloper.css"/>
    </head>
    <body>

        <h2>
            ACME Co: HR Application
        </h2>

            <h3>Insert Employee Record</h3>

        <form action="insert_action.jsp">
            <table>
                <tr>
                    <th>
First Name                    </th>
                    <td>
                        <input type="text" name="first_name"/>
                    </td>
                </tr><tr>
                    <th>
Last Name                    </th>
                    <td>
                        <input type="text" name="last_name"/>
                    </td>
                </tr><tr>
                    <th>
Email                    </th>
                    <td><input type="text" name="email"/></td>
                </tr><tr>
                    <th>
Phone                    </th>
                    <td>
                        <input type="text" name="phone_number"/>
                    </td>
                </tr><tr>
                    <th>
Job                    </th>
                    <td>
                        <select size="2" name="job_id">
                            <option value="HR_REP">
                                HR Representative
                            </option>
                            <option value="PR_REP">
                                PR Representative
                            </option>
                            <option value="MK_MAN">
                                Marketing Manager
                            </option>
                            <option value="SA_MAN">
                                Sales Manager
                            </option>
                            <option value="FI_MAN">
                                Finance Manager
                            </option>
                            <option selected="selected" value="IT_PROG">
                                Software Developer
                            </option>
                            <option value="AD_VIP">
                                Vice President
                            </option>
                        </select>
                    </td>
                </tr><tr>
                    <th>
Monthly Salary                    </th>
                    <td>
                        <input type="text" name="salary"/>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Add Employee"/>
        </form>
    </body>
</html>