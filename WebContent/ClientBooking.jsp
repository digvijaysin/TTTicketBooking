<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="ClientBooking">
            <center>
           
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Book Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Platform Name</td>
                        <td><input type="text" name="pname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="password" name="date" value=<%= new java.util.Date() %> /></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>Number of Person</td>
                        <td><input type="text" name="numberofperson" value="" /></td>
                    </tr>
                    <tr>
                        <td>Durration(in hours)</td>
                        <td><input type="integer" name="durration" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Proceed to Pay" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    
                   
                </tbody>
            </table>
            </center>
        </form>

</body>
</html>