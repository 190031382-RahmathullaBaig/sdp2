<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<% 
String carname = request.getParameter("carname");
String model =  request.getParameter("model");
int cost = Integer.parseInt(request.getParameter("cost"));
int ecph = Integer.parseInt(request.getParameter("ecph"));
String location = request.getParameter("location");
String image = request.getParameter("imagepath");
String carNo = request.getParameter("carNo");
String status = "requested";
String path1="D:\\images\\";       // you can change this path

String path=path1+image;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);

Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
PreparedStatement pstmt=null;
PreparedStatement pstmt2=null;
pstmt=con.prepareStatement("insert into image_table values(?,?,?,?,?,?,?)");
pstmt.setString(1,carname);
pstmt.setBinaryStream(2, (InputStream)fis, (int)(imagefile.length()));
pstmt.setString(3,model);
pstmt.setString(4,location);
pstmt.setInt(5,cost);
pstmt.setInt(6,ecph);
pstmt.setString(7,carNo);

pstmt.executeUpdate();

out.println("Uploaded");
response.sendRedirect("admin.jsp");
//RequestDispatcher rd = request.getRequestDispatcher("/inchargeHome1.jsp");
//rd.forward(request, response);

%>