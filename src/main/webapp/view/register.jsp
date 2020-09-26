<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration</title>

<style>
form {
	margin-left: 30px;
	margin-top: 100px;
	font-size: 20px;
	width: 500px;
	height: 250px;
	padding: 15px;
}

td {
	width: 200px;
	padding: 5px;
}

body {
	background-image:
		url("https://ei.marketwatch.com/Multimedia/2019/02/25/Photos/ZG/MW-HE536_airpla_20190225131547_ZG.jpg?uuid=5fa81d1a-3929-11e9-9462-ac162d7bc1f7");
}

.header {
	padding: 10px;
	text-align: center;
	color: white;
	font-size: 30px;
}

.btn {
	background-color: #ff6666;
	border: none;
	display: inline-block;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	cursor: pointer;
	margin: 4px 2px;
	border-radius: 12px;
}
</style>
</head>
<body>
	<div class="header">
		<h1>SkyWings Airline Group</h1>
	</div>

	<div>
		<form action="/set-user" method="post">
			<table>
				<tr>
					<td>UserName :</td>
					<td><input type="text" name="userName" value=""></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><input type="password" name="password1"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number 
      and one uppercase and lowercase letter,
      and at least 8 or more characters"></td>
				</tr>
				<tr>
					<td>Retype Password :</td>
					<td><input type="password" name="password2"></td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td>
						<button class="btn">Register</button>
					</td>

				</tr>


			</table>
			<div style="color: black">${registrationError}</div>

		</form>

	</div>

</body>
</html>