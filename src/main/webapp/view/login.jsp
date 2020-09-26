<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>
form {
	margin-top: 130px;
	margin-left: 100px;
	font-size: 35px;
	background-image:
		url("https://media.istockphoto.com/photos/abstract-blur-of-passengers-waiting-to-take-off-in-the-plane-picture-id1156072162?k=6&m=1156072162&s=612x612&w=0&h=uEjrvCj4vGMNX8qThC-T8ZfiG5odDwaczZIIddxQEkY=");
	width: 500px;
	height: 200px;
	border-style: solid;
	border-color: white;
	padding: 50px;
}

body {
	background-image:
		url("https://m.economictimes.com/thumb/msid-58917304,width-2000,height-1000,resizemode-4,imgsize-367969/industry/transportation/airlines-/-aviation/bureau-of-civil-aviation-security-weighs-exempting-pilots-from-briefings-by-sky-marshals.jpg");
}

td {
	width: 150px;
	padding: 5px;
}

.header {
	padding: 30px;
	text-align: center;
	color: white;
	font-size: 30px;
}
</style>
</head>
<body>
	<div class="header">
		<h1>SkyWings Airline Group</h1>
	</div>
	<div>
		<form action="/login" method="post">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="userName" required></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
					<td><input type="button" value="Register"
						onclick="goToRegister()"></td>
				</tr>
			</table>
			<div>&nbsp;</div>
		</form>
		<br>
		<div style="color: red; font-size: 20px; text-align: center">${error}</div>
		<div style="color: red; font-size: 20px; text-align: center">${registrationError}</div>
		<div style="color: blue; font-size: 20px; text-align: center">${registersuccess}</div>
	</div>
	<script type="text/javascript">
		function goToRegister() {
			window.location.href = "/register";
		}
	</script>
</body>
</html>