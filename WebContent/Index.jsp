<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="Red">
<center><h1>welcome TO THE NEW Ticket Booking</h1></center></font>
   <form method="post" action="LoginController">
            <center>
           
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                      <tr>
                        <td colspan="2">Admin Login <a href="Admin.jsp">Click Here</a></td>
                    </tr>
                    <tr>
                        <td colspan="2">Register Here <a href="Register.jsp">Click Here</a></td>
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>