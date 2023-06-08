package Project_Courier;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

/**
 * Servlet implementation class EditProfile
 */
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
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
		
		PrintWriter out = response.getWriter();
		Date date = new Date(0000-00-00);
		response.setContentType("text/html");
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String address = request.getParameter("address");
		Long mobileno = Long.parseLong(request.getParameter("mobileno"));
		
		System.out.println(lname);
		
		
		RequestDispatcher dispatcher;
		
		try {
			stm = con.prepareStatement("update login set lname = ?, email = ?, dob = ? , address = ? , mobileno = ? where fname = ?");
			
			
			stm.setString(1, lname);
			stm.setString(2, email);
			stm.setDate(3,date.valueOf(dob));
			stm.setString(4, address);
			stm.setLong(5, mobileno);
			stm.setString(6, fname);
			
			
			int row = stm.executeUpdate();
			
			if(row > 0) {
				 request.setAttribute("status", "success");
				 dispatcher = request.getRequestDispatcher("profile.jsp");

			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("editprofile.jsp");

			}
			dispatcher.forward(request, response);

		}catch(Exception e) {
			System.out.println(e );
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
