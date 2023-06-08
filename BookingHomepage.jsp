<%@ page import = "java.util.Date , java.sql.Connection , java.sql.PreparedStatement , java.sql.ResultSet, java.sql.DriverManager"  %>


<% 
Connection con = null;
PreparedStatement stm = null;
ResultSet rs = null;


	String fname = null;
	String lname = null;
	
	
	if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
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
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Fast & Deliverious</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  @import url('https://fonts.googleapis.com/css?family=Montserrat|Open+Sans|Roboto');

.navbar{
    width: 1200px;
    height: 75px;
    margin: auto;
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

.menu{
    
    width: 400px;
    float: left;
    height: 100px;
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

.instruction{
    margin-left: 100px;
    border-left: 3px solid black;
    margin-top: 50px;
}

.instruction p{
    font-family: Century Gothic;
    font-size: 35px;
    color: #ff7200;
    margin-right: 150px;
    margin-left: 50px;
   
    
}
.instruct p{
    font-family: Century Gothic;
    font-size: 20px;
    color: #fff;
}

@import url('https://fonts.googleapis.com/css?family=Montserrat|Open+Sans|Roboto');
*{
 margin:0;
 padding: 0;
 outline: 0;
}

table{
 position: absolute;
 z-index: 2;
 left: 50%;
 top: 50%;
 transform: translate(-50%,-50%);
 width: 300px;
 height: 350px; 
 border-collapse: collapse;
 border-spacing: 0;
 box-shadow: 0 2px 15px rgba(64,64,64,.7);
 border-radius: 12px 12px 0 0;
 overflow: hidden;

}
td , th{
 padding: 15px 20px;
 text-align: center;
 

}
th{
 background-color: #e67220;
 color: #fafafa;
 font-family: 'Open Sans',Sans-serif;
 font-weight: 200;
 text-transform: uppercase;

}
tr{
 width: 100%;
 background-color: #fafafa;
 font-family: 'Montserrat', sans-serif;
}
tr:nth-child(even){
 background-color: #eeeeee;
}
  </style>
</head>
<body  style="background-size:cover; background-color: black;">

    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo"> Fast & Deliverious </h2>
            </div>

                <div class="menu" style="margin-left:250px; margin-top:10px">
                   <ul>
	                    <li><a href="#" style="color: orange;">HI <%= fname %> <%=lname %></a></li>
	                    <li style="margin-left: 60px;"><a href="#" style="color: orange;">HOME</a></li>
                        <li style="margin-left: 60px;"><a href="booking.jsp">BOOKING</a></li>
                       <li style="margin-left: 60px;"><a href="profile.jsp">PROFILE</a></li>
	                    <li style="margin-left: 60px;"><a href="login.jsp">LOGOUT</a></li>

                    </ul>
                </div>
        </div> 
        <div >
            <div class="instruction" >
                <p><span>Instructions</span></p>
                <div class="instruct">
                    <p>A 20% discount is offered for the first orders placed by new customers.</p>
                    <p>Both online and cash payments are options for making payments.</p>
                    <p>The user must provide the correct pick-up and drop-off addresses when making a reservation.</p>
                    <p>The user should include the parcel's weight while making a reservation.</p>
                </div>
                
            </div>
            <div style="display: flex;">
                <div style="margin-left: 100px; margin-top: 30px;">
                    <img src="Images/delivery.jpg" width="600px" height="350px">
                </div>
    
                <div class="filter">
                     
                    <table style="margin-left: 180px; margin-top: 170px;">
                        <tr>
                        <th>#</th>
                        <th>Kilogram</th>
                        <th>Price</th>
                        </tr>
                         <tr>
                        <td>1</td>
                        <td>1 - 5</td>
                        <td>25-35</td>
                        </tr>
                        <tr>
                        <td>2</td>
                        <td>5 - 10</td>
                        <td>50 - 75</td>
                        </tr>
                        <tr>
                        <td>3</td>
                        <td>10 - 25</td>
                        <td>100 - 150</td>
                        </tr>
                        <tr>
                        <td>4</td>
                        <td>50 - above</td>
                        <td>250 +</td>
                        </tr>
                        </table>
                </div>
                <div class="filter">
                    <link rel="stylesheet" href="main.css">
                    <table style="margin-left: 550px; margin-top: 170px;">
                        <tr>
                        <th>#</th>
                        <th>Distance  (KM)</th>
                        <th>Price</th>
                        </tr>
                         <tr>
                        <td>1</td>
                        <td>1 - 5</td>
                        <td>100</td>
                        </tr>
                        <tr>
                        <td>2</td>
                        <td>5 - 15</td>
                        <td>150</td>
                        </tr>
                        <tr>
                        <td>3</td>
                        <td>15 - 30</td>
                        <td>200+</td>
                        </tr>
                        <tr>
                        <td>4</td>
                        <td>50+</td>
                        <td>450 +</td>
                        </tr>
                        </table>
                </div>
            </div>
        </div>
     </div>    
 </body>
 </html>