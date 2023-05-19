<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UserRegister" method="post">

				<fieldset class="form-group">
					<label><i class="fas fa-file-signature"></i>&nbsp&nbsp&nbspFirst
						Name:</label> <input type="text" class="form-control" name="firstname"
						placeholder="Enter the First Name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label><i class="fas fa-file-signature"></i>&nbsp&nbsp&nbspLast
						Name:</label> <input type="text" class="form-control" name="lastname"
						placeholder="Enter the Last Name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label><i class="fa fa-envelope"></i>&nbsp&nbsp&nbspEmail :</label>
					<input type="text" class="form-control" name="email"
						placeholder="Enter your Email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label><i class="fa fa-user"></i>&nbsp&nbsp&nbspUser Name:</label>
					<input type="text" class="form-control" name="userName"
						placeholder="Enter the user Name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label><i class="fas fa-uunlock-alt"></i>&nbsp&nbsp&nbspPassword
						:</label> <input type="password" class="form-control" name="password"
						placeholder="Enter the Password" required="required">
				</fieldset>
				<table>
				<tr>
					<td><input type="submit" name="submit" value="Register"></td>
					<td></td>
				</tr>
				
				
				</table>
				</form>

</body>
</html>