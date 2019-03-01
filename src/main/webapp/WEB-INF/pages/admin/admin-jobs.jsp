<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Side Navbar -->
        <%@include file="side-nav.jsp" %>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Top Navbar -->
                <%@include file="top-nav.jsp" %>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->

                    <!-- DataTables Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 d-sm-flex align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-danger">Jobs List</h6>

                            <button type="button" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" data-toggle="modal" data-target="#exampleModal">
                                <i class="fas fa-plus fa-sm text-white-50"></i> Create Job</a>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Job Title</th>
                                            <th>Description</th>
                                            <th>Location</th>
                                            <th>Qualification</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${jobList}" var="jobs">
                                        <tr>
                                            <td><c:out value="${jobs.job_title}" /></td>
                                            <td><c:out value="${jobs.job_desc}" /></td>
                                            <td><c:out value="${jobs.job_location}" /></td>
                                            <td><c:out value="${jobs.job_qualifications}" /></td>
                                            <td><c:out value="${jobs.job_status}" /></td>
                                            <td>
                                                <button type="button" class="btn btn-primary btn-circle" data-toggle="modal" data-target="#editModal<c:out value="${jobs.job_id}" />"><i class="fas fa-edit"></i></button>
                                                <button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#deleteModal<c:out value="${jobs.job_id}" />"><i class="fas fa-trash"></i></button>
                                            </td>
                                        </tr>
                                     </c:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Create Job Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Create Job</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="jobTitle" placeholder="Job Title" aria-label="Job Title" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Description" id="jobDescription" aria-label="Job Description"></textarea>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Location" id="jobLocation" aria-label="Job Location" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Salary" id="jobSalary" aria-label="Job Location" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Qualifications" id="jobQual" aria-label="Job Qualifications"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" id="add">Add Job</button>
                </div>
            </div>
        </div>
    </div>
	<!-- Edit Modal -->
	<c:forEach items="${jobList}" var="jobs">
	<div class="modal fade" id="editModal<c:out value="${jobs.job_id}" />" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Job</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="jobTitle" value="<c:out value="${jobs.job_desc }"/>" placeholder="Job Title" aria-label="Job Title" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Description" id="jobDescription" aria-label="Job Description"><c:out value="${jobs.job_desc}"/></textarea>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Location" id="jobLocation" value="<c:out value="${jobs.job_location}"/>"  aria-label="Job Location" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Salary" id="jobSalary" value="<c:out value="${jobs.job_salary}"/>" aria-label="Job Salary" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Qualifications"  id="jobQual" aria-label="Job Qualifications"><c:out value="${jobs.job_qualifications}"/></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" id="edit">Edit Job</button>
                </div>
            </div>
        </div>
    </div>
	</c:forEach>
	<!-- End of delete modal -->
	<!-- Delete Modal -->
	<c:forEach items="${jobList}" var="jobs">
	<div class="modal fade" id="deleteModal<c:out value="${jobs.job_id}" />" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Job</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                
                	<h4>Do you want to remove this job? This action is cannot be undone.</h3>
                    <%-- <div class="input-group mb-3">
                        <input type="text" class="form-control" id="jobTitle" value="<c:out value="${jobs.job_desc }"/>" placeholder="Job Title" aria-label="Job Title" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Description" id="jobDescription" aria-label="Job Description"><c:out value="${jobs.job_desc}"/></textarea>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Location" id="jobLocation" value="<c:out value="${jobs.job_location}"/>"  aria-label="Job Location" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Job Salary" id="jobSalary" value="<c:out value="${jobs.job_salary}"/>" aria-label="Job Salary" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <textarea class="form-control" placeholder="Job Qualifications"  id="jobQual" aria-label="Job Qualifications"><c:out value="${jobs.job_qualifications}"/></textarea>
                    </div> --%>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" id="edit">Edit Job</button>
                </div>
            </div>
        </div>
    </div>
	</c:forEach>
	<!-- End of edit modal -->
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger" href="index.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>
<script>
/* 
	$("#resumebank").click(function(){
		window.location = "admin-resumebank"
	});
	
	$("#jobs").click(function(){
		
		window.location = "admin-jobs"
	});
	
	$("#applicants").click(function(){
		
		window.location = "admin-applicants"
	}); */
	
	$("#add").click(function(){
		

		var title = $("#jobTitle").val();
		var description = $("#jobDescription").val();
		var location = $("#jobLocation").val();
		var salary = $("#jobSalary").val();
		var qualifications = $("#jobQual").val();
		var status = "OPEN";
		var allid = 1;
		
		$.ajax({
			
			method : "POST",
			dataType : "json",
			data : {
				job_title : title,
				job_desc : description,
				job_location : location,
				job_qualifications : qualifications,
				job_status : status,
				all_id : allid,
				job_salary : salary},
			url : "http://localhost:8010/api/job/addJob",
			succes : function(e){
				alert("Added Job");
			},
			
			
		});
		
	});
</script>
