<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="img/profile.png" />

    <title>Profile</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.7.0-web/css/all.css">

    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="fonts/fontawesome-free-5.7.0-web/css/all.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>e-->

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <!--        <link href="css/creative.min.css" rel="stylesheet">-->
    <style>
        /* width */
        ::-webkit-scrollbar {
            width: 15px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #8e44ad;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }


        .nav-link:hover {
            background-color: salmon;
            border-radius: 2px;
            width: auto;
        }

    </style>

</head>

<body>

    <!-- Navigation -->
    <%@ include file="applicant-nav.jsp" %>

    <div class="container mt-3">
        <div class="card mb-2 ml-auto">
            <div class="card-header bg-danger">
                <h6 class="text-white text-left">Personal Information</h6>
                <h6 class="text-right"><i class="fa fa=edit"></i> Edit</h6>
            </div>
            <div class="card-body ml-2 mr-2">
                <div class="container ml-5 mr-5">
                    <h6>Name: </h6>
                    <h6>Email: </h6>
                    <h6>Contact Number: </h6>
                    <h6>Address: </h6>
                </div>
            </div>
        </div>

        <div class="card mb-2 ml-auto">
            <div class="card-header bg-danger">
                <h6 class="text-white">Education</h6>
            </div>
            <div class="card-body ml-2 mr-2">

            </div>
        </div>

        <div class="card mb-2 ml-auto">
            <div class="card-header bg-danger">
                <h6 class="text-white">Skills</h6>
            </div>
            <div class="card-body ml-2 mr-2">

            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/creative.min.js"></script>

</body>

</html>

    