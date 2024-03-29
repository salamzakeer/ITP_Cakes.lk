<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Register</title>
    <script type="text/javascript" src="validation.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body style=" background-size:100% ;background-repeat:repeat;">
            <div class="limiter">
		<div class="container-login100" >
			<div class="wrap-login100 p-t-30 p-b-50">
			
				<form class="login100-form validate-form p-b-33 p-t-5" action="RegisterHandler" method="POST" onsubmit="return validation()">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" id="username" type="text" name="username" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter Email">
						<input class="input100" id = "email" type="email" name="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id = "password" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter Phone Number">
						<input class="input100" id = "cnumber" type="phonenumber" name="cnumber" placeholder="Phone Number">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter Address">
						<input class="input100" id = "address" type="address" name="address" placeholder="Address">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="container-login100-form-btn m-t-32">
						<button class="pest_btn">
							Sign Up
						</button>
					</div>

                     
                            
                     </form>
               </div>
          </div>
   </div>
   	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
                            


</body>
</html>