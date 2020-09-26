<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>homepage</title>
<style>
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
  padding-left:700px;
  overflow: hidden;
  background-color: #333;
  list-style-type:none;
}

li {
  float:left;
  
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 18px 30px;
  text-decoration: none;
}


  
.button{
  background-color:#ff6666;
  border: none;
  display: inline-block;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 25px;
  cursor: pointer;
  margin: 4px 2px;
  border-radius: 12px;
 }
 .info
 {
   text-align: center;
   padding-bottom: 90px;
   color:whitesmoke;
 }
</style>
</head>
<body>
<div class="header" style="text-align:center;">
  <h1>Air Ticket Reservation</h1>
</div>
<div class="info"> 
  <h1> Hi ! ${UserName} ,</h1>
<h1> Welcome to SkyWings Airlines</h1>
</div>

<button class="button" onclick="location='http://localhost:9095/findFlightDisplay'">Flights</button>
<button class="button" onclick="location='http://localhost:9095/'">Ticket Booking</button>
</body>
</html> 