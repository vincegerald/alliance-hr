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

    <title>Apply Job</title>

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
        <div class="card shadow mb-3">
            <div class="card-body">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-8">
                            <h1>Job Title</h1>
                        </div>
                        <div class="col-6 col-md-4">
                            <h6 class="text-muted"><i class="fas fa-map-pin"></i> Job Location</h6>
                            <h6 class="text-muted"><i class="fas fa-dollar-sign"></i> Salary</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3">
                            <div class="card-body ml-2 mr-2">
                                <h6><strong>Job Description</strong></h6>
                                <p class="text-justify">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis autem ab consequatur eligendi fugiat similique nesciunt molestias aliquid id, nulla voluptate facere itaque corrupti cum. Sit officiis nulla fugit similique! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed, placeat. Placeat omnis minima debitis ullam molestias. Hic rerum nostrum inventore quibusdam unde, placeat dolores. Nostrum dignissimos sunt ad, illum accusantium.
                                </p>
                                <h6><strong>Job Qualifications</strong></h6>
                                <p class="text-justify">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis autem ab consequatur eligendi fugiat similique nesciunt molestias aliquid id, nulla voluptate facere itaque corrupti cum. Sit officiis nulla fugit similique! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed, placeat. Placeat omnis minima debitis ullam molestias. Hic rerum nostrum inventore quibusdam unde, placeat dolores. Nostrum dignissimos sunt ad, illum accusantium.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="w-100"></div>
                    <div class="col">
                        <div class="card shadow mb-3">
                            <div class="card-body ml-2 mr-2">
                                <h6><strong>Make your Pitch!</strong></h6>
                                <textarea class="form-control mb-3"></textarea>
                                <button class="btn btn-danger btn-block">Submit your Application</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="card shadow mb-3">
                    <div class="container">
                        <div class="card-body ml-2 mr-2">
                            <h6><strong>Company Overview</strong></h6>
                            <p class="text-justify">
                                Alliance Software, Inc. is a global IT services and solutions company. Alliance was established in 2000 and has since grown to become one of the Philippines' largest and most respected independent software development outsourcing company. Alliance's delivery model is anchored on both on-shore and off-shore approach stressing on effective use of our key strengths in our people, process and technology. As part of Alliance’s strategic delivery model, Alliance has established offices in the key markets of Tokyo, Cebu and Manila.
                                <br>
                                <br>
                                As an IT services company, Alliance has developed service capabilities to include the entire spectrum of the Software Development process starting from Design (UI and Logic), Development (on various proprietary and open source technologies), QA/Testing, Deployment to Documentation (in English and Nihongo).
                                <br>
                                <br>
                                Our service offerings include Application Development Outsourcing, high level BPO work, Quality Assurance and Testing Services, UX design, System and Application Documentation and Vulnerability Assessment services.
                                <br>
                                <br>
                                As an IT solutions company, Alliance offers cutting edge yet practical business solutions packaged under the Alliance Edge brand. Solutions include WebPOS, Accounting package, HRIS + Payroll package, CRM, Messaging and collaboration solutions.
                                <br>
                                <br>
                                Alliance is an ISO 9001 certified company. Our certification manifests Alliance's commitment to the highest quality levels in our management and IT service delivery processes.
                                <br>
                                <br>
                                Alliance's main delivery center is located in Cebu City, Philippines. On-shore offices in Manila and Tokyo provide sales/marketing and technical support services.

                            </p>
                        </div>
                    </div>
                </div>
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


