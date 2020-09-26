<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Flight</title>
<style>
form{
    margin-top:100px;
  
    font-size:20px;

	width: 500px;
	height: 120px;
	
	
	border-width:2px;
	padding:20px;
 
}
td { 
      width:150px; 
      padding:10px ;
     }
     
.container {
margin-left :200px;
}

.header {
 
  text-align: center;
 
  color: white;
  font-size: 30px;
}
body
{
  
 background-image: url("https://ei.marketwatch.com/Multimedia/2019/02/25/Photos/ZG/MW-HE536_airpla_20190225131547_ZG.jpg?uuid=5fa81d1a-3929-11e9-9462-ac162d7bc1f7");
  
}

ul {
  
  margin:0;
  padding-left:250px;
  overflow: hidden;
  
  list-style-type:none;
}

li {
  float:left;
  
}

li a {
  display: block;
  color: white;
  text-align: center;
 
  text-decoration: none;
  padding: 10px;
  font-size: 25px;
}

</style>

</head>

<body>
<div class="header" style="text-align:center;">
  <h1>SkyWings Airline Group</h1></div>
   <ul>
  <li><a class="active" href="http://localhost:9095/homepage">Home</a></li>
  <li><a href="http://localhost:9095/findFlightDisplay">Find Flight</a></li>
  <li><a href="http://localhost:9095/viewBooking">View Booking</a></li>
  <li><a href="http://localhost:9095/addBooking">Add Booking</a></li>
  <li><a href="http://localhost:9095/deleteBooking">Delete Booking</a></li>
  <li><a href="http://localhost:9095/logout">Log Out</a></li>
</ul>

<div>
<form class="box" action="/deleteBooking" method="post">
	<table>	
		<tr>
		<td>Enter Booking ID:</td>
		<td><input type="text" name="deleteId" value=""></td>
		</tr>
	</table>
    <div style="color:black;margin-left: 90px;font-size:20px;"> ${message} </div>
	
</form>
</div>

</body>
</html>