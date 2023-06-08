<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  
  
  
  
  

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

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>  
   
      <script type="application/javascript" src="https://code.jquery.com/jquery3.5.1.min.js"></script>

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
form .error{
  color: red;
  border-color: red;
   font-style: italic;
  
}
form .valid{
  border:2px solid green;
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
				
				<li style="margin-left: 580px;"><a href="index.jsp">HOME</a></li>
				<li style="margin-left: 80px"><a href="login.jsp">BACK</a></li>
			</ul>
		</div>
		 </div>
	</div>
	<section class="vh-100 gradient-custom">
		<div class="container   box">
			<div class="row justify-content-center align-items-center h-100">
				<div>

					<div class="card-body p-4 p-md-5 ">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5" style="color: rgb(255, 255, 255);">Registration
							Form</h3>
						<form id="registerForm" modelAttribute="login" action="RegisterPage" name="regform"
								method="post">

							<div class="row">
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: rgb(248, 246, 246);">First Name<span style="color: red;"> *</span></label> <input
											type="text" id="fname" name="fname"
											class="form-control form-control-lg" placeholder="First Name" />
                      <span id="error_fname" class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="lname"
											style="color: rgb(248, 246, 246);">Last Name<span style="color: red;"> *</span></label> <input
											type="text" id="lname" name = "lname"
											class="form-control form-control-lg" placeholder="First Name" />
                      <span id="error_lname" class="text-danger"></span>

									</div>

								</div>


								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="email"
											style="color: rgb(242, 238, 238);">Email <span style="color: red;"> *</span></label> <input
											type="email" id="email" name="email" onkeydown="validation()"
											class="form-control form-control-lg" placeholder="aaa@gmail.com" required/>
                      <span id="error_email" class="text-danger"></span>

									</div>

								</div>

								


								<div class="row">
									<div class="col-md-4 mb-4 d-flex align-items-center">

										<div class="form-outline datepicker w-100">
											<label for="birthdayDate" class="form-label"
												style="color: rgb(248, 243, 243);">Date of Birth <span style="color: red;"> *</span></label> <input
												type="date" class="form-control form-control-lg" name = "dob"
												id="dob" />
						  <span id="error_dob" class="text-danger"></span>
	
										</div>
	
	
									</div>

									<div class="col-md-4 mb-4">
										<div class="form-outline" style="margin-left:10px; width:380px;">
											<label class="form-label" for="address"
												style="color: rgb(243, 241, 241);"> Address <span style="color: red;"> *</span></label> <input type="text"
												id="address" class="form-control form-control-lg" name="address"
												placeholder="Address" />
												  <span id="error_address" class="text-danger"></span>
										</div>
									</div>
									
									<div class="col-md-4 mb-4">
										<div class="form-outline" style="margin-left:15px; width:390px;">
											<label class="form-label" for="phonenumber"
												style="color: rgb(246, 243, 243);"> Contact Number <span style="color: red;"> *</span></label> <input
												type="tel" id="phonenumber" name = "mobileno"
												class="form-control form-control-lg"
												placeholder="Mobile Number" />
                       							 <span id="error_number" class="text-danger"></span>
										</div>
									</div>
								</div>

								<div class="row" style="margin-top: 10px;">
									<div class="col-md-4 mb-4"
										>

										<div class="form-outline">
											<label class="form-label" for="username"
												style="color: rgb(251, 247, 247);">User Name <span style="color: red;"> *</span></label> <input
												type="text" id="username" name="username"
												class="form-control form-control-lg"
												placeholder="Username" />
                        <span id="error_username" class="text-danger"></span>

										</div>

									</div>
									<div class="col-md-4 mb-4"
										>

										<div class="form-outline">
											<label class="form-label" for="password"
												style="color: rgb(249, 246, 246);"> Password <span style="color: red;"> *</span></label> <input
												type="text" id="password" name="password"
												class="form-control form-control-lg" placeholder="Password" />
                        <span id="error_password" class="text-danger"></span>

										</div>

									</div>

									<!-- <div class="col-md-4 mb-4"
										>

										<div class="form-outline">
											<label class="form-label" for="cpassword"
												style="color: rgb(249, 246, 246);"> Confirm Password <span style="color: red;"> *</span></label> <input
												type="text" id="cpassword"
												class="form-control form-control-lg" placeholder="Confirm Password" />
                       							<span id="error_password" class="text-danger"></span>

										</div>

									</div> -->
									
								</div>

								<div class="mt-4 pt-2" style="margin-left: 510px;">
									<input class="btn btn-primary btn-lg" type="submit" id="submit"
										value="Submit" />
								</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
		
	</section>

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
		  required:true
        },
        lname:{
          lettersonly:true,
          maxlength:20,
		  required:true
        },
        password:{
          /* passwordupper:true, */
          
          required:true
        },
        mobileno:{
          number:true,
          minlength:10,
          maxlength:10,
		  required:true
        },
        email:{
          validemailid:true,
		  required:true
        },
        address:{
          lettersonly:true,
		  minlength: 5,
		  required:true
        },
        dob:{
          minDate:true,
		  required:true
        },
        username:{
          required:true,
          
          maxlength:20
        },
        confirmpassword:{
          equalTo:"#password"
        },
        
        
      },
      // Specify validation error messages
      messages: {
        fname:{
          lettersonly:"Numeric values are not allowed",
		  required:"This field is required"
         
        },
        lname:{
          lettersonly:"Numeric values are not allowed",
		  required:"This field is required"
          
        },
        
        mobileno:{
          number:"Enter the valid mobile number",
          minlength:"Enter the valid mobile number",
          maxlength:"Enter the valid mobile number",
		  required:"This field is required"
        },

        password:{
         /*  passwordupper:"password must contain atleast one lower case and upper case letter", */
		  required:"This field is required"
          
        },  
        confirmpassword:{
          equalTo:"Password is not matching",
		  required:"This field is required"
        },
        email:{
          validemailid:"Enter the valid email",
		  required:"This field is required"
        },
        username:{
          required:"This field is required",
          
          maxlength:"Username max length is 20"
        },
        address:{
          lettersonly:"Enter the valid city",
		  minlength:"enter the valid address",
		  required:"This field is required"
        },
        
        dob:{
          minDate:"Enter the valid date",
		  required:"This field is required"
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