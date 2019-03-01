<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin-dashboard.php">
        <div class="sidebar-brand-icon">
            <i class="fas fa-user-tie"></i>
        </div>
        <div class="sidebar-brand-text mx-2">Alliance HR</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Dashboard</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" id="applicants" style="cursor:pointer">Applicants <span class="badge badge-danger">150</span></a>
                <a class="collapse-item" id="jobs" style="cursor:pointer">Jobs <span class="badge badge-danger">2000</span></a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" style="cursor:pointer" id="resumebank">
            <i class="fas fa-fw fa-file"></i>
            <span>Resume Bank</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="#analytics" style="cursor:pointer">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Analytics</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="#notifier" style="cursor:pointer">
            <i class="fas fa-fw fa-bell"></i>
            <span>Notifier</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
  <script src="vendor/jquery/jquery.min.js"></script>
<script>
	$("#jobs").click(function(){
		
		window.location = "admin-jobs"
	});
	
	$("#applicants").click(function(){
		
		window.location = "admin-applicants"
	});
	
	$("#resumebank").click(function(){
		
		window.location = "admin-resumebank"
	});
	$("#analytics").click(function(){
		window.location = "admin-analytics"
	});
	$("#notifier").click(function(){
		window.location = "admin-notifier"
	});
</script>
</script>

<!-- End of Sidebar -->