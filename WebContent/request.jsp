<%@ page import = "java.sql.*, javax.servlet.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%!
 public static String carname,model,location,image;
 public static String cost,ecph;
 %>
 <%String id = (String)request.getParameter("status");
 String id1 = "\""+id+"\"";%>
    <%
    try{Statement stmt = null;
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
	Statement s = con.createStatement();
	String qu = "select * from image_table where carNo="+id1;
	ResultSet r = s.executeQuery(qu);
	while(r.next()){
		carname = (String)r.getString("car");
		model = (String)r.getString("model");
		location = (String)r.getString("location");
		image = (String)r.getString("photo");
		cost = (String)r.getString("cost");
		ecph = (String)r.getString("ecph");
	}
    }
    catch(Exception e){
    	System.out.println(e);
    }
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<form action="update.jsp" method="get">
      <div class="container body-content" style=" padding: 20px">
    <div class="container">
        <div class="row justify-content-center" style="padding-top:10px;">
            <h1>Edit</h1>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col">
                <label>Car name</label>
            </div>
            <div class="col">
                <label>Model</label>
            </div>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col" style="padding-top:10px;">
           <input class="form-control" type="text" value = "<%=carname%>" name="carname"></input>
            </div>
            <div class="col" style="padding-top:10px;">
               <input class="form-control" type="text" value = <%=model%> name="model"></input>
            </div>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col">
                <label>Cost</label>
            </div>
            <div class="col">
                <label>ECPH</label>
            </div>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col">
            <input class="form-control" type="text" value = <%=cost%> name="cost"></input>
            </div>
            <div class="col">
                <input class="form-control" type="text" value = <%=ecph%> name="ecph"></input>
            </div>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col">
                <label>Location</label>
            </div>
        </div>
        <div class="row justify-content-start" style="padding-top:10px;">
            <div class="col" style="padding-top:10px;">
                <input class="form-control" type="text" value = "<%=location%>" name="location"></input>
            </div>
        </div>

        <div>
        <input type="hidden" value="<%=id %>" name="ids">
            <input type="submit" name="submit" value="UPDATE PROFILE" style="width: 100%;" /><br>
        </div>
    </div>
</div>
    </form>
</body>
</html>