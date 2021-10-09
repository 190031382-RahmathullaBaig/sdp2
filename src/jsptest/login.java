package jsptest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("your_email");
		String pass=request.getParameter("your_pass");
		System.out.println(email);
		System.out.println(pass);
		
		 try {
	            Class.forName("com.mysql.jdbc.Driver");
	            System.out.println("Driver Loaded");
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
	            System.out.println("connected to database");
	            String sql="select * from login where email=? and pass=?";
	            PreparedStatement pstmt=con.prepareStatement(sql);
	            pstmt.setString(1,email);
	            pstmt.setString(2,pass);
	            ResultSet rs=pstmt.executeQuery();
	            
	            if(rs.next()) {
	            	RequestDispatcher rd=request.getRequestDispatcher("user.html");
	            	System.out.println("Login Succesfully");
	            	rd.forward(request, response);
	            }
	            else if(email.equals("admin@gmail.com")&&pass.equals("admin")) {
	            	RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
	            	System.out.println("Login Succesfully");
	            	rd.forward(request, response);
	            }
	            else {
	            	System.out.println("Login Failed");
	            }
	            con.close();
	        }
	        catch(Exception e){
	            System.out.println(e);
	            
	        }
	}

}
