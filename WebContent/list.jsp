<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/s3Slider.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="content/js/jquery.min.js"></script>
<script src="content/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.nav-link dropdown-toggle').dropdown();
    });
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
    /*Nav bar*/
    .bs-example{
        margin: 1px;
        font-size: 23px;
        background-color: #FFFFFF;
    }
.car {
  width: 80px;
  height: 38px;
}
</style>
</head>
<body>
	<!-- Nav bar -->
<div class="bs-example">
<nav class="navbar navbar-expand-lg py-3 navbar-light bg-light">
  <a href="#" class="navbar-brand">
            <img src="./images/photo10.png"  alt="CoolBrand" class="car">
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addcar.jsp">Add a Car <span class="sr-only"></span></a>
      </li>
      </ul>
      <div class="navbar-nav ml-auto">
                <a href="login.html" class="nav-item nav-link">Logout</a>
            </div>
  </div>
</nav>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</div>

<div style="padding: 20px">
<label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dtBasicExample"></label>
<table class="table table-striped table-bordered mydatatable">
 <thead>
    <tr class="bg-success">
      <th class="text-white">Car No
      </th>
      <th class="text-white">Name
      </th>
      <th class="text-white">Model
      </th>
      <th class="text-white">Cost
      </th>
      <th class="text-white">Location
      </th>
      <th class="text-white">Extra cost per hr
      </th>
      <th class="text-white">Action
      </th>
    </tr>
  </thead>

<% 
Connection con = null;
Statement stmt = null;
ResultSet rs = null;

try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
	stmt = con.createStatement();
	rs = stmt.executeQuery("select * from image_table");
	while(rs.next()){
		String status=rs.getString("carNo");
		%>
 
  <tbody>
    <tr class="bg-white">
      <td class="text-black"><%=rs.getString("carNo") %>
      </td>
      <td class="text-black"><%=rs.getString("car") %></td>
      <td class="text-black"><%=rs.getString("model")%></td>
      <td class="text-black"><%=rs.getString("cost") %></td>
      <td class="text-black"><%=rs.getString("location") %></td>
      <td class="text-black"><%=rs.getString("ecph") %></td>
      <td style="padding: 12px">
	      <form action="request.jsp" method="get">
	      <input type="hidden" name="status" value="<%=status%>">
	      	<input type="submit" class="btn btn-primary btn-rounded btn-sm my-0" value="edit" name="edit" style="padding: 8px">
	      	</form>
	      	<form action="delete.jsp" method="get">
	      	<input type="hidden" name="status" value="<%=status%>">
	      	<input type="submit" class="btn btn-danger btn-rounded btn-outline-danger btn-sm my-0" value="delete" name="delete" style="padding: 8px">
	      </form>
	  </td>
    </tr>
   </tbody>
		<% 
	
	}
}catch(Exception e){
	
}
%>
</table>
</div>
</body>
</html>