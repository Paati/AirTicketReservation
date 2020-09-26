<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
<style>
form{
    
    font-size:20px;
	color: white;
	width: 500px;
	height: 360px;
	padding:20px;
    padding-top: 20px;

}
td, th { 
      width:100%; 
      padding:15px ;
	  border: 1px solid black;
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
  padding-left:350px;
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
  padding: 10px;
  text-decoration: none;
  font-size: 20px;
}

table
{
	border-collapse: collapse; 
}

</style>
</head>
<body>
<div class="header" style="text-align:center;">
  <h1>SkyWings Airline Group</h1></div>
 <div class="container">
 <ul>
  <li><a class="active" href="http://localhost:9095/homepage">Home</a></li>
  <li><a href="http://localhost:9095/findFlightDisplay">Find Flight</a></li>
  <li><a href="http://localhost:9095/viewBooking">View Booking</a></li>
  <li><a href="http://localhost:9095/addBooking">Add Booking</a></li>
  <li><a href="http://localhost:9095/deleteBooking">Delete Booking</a></li>
  <li><a href="http://localhost:9095/logout">Log Out</a></li>
</ul>
</div>
<div class="details"> 

	<form  action="/viewBooking" method="post">
    
		<div class="container">
			<div class="page-header">
				<h1 style="float: left;">Booking Details</h1>
			</div>
		
			<div>
				<table class="table table-striped table-responsive">
					
					<thead>
						<tr>
							<th>Name</th>
							<th>DOJ</th>
							<th>Flight</th>
							<th>Id</th>
						</tr>
					</thead>
					<c:forEach items="${bookings}" var="booking">
						<tr>
							<td>${booking}</td>
							<td>${booking.doj}</td>
							<td>${booking.flight_id}</td>
							<td>${booking.id}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		</form>
</div>



</body>
</html>