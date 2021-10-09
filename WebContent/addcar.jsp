<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<form action="addedCar.jsp" method="post">
      	<div class="container body-content" style=" padding: 20px">
   <div class="container">
      <div class="row justify-content-center" style="padding-top:10px;">
         <h1>Add Vehicle</h1>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col">
            <label>Car Name</label>
         </div>
         <div class="col">
            <label>Model</label>
         </div>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col" style="padding-top:10px;">
            <input class="form-control" type="text" name="carname"></input>
         </div>
         <div class="col" style="padding-top:10px;">
            <input class="form-control" type="text" name="model"></input>
         </div>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col">
            <label>Cost</label>
         </div>
         <div class="col">
            <label>Extra Cost Per Hour</label>
         </div>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col">
            <input class="form-control" type="number" name="cost"></input>
         </div>
         <div class="col">
            <input class="form-control" type="number" name="ecph"></input>
         </div>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col">
            <label>Location</label>
         </div>
         <div class="col">
            <label>Car Number</label>
         </div>
      </div>
      <div class="row justify-content-start" style="padding-top:10px;">
         <div class="col">
            <input class="form-control" type="text" name="location"></input>
         </div>
         <div class="col">
            <input class="form-control" type="text" name="carNo"></input>
         </div>
      </div>
      <div style=" margin: 10px">
      	<label style="padding-top:10px; font-size: 18px">Image:</label>
      	<input type="file" name="imagepath">
      </div>
      <div>
         <button class="btn btn-primary" style="padding: 10px; max-width: 200px; display: flex; justify-content: center;">Submit</button>
      </div>
   </div>
</div>
      </form>
</body>
</html>