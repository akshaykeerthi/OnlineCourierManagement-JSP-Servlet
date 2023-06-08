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

.nation {
	width: 315px;
}

.card-registration {
	width: 700px;
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

button{
        width: 100%;
        height: 40px;
        border-radius: 40px;
        background: #fff;
        border: none;
        outline: none;
        cursor: pointer;
        font-size: 1em;
        font-weight: 600;
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
		   
		   <div class="menu" style="margin-right: 580px;">
			<ul>
				
				<li style="margin-left: 750px;"><a href="profile.jsp">BACK</a></li>
				
			</ul>
		</div>
		 </div>
	</div>
	<section class="vh-100 gradient-custom">
		<div class="container   box">
			<div class="row justify-content-center align-items-center h-100">
				<div>

					<div class="card-body p-4 p-md-5 ">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5" style="color: rgb(255, 255, 255);">Edit Profile</h3>
						<form id="registerForm" modelAttribute="login" action="EditProfile"
								method="post">

							<div class="row">
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: rgb(248, 246, 246);">First Name</label> <input
											type="text" id="fname" name = "fname" value ="<%= fname %>" readonly
											class="form-control form-control-lg"  />
                      <span id="error_fname" class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="lname"
											style="color: rgb(248, 246, 246);">Last Name</label> <input
											type="text" id="lname" name = "lname" value="<%= lname %>"
											class="form-control form-control-lg"  />
                      <span id="error_lname" class="text-danger"></span>

									</div>

								</div>


								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="email"
											style="color: rgb(242, 238, 238);">Email </label> <input
											type="email" id="email" name = "email" value="<%= email %>"
											class="form-control form-control-lg"  required/>
                      <span id="error_email" class="text-danger"></span>

									</div>

								</div>

								


								<div class="row">
									<div class="col-md-4 mb-4 d-flex align-items-center">

										<div class="form-outline datepicker w-100">
											<label for="birthdayDate" class="form-label"
												style="color: rgb(248, 243, 243);">Date of Birth </label> <input
												type="date" class="form-control form-control-lg" name = "dob" value="<%= dob %>"
												id="dob" />
						  <span id="error_dob" class="text-danger"></span>
	
										</div>
	
	
									</div>

									<div class="col-md-4 mb-4">
										<div class="form-outline" style="width: 390px;">
											<label class="form-label" for="address"
												style="color: rgb(243, 241, 241);"> Address </label> <input type="text"
												id="address" class="form-control form-control-lg" name = "address"
												value="<%= address %>" />
												  <span id="error_address" class="text-danger"></span>
										</div>
									</div>
									
									<div class="col-md-4 mb-4">
										<div class="form-outline" style="margin-left: 15px; width: 390px;">
											<label class="form-label" for="phonenumber"
												style="color: rgb(246, 243, 243);"> Contact Number </label> <input
												type="tel" id="phonenumber" name = "mobileno"
												class="form-control form-control-lg"
												value = "<%= mobileno %>" />
                       							 <span id="error_number" class="text-danger"></span>
										</div>
									</div>
								</div>

								

								<div class="mt-4 pt-2" style="margin-left: 510px;"><a href=""></a>
									<input class="btn btn-primary btn-lg" type="submit" id="submit"
										value="Submit"/>
								</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
        <div class="container my-4">

            <footer class="bg-dark text-center text-white">
            
            <div class="container p-4 pb-0">
            
              <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                  ><ion-icon name="logo-facebook"></ion-icon></a>
          
                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                  ><ion-icon name="logo-twitter"></ion-icon></a>
          
                <!-- Google -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                  ><ion-icon name="logo-google"></ion-icon></a>
          
                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                  ><ion-icon name="logo-instagram"></ion-icon></a>
          
                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                  ><ion-icon name="logo-linkedin"></ion-icon></a>
          
                
              </section>
              <!-- Section: Social media -->
            </div>
            <!-- Grid container -->
          
            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
              © 2023 Copyright:
              <a class="text-white" href="#">Boogeyman</a>
            </div>
            <!-- Copyright -->
          </footer>
            
          </div>
          <!-- End of .container -->
		
	</section>
   

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>  
   
	<script type="application/javascript" src="https://code.jquery.com/jquery3.5.1.min.js"></script> 
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

	
	<script>
	  $(document).ready(function(){
		jQuery.validator.addMethod("lettersonly", function(value, element) {
		   return this.optional(element) || /^[a-z\s]+$/i.test(value);
		});
		jQuery.validator.addMethod("passwordupper", function(value, element) {
		   return this.optional(element) || /^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-]).{8,}$/i.test(value);
		});
		jQuery.validator.addMethod("validemailid", function(value, element) {
		   return this.optional(element) || /^[a-zA-Z0-9]+@[a-zA-Z0-9.-]+[.][a-z]{2,4}$/i.test(value);
		});
		
		jQuery.validator.addMethod("minDate", function (value, element) {
  var now = new Date();
  var myDate = new Date(value);
  return this.optional(element) || myDate < now;
		});

	  });

	  $(function() {

  $("form[name='regform']").validate({

	rules: {
	  fname:{
		lettersonly:true,
		maxlength:20,
	  },
	  lname:{
		lettersonly:true,
		maxlength:20,
	  },
	  password:{
		passwordupper:true,
		minlength:8,
		required:true
	  },
	  mobileno:{
		number:true,
		minlength:10,
		maxlength:10
	  },
	  email:{
		validemailid:true
	  },
	  
	  dob:{
		minDate:true
	  },
	  username:{
		required:true,
		minlength:3,
		maxlength:20
	  },
	  confirmpassword:{
		equalTo:"#password"
	  },
	  
	  
	},
	// Specify validation error messages
	messages: {
	  fname:{
		lettersonly:"First Name should not contain numbers",
		maxlength:"First Name max length is 20",
	  },
	  fname:{
		lettersonly:"First Name should not contain numbers",
		maxlength:"First Name max length is 20",
	  },
	  
	  mobileNum:{
		number:"Enter the valid mobile number",
		minlength:"Enter the valid mobile number",
		maxlength:"Enter the valid mobile number"
	  },
	  password:{
		passwordupper:"Must contains one uppercase,one lowercase,one special character,min 8 letters",
		minlength:"Max Length is 8"
	  },  
	  confirmpassword:{
		equalTo:"Password is not matching"
	  },
	  email:{
		validemailid:"Enter the valid email"
	  },
	  username:{
		required:"This field is required",
		minlength:"Username min length is 2",
		maxlength:"Username max length is 20"
	  },
	 
	  
	  dob:{
		minDate:"Enter the valid date"
	  }
	 
	  
	},
	// Make sure the form is submitted to the destination defined
	// in the "action" attribute of the form when valid
	submitHandler: function(form) {
	  form.submit();
	}
  });
});
	</script>
</body>
</html>