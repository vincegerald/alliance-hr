<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Signup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--===============================================================================================-->
    <link rel="shortcut icon" href="img/profile.png" />
    <!--===============================================================================================-->

    <!-- Custom fonts for this template -->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>

    <div class="limiter">
        <div class="container-login100" style="background-image: url('img/img-01.jpg');">
            <div class="wrap-login100 p-t-80 p-b-30">
                    <div class="login100-form-avatar">
                        <img src="img/profile.png" alt="AVATAR">
                    </div>

                    <span class="login100-form-title p-t-20 p-b-45">
                        Application Form
                    </span>

                    <div class="wrap-input100 validate-input m-b-10" data-validate="Firstname is required">
                        <input class="input100" type="text" name="fname" id="fname" placeholder="Firstname">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user"></i>
                        </span>

                    </div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate="Lastname is required">
                        <input class="input100" type="text" name="lname" id="lname" placeholder="Lastname">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user"></i>
                        </span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-10" data-validate="Email is required">
                        <input class="input100" type="email" name="email" id="email" placeholder="Email">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-at"></i>
                        </span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-10" data-validate="Number is required">
                        <input class="input100" type="number" name="num" id="num" placeholder="Number">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-mobile"></i>
                        </span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-10" data-validate="Address is required">
                        <input class="input100" type="text" name="add" id="address" placeholder="Address">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-map-marker"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-10" data-validate="Password is required">
                        <input class="input100" type="password" name="pass" id="password" placeholder="Password">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user"></i>
                        </span>
                    </div>
                    

                    <div class="container-login100-form-btn p-t-10">
                        <button class="login100-form-btn" id="register">
                            Register
                        </button>
                    </div>

                    <div class="text-center w-full txt1 p-t-25 p-b-60">
                        Already have an account? Login <a class="txt1" href="login.html"><strong>here</strong> <i class="fa fa-long-arrow-right"></i></a>
                    </div>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>

</html>
<script>
	$("#register").click(function(){
		
		var fname = $("#fname").val();
		var lname = $("#lname").val();
		var email = $("#email").val();
		var num = $("#num").val();
		var address = $("#address").val();
		var pass = $("#password").val();
		
		$.ajax({
			method : 'POST',
			dataType : 'json',
			data : {appFname : fname, appLname : lname, appEmail : email, appNumber : num, appAddress : address, appPassword: pass},
			url : "http://localhost:8010/api/applicant/regApplicant",
			success : function(responseData){
				alert("success");
			}
		});
		
	})
</script>
    