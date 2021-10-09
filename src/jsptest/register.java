package jsptest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String licence=request.getParameter("licence");
		String phone=request.getParameter("phone");
		String pass=request.getParameter("pass");
		String re_pass=request.getParameter("re_pass");
		try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Jaswanth@1");
            System.out.println("connected to database");
            boolean rs=false;
            String sql="insert into register values(?,?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,email);
            pstmt.setString(3,licence);
            pstmt.setString(4, phone);
            pstmt.setString(5, pass);
            pstmt.setString(6, re_pass);
            rs=pstmt.execute();
            System.out.println(rs);
            PreparedStatement pstmt1=con.prepareStatement("insert into login values(?,?)");
            pstmt1.setString(1,email);
            pstmt1.setString(2,pass);
            boolean rs1=pstmt1.execute();
            System.out.println(rs1);
            PrintWriter writer = response.getWriter();
            if(!rs)
            {
            	 String htmlRespone ="<h1>User already registered</h1>";
            	 writer.println(htmlRespone);
            }
            if(!(rs&&rs1)) {
            	RequestDispatcher rd=request.getRequestDispatcher("login.html");
            	System.out.println("Register Succesfully");
            	rd.forward(request, response);
            }
            else {
            	System.out.println("Register Failed");
            }
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
            
        }
}

}
