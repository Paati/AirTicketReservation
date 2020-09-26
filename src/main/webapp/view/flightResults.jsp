
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Results</title>
<style> 
 table { 
   border-collapse: collapse; 
  } 
 th { 
    
    Color:white; 
 } 
th, td { 
     width:150px; 
     text-align:center; 
     border:1px solid black; 
     padding:5px ;
     color: white;
  }
             
.header {
  margin-top:30px;
  text-align: center;
  
  color: white;
  font-size: 30px;
}
.box{
  box-shadow: 0 18px 20px 0 rgba(0,0,0,0.24),0 21px 55px 0 rgba(0,0,0,0.19);
}
ul {
  
  margin:0;
  padding-left:450px;
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
  font-size: 25px;
  padding: 10px;
  text-decoration: none;
  
}
body
{
  
 background-image: url("https://ei.marketwatch.com/Multimedia/2019/02/25/Photos/ZG/MW-HE536_airpla_20190225131547_ZG.jpg?uuid=5fa81d1a-3929-11e9-9462-ac162d7bc1f7");
  
}
.details
{
  margin-top: 0px;
}

</style>
</head>
<body>
<div class="header" style="text-align:center;">
  <h1>SkyWings Airline Group</h1></div>

 <ul>
  <li><a href="http://localhost:9095/addBooking">Book Flight</a></li>
  <li><a href="http://localhost:9095/findFlightDisplay">Find Flight</a></li>
  <li><a href="http://localhost:9095/logout">Log Out</a></li>
</ul>

 <div  class="details">
<h1 style="color: white;">Flight List</h1><br>
   <table>
     <tr>
     <th>Id</th>
     <th>Name</th>
     <th>Source</th>
     <th>Destination</th>
     <th>DOJ</th>
     <th>Price</th>
    </tr>
    <c:forEach var="flight" items="${flight}">
      <tr>
      <td>${flight.id}</td>
      <td>${flight.flightName}</td>
      <td>${flight.source}</td>
      <td>${flight.destination}</td>
      <td>${flight.doj}</td>
      <td>${flight.price}</td>
      </tr>
    </c:forEach>
   </table>
  </div>    

</head>


</body>
</html>