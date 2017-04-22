<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Confirm.jsp">
            <center>
           
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                    <tr>
                        <td>PlatformTicketNumber</td>
                        <td><%= request.getAttribute("randomNum") %></td>
                    </tr>
                    <tr>
                        <td>Ammount</td>
                        <td><%= request.getAttribute("pay") %> </td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Pay" /></td>
                    </tr>
                    
                   
                </tbody>
            </table>
            <%request.setAttribute("ticket",""+request.getAttribute("randomNum")); %>
            </center>
        </form>

</body>
</html>