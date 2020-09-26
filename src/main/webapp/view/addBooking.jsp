<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
<style>
form{
   
    
  font-size:20px;
 width: 500px;
	height: 360px;
  border-width:2px;
	padding:20px;
 padding-top: 20px;
}


td { 
      width:250px; 
      padding:15px ;
     }
     
.container {
margin-left :200px;
}
body
{
  
 background-image: url("https://ei.marketwatch.com/Multimedia/2019/02/25/Photos/ZG/MW-HE536_airpla_20190225131547_ZG.jpg?uuid=5fa81d1a-3929-11e9-9462-ac162d7bc1f7");
  
}
.header {
 
  text-align: center;
  color: white;
  font-size: 30px;
}

ul {
  
  margin:0;
   padding-left: 100px;
  overflow: hidden;
  list-style-type:none;
}


li {
  float:left;
  
}
.btn
{
  background-color:#ff6666;
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
li a {
  display: block;
  color: white;
  padding: 10px;
  font-size: 25px;
  text-decoration: none;
}
.details
{
  float: left;
}

</style>
</head>
<body>
<div class="header" style="text-align:center;">
  <h1> SkyWings Airline Group</h1></div>
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
  <form  action="/addBooking" method="post">
    <table>
     <tr>
       <td>Enter Customer Name:</td> 
       <td><input type="text" name="name" required></td>
     </tr>
     
     <tr>
       <td>Enter Flight Id:</td> 
       <td><input type="text" name="flightId" ></td>
     </tr>
     
     <tr>
       <td>Enter DOJ (dd-mm-yyyy):</td> 
       <td><input type="text" name="doj" required></td>
     </tr>
     <tr>
     <td>&nbsp;</td>
       <td >
         <button class="btn">Submit</button>
       </td>
       </tr>
       </table>
       <div style="color:black;font-size:20px;text-align: center">${message}</div>
</form>
</div>



</body>
</html>