<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import = "java.util.Date , java.sql.Connection , java.sql.PreparedStatement , java.sql.ResultSet, java.sql.DriverManager"  %>


<% 
Connection con = null;
PreparedStatement stm = null;
ResultSet rs = null;


	String fname = null;
	String lname = null;
	String email = null;
	Date dob = null;
	String address =null;
	long mobileno = 0;
	String username = null;
	
	
	
	if(session.getAttribute("username") == null){
		response.sendRedirect("BookingHomepage.jsp");
	}else{
		try {
			/* Register the driver class */
			Class.forName("oracle.jdbc.driver.OracleDriver");

			/* Create the connection */
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "akshay", "oracle123");

		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		fname = (String)session.getAttribute("username");
		
		
		try{
			stm = con.prepareStatement("select * from login where fname = ?");
			stm.setString(1, fname);
			rs = stm.executeQuery();
			if(rs.next()){
				fname = rs.getString("fname");
				lname = rs.getString("lname");
				email = rs.getString("email");
				dob = rs.getDate("dob");
				address = rs.getString("address");
				mobileno = rs.getLong("mobileno");
				username = rs.getString("username");
				
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
%>
    

    
<!DOCTYPE html>
<html>
    <head>
        <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <style>
            body{margin-top:20px;}
.card-style1 {
   
}
.border-0 {
    border: 0!important;
}
.card {
    
    margin-top: 100px;
}

section {
    
    overflow: hidden;
    background: #000000;
}


.section-title {
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
}
.text-primary {
    color: #ceaa4d !important;
}
.text-secondary {
    color: #15395A !important;
}
.font-weight-600 {
    font-weight: 600;
}
.display-26 {
    font-size: 1.3rem;
}


.p-1-9 {
    padding: 1.9rem;
}

.bg-secondary {
    background: #15395A !important;
}

.pe-1-9, .px-1-9 {
    padding-right: 1.9rem;
}
.ps-1-9, .px-1-9 {
    padding-left: 1.9rem;
}
.pb-1-9, .py-1-9 {
    padding-bottom: 1.9rem;
}
.pt-1-9, .py-1-9 {
    padding-top: 1.9rem;
}
.mb-1-9, .my-1-9 {
    margin-bottom: 1.9rem;
}


.logo {
	font-size: 40px;
	color: aliceblue;
	margin-left: 30px;
	margin-top: 10px;
	font-family: Copperplate Gothic Light;
}

.back {
	background-color: transparent;
	color: aliceblue;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	margin-left: 1000px;
	border: transparent;
}
.icon{
    width: 400px;
    float: left;
    height: 70px;
}

.logo{
    color: #ff7200;
    font-size: 55px;
    font-family: Brush Script MT;
    padding-left: 20px;
    float: left;
    padding-top: 10px;
    margin-top: 5px
}
ul{
    float: left;
    display: flex;
    justify-content: center;
    align-items: center;
}

ul li{
    list-style: none;
    margin-left: 32px;
    margin-top: 27px;
    font-size: 20px;

}

ul li a{
    text-decoration: none;
    color: #fff;
    font-family: Century Gothic;
    font-weight: bold;
    transition: 0.4s ease-in-out;
}

ul li a:hover{
    color: #ff7200;
}
        </style>

    </head>

    <body style="background-color: black;">
        <div style="display: flex;">
            <div style="display:flex">
                <div class="icon" style="margin-left:50px ;">
                               <h2 class="logo"> Fast & Deliverious</h2>
                 </div>
               
               <div class="menu" >
                <ul>
                    
                    <li style="margin-left: 380px;"><a href="BookingHomepage.jsp">HOME</a></li>
                    <li style="margin-left: 80px"><a href="booking.jsp">BOOKING</a></li>
                    <li style="margin-left: 80px"><a href="#"><span style="color: #ff7200;">PROFILE</span></a></li>
                    <li style="margin-left: 80px"><a href="login.jsp">LOGOUT</a></li>
                </ul>
            </div>
             </div>
        </div>
        <section style="background-color: #000000;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-sm-5">
                        <div class="card card-style1 border-0">
                            <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 mb-4 mb-lg-0">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="...">
                                    </div>
                                    <div class="col-lg-6 px-xl-10">
                                        <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                            <h3 class="h2 text-white mb-0"><%= fname %> <%=lname %></h3>
                                            
                                        </div>
                                        <div >
                                            <a href="editprofile.jsp"><ion-icon name="create"></ion-icon></a>
                                            
                                        </div>
                                        <div>
                                            
                                            <p style="font-size: 20px;"><span style="color: #0b1a40;"><b>Email :</b></span><span> <%= email %></span></p>
                                            <p style="font-size: 20px;"><span style="color: #0b1a40;;"><b>Date-of-Birth :</b></span><span> <%= dob %></span></p>
                                            <p style="font-size: 20px;"><span style="color: #0b1a40;"><b>Mobile Number :</b></span><span><%= mobileno %></span></p>
                                            <p style="font-size: 20px;"><span style="color: #0b1a40;"><b>Address :</b></span><span> <%= address %></span></p>
                                            <p style="font-size: 20px;"><span style="color: #0b1a40;"><b>username :</b></span><span> <%= username %></span></p>
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>         
                </div>
            </div>
        </section>
         <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>