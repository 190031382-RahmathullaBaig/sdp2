<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>User</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/s3Slider.js" type="text/javascript"></script>

<body>
    <!-- nav bar -->
    <div class="bs-example" id="navbar">
        <nav class="navbar navbar-expand-md py-3" style="background-color: #e3f2fd;">
            <a href="#" class="navbar-brand">
                <img src="./images/photo10.png"  alt="CoolBrand" class="car">
            </a>
    
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="user.html" class="nav-item nav-link active">Home</a>
                    <a href="#" class="nav-item nav-link active">Book a Car</a>
                </div>
                <div class="navbar-nav ml-auto">
                    <a href="login.html" class="nav-item nav-link">Logout</a>
                </div>
            </div>
        </nav>
    </div>
<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
Blob images = null;
byte[ ] imgData = null ;
Blob images1 = null;
byte[ ] imgData1 = null ;
try{
Class.forName("com.mysql.jdbc.Driver");  
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Jaswanth@1");
statement=connection.createStatement();
String sql ="select * from image_table";
resultSet = statement.executeQuery(sql);
while(resultSet.next()) 
{
  images = resultSet.getBlob(2);
  imgData = images.getBytes(1,(int)images.length());
  String encodedImage=Base64.getEncoder().encodeToString(imgData);
  String name = resultSet.getString(1);
  String image= (String) "data:image/jpg;base64,"+encodedImage;
  String model = resultSet.getString(3);
  String location = resultSet.getString(4);
  int cost = resultSet.getInt(5);
  int ECPH = resultSet.getInt(6);
  String carNo = resultSet.getString(7);


  
  if(resultSet.next()){
	  images = resultSet.getBlob(2);
	  imgData = images.getBytes(1,(int)images.length());
	  String encodedImage1=Base64.getEncoder().encodeToString(imgData);
	  String name1 = resultSet.getString(1);
	  String image1= (String) "data:image/jpg;base64,"+encodedImage1;
	  String model1 = resultSet.getString(3);
	  String location1 = resultSet.getString(4);
	  int cost1 = resultSet.getInt(5);
	  int ECPH1 = resultSet.getInt(6);
	  String carNo1 = resultSet.getString(7);
	  if(resultSet.next()){
		  images = resultSet.getBlob(2);
		  imgData = images.getBytes(1,(int)images.length());
		  String encodedImage2=Base64.getEncoder().encodeToString(imgData);
		  String name2 = resultSet.getString(1);
		  String image2= (String) "data:image/jpg;base64,"+encodedImage2;
		  String model2 = resultSet.getString(3);
		  String location2 = resultSet.getString(4);
		  int cost2 = resultSet.getInt(5);
		  int ECPH2 = resultSet.getInt(6);
		  String carNo2 = resultSet.getString(7);
		  out.print("<div class='row'><div class='column'><form action='sai.html'><div class='card'><h3>"+name+"</h3><input type='hidden' value="+name+" name='car'/><img src="+image+" class='im'><h4>Model : "+model+"</h4><h4>CarNo : "+carNo+"</h4><h4>Cost : "+cost+"</h4><h4>ECPH : "+ECPH+"</h4><h4>Location : "+location+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div><div class='column'><form action='sai'><div class='card'><h3>"+name1+"</h3><input type='hidden' value="+name1+" name='car'/><img src="+image1+" class='im'><h4>Model : "+model1+"</h4><h4>CarNo : "+carNo1+"</h4><h4>Cost : "+cost1+"</h4><h4>ECPH : "+ECPH1+"</h4><h4>Location : "+location1+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div><div class='column'><form action='sai'><div class='card'><h3>"+name2+"</h3><input type='hidden' value="+name2+" name='car'/><img src="+image2+" class='im'><h4>Model : "+model2+"</h4><h4>CarNo : "+carNo2+"</h4><h4>Cost : "+cost2+"</h4><h4>ECPH : "+ECPH2+"</h4><h4>Location : "+location2+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div></div>");
  }
  else
  {
	  out.print("<div class='row'><div class='column'><form action='sai'><div class='card'><h3>"+name+"</h3><input type='hidden' value="+name+" name='car'/><img src="+image+" class='im'><h4>Model : "+model+"</h4><h4>CarNo : "+carNo+"</h4><h4>Cost : "+cost+"</h4><h4>ECPH : "+ECPH+"</h4><h4>Location : "+location+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div><div class='column'><form action='sai'><div class='card'><h3>"+name1+"</h3><input type='hidden' value="+name1+" name='car'/><img src="+image1+" class='im'><h4>Model : "+model1+"</h4><h4>CarNo : "+carNo1+"</h4><h4>Cost : "+cost1+"</h4><h4>ECPH : "+ECPH1+"</h4><h4>Location : "+location1+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div></div>");
  }
  }
	  else{
		  out.print("<div class='row'><div class='column'><form action='sai'><div class='card'><h3>"+name+"</h3><input type='hidden' value="+name+" name='car'/><img src="+image+" class='im'><h4>Model : "+model+"</h4><h4>CarNo : "+carNo+"</h4><h4>Cost : "+cost+"</h4><h4>ECPH : "+ECPH+"</h4><h4>Location : "+location+"</h4><input type='submit' class='btn btn-primary' value='Book'/></div></form></div>");
	  }
}
}
catch (Exception e) {
e.printStackTrace();
return;
}
finally{
	try{
		resultSet.close();
		statement.close();
		connection.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
}
%>
</body>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
   background-image: url('images/1920x1080-pale-pink-solid-color-background.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 33.33%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
.im{
height:225px;
width:350px;
padding:10px;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 10px;
  text-align: center;
  background-color: #ffcccc;
  margin:20px;
   box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}
.checked {
  color: orange;
}
.bs-example{
        margin: 1px;
        font-size: 23px;
    }
.car {
  width: 80px;
  height: 38px;
}

</style>