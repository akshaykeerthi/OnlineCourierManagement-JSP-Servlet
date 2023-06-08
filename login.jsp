<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>  
        <script type="application/javascript" src="https://code.jquery.com/jquery3.5.1.min.js"></script>

        <style>
            .logo{
                font-size: 40px;
                color: aliceblue;
                margin-left: 30px;
                margin-top: 10px;
                font-family: Copperplate Gothic Light;
            }
            .regbutton{
                background-color: transparent;
                color: aliceblue;
                margin-left: 900px;
                font-size: 20px;
                font-family: Bahnschrift SemiBold;
                margin-top: 30px;
                border: transparent;
            }
            .back{
                background-color: transparent;
                color: aliceblue;
                font-size: 20px;
                font-family: Bahnschrift SemiBold;
                margin-top: 30px;
                margin-left: 30px;
                border: transparent;
            }

            .username #email_error,
            .password #pass_error{
                margin-top: 5px;
                width: 345px;
                font-size: 18px;
                color:#c62828;
                background: rgba(255,0,0,0.1);
                text-align: center;
                padding: 5px 8px;
                border-radius: 3px;
                border: 1px solid #EF9A9A;
                display: none;
            }
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

.back{
margin-top:40px;
height:30px;
width:120px;
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
      <div style="display:flex">
        <div class="navbar">
            <div class="icon" >
                <h2 class="logo"> Fast & Deliverious </h2>
            </div>
    </div>
            <div class="menu" style="margin-right: 80px;">
                <ul>
                    <li style="margin-left: 250px;"><a href="#" style="color: orange;">LOGIN</a></li>
                    <li style="margin-left: 80px;"><a href="register.jsp">REGISTER</a></li>
                    <li style="margin-left: 80px"><a href="index.jsp">BACK</a></li>
                </ul>
            </div>
            
        </div> 
    </div>
       
<section class="background-radial-gradient overflow-hidden">
    
  
    <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
      <div class="row gx-lg-5 align-items-center mb-5">
        <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
          <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
            Safe transport at affordable prices.  <br />
            <span style="color: hsl(218, 81%, 75%)">Your convenience, our motto.</span>
          </h1>
          <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
            Welcome messages for customers is an opportunity to build a strong relationship as it is the initial interaction and eventually make them more receptive in the future.
          </p>
        </div>
  
        <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
          <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
          <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>
  
          <div class="card bg-glass">
            <div class="card-body px-4 py-5 px-md-5">
              <form class="loginpage" method="get" action="Loginpage" name="regform">
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="row">
                  <div style="font-size: 20px;">
                    <p><b>LOGIN</b></p>
                  </div>

                <!-- Email input -->
                <div class="form-outline mb-4 username">
                <label class="form-label" for="form3Example3"> Username</label>
                  <input type="text" id="form3Example3" class="form-control" name="username"/>
                   <span id="error_username" class="text-danger"></span>
                  
                  
                  
                  
                </div>
  
                <!-- Password input -->
                <div class="form-outline mb-4 password">
                 <label class="form-label" for="form3Example4">Password</label>
                  <input type="password" id="form3Example4" class="form-control" name="password"/>
                   <span id="error_password" class="text-danger"></span>
                  
                </div>

                <div class="row mb-4">
                    <div class="col-md-6 d-flex justify-content-center">
                      <!-- Checkbox -->
                      <div class="form-check mb-3 mb-md-0">
                        <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
                        <label class="form-check-label" for="loginCheck"> Remember me </label>
                      </div>
                    </div>

                    <div class="col-md-6 d-flex justify-content-center">
                        <!-- Simple link -->
                        <a href="#!">Forgot password?</a>
                      </div>
                </div>

                <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
  
                <!-- Submit button -->
               
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
<script>



        $(function() {
  
    $("form[name='regform']").validate({
  
      rules: {
        username:{
          
		  required:true
        },
        password:{
         
		  required:true
        },
       
        
        
      },
      // Specify validation error messages
      messages: {
        password:{    
		  required:"This field is required"      
        },       
        username:{
          required:"This field is required",   
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


    </body>
</html>