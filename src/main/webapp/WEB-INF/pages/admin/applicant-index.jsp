<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@   %> --%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="img/profile.png" />

    <title>Jobs</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.7.0-web/css/all.css">

    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="fonts/fontawesome-free-5.7.0-web/css/all.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
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

    </style>

</head>

<body>

    <!-- Navigation -->
    <%@ include file="applicant-nav.jsp" %>
    <div class="container mt-3">
    <c:forEach items="${jobList}" var="jobs">
        <div class="card shadow mb-3 ml-auto">
            <div class="card-body ml-2 mr-2" id="dataTable">
                <h4><strong><c:out value="${jobs.job_title}" /></strong></h4>
                <h6 class="text-muted"><i class="fas fa-map-pin"></i> <c:out value="${jobs.job_location}" /></h6>
                <h6 class="text-muted"><i class="fas fa-dollar-sign"></i> <c:out value="${jobs.job_salary}" /></h6>
                <h6 style="margin-top: 30px;"><strong>Job Description</strong></h6>
                <p class="text-justify">
                    <c:out value="${jobs.job_desc}" />
                </p>
                <h6><strong>Job Qualifications</strong></h6>
                <p class="text-justify">
                    <c:out value="${jobs.job_qualifications}" />
                </p>
                <input type = "text" value="<c:out value = "${jobs.job_id}"/>" id="job_id" hidden="hidden"/>
                <button type="button" class="btn btn-danger btn-block" id="apply">Apply Now</button>
            </div>
        </div>
    </c:forEach>
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
<script>

	$(document).ready(function(){
		
		$("#apply").click(function(){
			
			
			
			//window.location = "applicant-applyJob"
			
					
			/* var task = $(this).closest('div').find("#job_id").val();
			alert(task); */

			/* $.ajax({
				
				method : "POST",
				dataType : 'json'
				data : {job_id : id},
				url : "http://localhost:8010/api/applicant/regApplicant",
			}); */
			
		});
	});
</script>
 
