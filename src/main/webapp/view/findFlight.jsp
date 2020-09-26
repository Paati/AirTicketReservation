<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
form{
   
    margin-top:90px;
    font-size:25px;
    width: 450px;
	height: 120px;
    padding:50px;
 
}
body
{
  
 background-image: url("https://ei.marketwatch.com/Multimedia/2019/02/25/Photos/ZG/MW-HE536_airpla_20190225131547_ZG.jpg?uuid=5fa81d1a-3929-11e9-9462-ac162d7bc1f7");
  
}


.header {

  text-align: center;
  margin-top:50px;
  color: white;
  font-size: 30px;
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
  padding: 10px;
  font-size: 25px;
  text-decoration: none;
}
table
{
    font-size: 20px;
}
tr
{
    width: 100%;
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
</style>

</head>
<body>

<div class="header">
  <h1>SkyWings Airline Group</h1>
  <ul>
  
  <li><a class="active" href="http://localhost:9095/findFlightDisplay">Find Flight</a></li>
  <li><a href="http://localhost:9095/addBooking">Book Flight</a></li>
  <li><a href="http://localhost:9095/logout">Log Out</a></li>
</ul>
  
  </div>
   <form class="box" action="/findFlight" method="post">
   <table class="atable">
   <tr>
        <td>Enter DOJ (dd-mm-yyyy):</td>
        <td><input type="text" name="doj"  required></td>
       </tr>
       <tr>

       </tr>
       <tr></tr>
       <tr></tr>
       <tr></tr>
       <tr>
          <td>
              <button class="btn" >Submit</button>
          </td>
         
          </tr>
   </table>
   </form>

</body>
</html>