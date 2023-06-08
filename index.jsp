<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	
	
	
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Fast & Deliverious</title>
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
    *{
    margin: 0;
    padding: 0;
}

.main{
    width: 100%;
    background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%);
    background-position: center;
    background-size: cover;
    height: 90vh;
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
    text-decoration: none;
    color: #ff7200;
}





.content{
    width: 1200px;
    height: auto;
    margin: auto;
    color: #fff;
    position: relative;
}

.content .par{
    padding-left: 20px;
    padding-bottom: 25px;
    font-family: Century Gothic;
    font-size: 20px;
    letter-spacing: 1.2px;
    line-height: 30px;
}

.content h1{
    font-family: Century Gothic;
    font-size: 50px;
    padding-left: 20px;
    margin-top: 9%;
    letter-spacing: 2px;
}

.contentACH p{
    font-family: Century Gothic;
    font-size: 20px;
    padding-left: 20px;
    margin-top: 20px;
    margin-left: 350px;
    letter-spacing: 2px;

}

.content .cn{
    width: 160px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-bottom: 10px;
    margin-left: 20px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    transition: .4s ease;
    
}

.content .cn a{
    text-decoration: none;
    color: #000;
    transition: .3s ease;
}

.cn:hover{
    background-color: #fff;
}

.content span{
    color: #ff7200;
    font-size: 65px
}







  </style>
</head>
<body  style="background-size:cover; background-color: #000;">

    <div class="main">
        
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
                <div class="container">
                    <div class="icon">
                        <h2 class="logo"> Fast & Deliverious </h2>
                    </div>
                  </a>
                  
                  
                  <div class="menu" >
                    
                    <!-- <p style="font-size: 25px; color: #ff7200; font-family:Century Gothic ; margin-top: 38px; "><b>WELCOME</b></p> -->

                        <ul>
                            <li style="margin-left: 430px; margin-right: 15px;"><a href="#" style="color: orange;">HOME</a></li>
                              <li style="margin-left: 80px;"><a href="login.jsp" >LOGIN</a></li>
                              <li style="margin-left: 80px;"><a href="register.jsp">REGISTER</a></li>
                             
                          </ul>
                        
                </div>
                </div>
              </nav>
        </div>
       
        <div class="content">
            <h1>Make Your <br><span>Reservation</span> <br></h1>
<p class="par"><ion-icon name="caret-forward-outline"></ion-icon>  This service has saved many customers time to delivering the things from any location. 
    <br>With the proposed Courier service system, it is easier to deliver the products or goods to consumers. <br>
<br><ion-icon name="caret-forward-outline"></ion-icon>
Fast & Deliverious give service to customer to send their goods or document to other person or other cities.<br>
<br><ion-icon name="caret-forward-outline"></ion-icon>
Fast & Deliverious have a few drivers to a fleet of trucks, trailers, ships and aeroplanes for getting the packages to and from anywhere in the world. <br>
<br><ion-icon name="caret-forward-outline"></ion-icon>Bigger players even have their very own airfields or sections of airports allotted just for them.
</p>




</div>

</div></div>
<div>
    <footer class=" text-center text-white" style="background-color: rgb(0, 0, 0);">
        <!-- Grid container -->
        <div class="container-fluid p-6 pb-0">
          <!-- Section: Social media -->
          <section class="mb-4">
            <!-- Facebook -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-facebook"style="font-size:30px"></ion-icon></a>
      
            <!-- Twitter -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-twitter" style="font-size:30px"></ion-icon></a>
      
            <!-- Google -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-google-playstore" style="font-size:30px"></ion-icon></a>
      
            <!-- Instagram -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-instagram" style="font-size:30px"></ion-icon></a>
      
            <!-- Linkedin -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-linkedin" style="font-size:30px"></ion-icon></a>
      
            <!-- Github -->
            <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
              ><ion-icon name="logo-github" style="font-size:30px"></ion-icon></a>
          </section>
          <!-- Section: Social media -->
        </div></footer>
        <!-- Grid container -->
      
      
</div>
</body>




<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>


	