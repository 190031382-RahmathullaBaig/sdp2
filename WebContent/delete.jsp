<%@ page import = "java.sql.*, javax.servlet.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String id = request.getParameter("status"); %>
<%Statement stmt = null;
    Connection con = null;
    try{
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
      stmt = con.createStatement();
      int i=stmt.executeUpdate("delete from image_table where carNo="+id);
      if(i>0){
    	  getServletContext().getRequestDispatcher("/list.jsp").forward(request, response);
    	  }
    }catch(Exception e){
      System.out.println(e);
    } %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>