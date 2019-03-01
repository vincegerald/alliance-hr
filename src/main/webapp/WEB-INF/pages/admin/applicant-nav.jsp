<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="img/profile.png" width="30px" height="30px" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" id="jobs" style="cursor:pointer">Jobs</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" id="profile" style="cursor:pointer">Profile</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
 <script src="vendor/jquery/jquery.min.js"></script>
 <script>
	$("#jobs").click(function(){
		
		window.location = "applicant-index"
	});
	
	$("#profile").click(function(){
		window.location = "applicant-profile"
	});
	$("#apply").click(function(){
		alert("Apply");
	});
</script>
  