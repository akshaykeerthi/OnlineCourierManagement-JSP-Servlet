package Project_Courier;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Loginpage
 */
public class Loginpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginpage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		/*
		 * PrintWriter out = response.getWriter(); out.println("hello");
		 */
		
		Connection con = null;
		PreparedStatement stm = null;
		ResultSet rs = null;

		try {
			/* Register the driver class */
			Class.forName("oracle.jdbc.driver.OracleDriver");

			/* Create the connection */
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "akshay", "oracle123");

		} catch (Exception e) {
			System.out.println(e);
		}

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			stm = con.prepareStatement("select * from login where username=? and password =?");
			stm.setString(1, username);
			stm.setString(2, password);
			rs = stm.executeQuery();
			RequestDispatcher dispatcher;
			if(rs.next()) {
				HttpSession session = request.getSession();
				//System.out.println(username+""+password);
				session.setAttribute("username", rs.getString("username"));
				dispatcher = request.getRequestDispatcher("BookingHomepage.jsp");
			}else {
				request.setAttribute("status","fail");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
