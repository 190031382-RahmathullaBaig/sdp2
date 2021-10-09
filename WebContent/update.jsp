<%@ page import = "java.sql.*, javax.servlet.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String id = request.getParameter("ids");%>
     
    <%String carname = request.getParameter("carname");
    String model = request.getParameter("model");
    String cost = request.getParameter("cost");
    String ecph = request.getParameter("ecph");
    String location = request.getParameter("location");
    %>
    <%Statement stmt = null;
    Connection con = null;
    try{
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
      String semail = request.getParameter("email");
      String qu = "update image_table set car=?,model=?,location=?,cost=?,ECPH=? where carNo = "+"\""+id+"\"";
      PreparedStatement ps = con.prepareStatement(qu);
      ps.setString(1, carname);
      ps.setString(2, model);
      ps.setString(3, location);
      ps.setString(4, cost);
      ps.setString(5, ecph);
      int i = ps.executeUpdate();
      if(i>0){
    	  getServletContext().getRequestDispatcher("/list.jsp").forward(request, response);
    	  }
      else
      {
      out.print("There is a problem in updating Record.");
      }
    }catch(Exception e){
      System.out.println(e);
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>