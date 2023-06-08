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
		   
		   <div class="menu" >
			<ul>
				
				<li style="margin-left: 380px;"><a href="BookingHomepage.jsp">HOME</a></li>
				<li style="margin-left: 80px"><a href="#"><span style="color: #ff7200;">BOOKING</span></a></li>
                <li style="margin-left: 80px"><a href="profile.jsp">PROFILE</a></li>
                <li style="margin-left: 80px"><a href="login.jsp">LOGOUT</a></li>
			</ul>
		</div>
		 </div>
	</div>
	<section class="vh-100 gradient-custom">
		<div class="container   box">
			<div class="row justify-content-center align-items-center h-100">
				<div>

					<div class="card-body p-4 p-md-5 ">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5" style="color: rgb(255, 255, 255);">Booking Form</h3>
						<form id="registerForm" modelAttribute="login" action="registerProcess" name="regform"
								method="post">

							<div class="row">
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: rgb(248, 246, 246);">Name (Sender)<span style="color: red;"> *</span></label> <input
											type="text" id="fname" name="sendername"
											class="form-control form-control-lg" placeholder="First Name" />
                                            <span id="error_fname" class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="mobileno"
											style="color: rgb(248, 246, 246);">Modile Number<span style="color: red;"> *</span></label> <input
											type="number" id="mobileno" min="6000000000" name="sendermobileno"
											class="form-control form-control-lg" placeholder="Contact details" />
                                            <span id="error_number" class="text-danger"></span>

									</div>

								</div>


								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="pickup"
											style="color: rgb(248, 246, 246);">Pick-up Location<span style="color: red;"> *</span></label> <input
											type="text" id="address" name="address"
											class="form-control form-control-lg" placeholder="senderAddress" />
                                             <span id="error_address" class="text-danger"></span>

									</div>

								</div>
                            </div>

								
                            <div class="row">
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="rname"
											style="color: rgb(248, 246, 246);">Name (Reciever)<span style="color: red;"> *</span></label> <input
											type="text" id="recname" name="recname"
											class="form-control form-control-lg" placeholder="Reciever Name" />
                                            <span id="error_rname" class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="Rmobileno"
											style="color: rgb(248, 246, 246);">Modile Number<span style="color: red;"> *</span></label> <input
											type="number" id="Rmobileno" min="6000000000" name="recmobileno"
											class="form-control form-control-lg" placeholder="Contact details" />
                                            <span id="error_Rnumber" class="text-danger"></span>

									</div>

								</div>


								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="raddress"
											style="color: rgb(248, 246, 246);">Drop-ip Location<span style="color: red;"> *</span></label> <input
											type="text" id="raddress" name="recaddress"
											class="form-control form-control-lg" placeholder="address" />
                                             <span id="error_raddress" class="text-danger"></span>

									</div>

								</div>
                            </div>

								

								<div class="row" style="margin-top: 10px;">
									<div class="col-md-4 ">
										<label class="form-label select-label"
											style="color: aliceblue;">Courier Service <span style="color: red;"> *</span></label>
										<div class="col-12" >
											<select class="select form-control-lg nation" name="nationality" style="width: 380px;">
												<option value="1">Choose option</option>
												<option value="2">Local Courier service</option>
												<option value="3">Same day courier</option>
												<option value="4">Overnight Shipping</option>
											</select>


										</div>

									</div>
									
                                    
                                    <div class="col-md-4 ">
										<label class="form-label select-label"
											style="color: aliceblue;">Courier Service Type</label>
										<div class="col-12">
											<select class="select form-control-lg nation" name="nationality" style="width: 380px;">
												<option value="1">Choose option</option>
												<option value="2">Business</option>
												<option value="3">Safety</option>
												<option value="4">Null</option>
											</select>


										</div>

									</div>

									<div class="col-md-4 mb-4">

										<h6 class="mb-2 pb-1" style="color: aliceblue;">Parcel type: </h6>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="femaleGender" value="option1"
												checked /> <label class="form-check-label"
												for="femaleGender" style="color: aliceblue;">Mail (Letter)</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="maleGender" value="option2" />
											<label class="form-check-label" for="maleGender"
												style="color: aliceblue;">Heavy Loaded Parcel</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="otherGender" value="option3" />
											<label class="form-check-label" for="otherGender"
												style="color: aliceblue;">Other</label>
										</div>
									</div>
								</div>

								<div class="mt-4 pt-2" style="margin-left: 510px;">
									<input class="btn btn-primary btn-lg" type="submit" id="submit"
										value="Payment" />
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


	<script>
        

        $(function() {
  
    $("form[name='regform']").validate({
  
      rules: {
        sendername:{
          lettersonly:true,
          
        },
        recname:{
          lettersonly:true,
          
        },
		senderaddress:{
          lettersonly:true
        },
		recaddress:{
          lettersonly:true
        },
        
        sendermobileno:{
          number:true,
          minlength:10,
          maxlength:10
        },
		recmobileno:{
          number:true,
          minlength:10,
          maxlength:10
        },
       
        
      },
      // Specify validation error messages
      messages: {
        sendername:{
          lettersonly:"First Name should not contain numbers"
         
        },
        recname:{
          lettersonly:"First Name should not contain numbers"
          
        },
        
        sendermobileno:{
          number:"Enter the valid mobile number",
          minlength:"Enter the valid mobile number",
          maxlength:"Enter the valid mobile number"
        },
		recmobileno:{
          number:"Enter the valid mobile number",
          minlength:"Enter the valid mobile number",
          maxlength:"Enter the valid mobile number"
        },
		senderaddress:{
          lettersonly:"Enter the valid city"
        },
		recaddress:{
          lettersonly:"Enter the valid city"
        },

       
       
        
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
      </script>

  
   <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>