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
<center><h1>welcome TO THE NEW Registration</h1></center></font>
   <form method="post" action="RegisterController">
            <center>
           
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" value="" /></td>
                    </tr>
                    <tr>
                        
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" value="" /></td>
                    </tr>
                    <tr>
                    <td>User Name</td>
                        <td><input type="text" name="Username" value="" /></td>
                    </tr>
                    <tr>
                    
                        <td>Email Id</td>
                        <td><input type="text" name="emailid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contact Number</td>
                        <td><input type="text" name="contactnumber" value="" /></td>
                    </tr>
                    <tr>
                     <tr>
                        <td><input type="text" name="city" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                     <tr>
                        <td>Re-Enter Password</td>
                        <td><input type="password" name="re-enter" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>