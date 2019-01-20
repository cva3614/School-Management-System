<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Student Management System</title>

<!-- BOOTSTRAP STYLES-->
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="resources/css/font-awesome.css" rel="stylesheet" />
<!--CUSTOM BASIC STYLES-->
<link href="resources/css/basic.css" rel="stylesheet" />
<!--CUSTOM MAIN STYLES-->
<link href="resources/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-cls-top " role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">XYZ Institute</a>
			</div>


		</nav>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li>
						<div class="user-img-div">
							<img src="resources/img/gg1.png" class="img-thumbnail" />

							<div class="inner-text">
								Shiva Neupane <br />

							</div>
						</div>

					</li>

					<li><a class="active-menu" href="index.jsp">Index Panel</a></li>
					<li><a class="active-menu" href="student">Add
							Student</a></li>
					<li><a class="active-menu" href="StudentController">Display
							Student</a></li>
					<li><a class="active-menu" href="AddCourse.jsp">Add Course</a>
					</li>
					<li><a class="active-menu" href="CourseController">Display
							Course</a></li>
					<li><a class="active-menu" href="AddUser.jsp">Add User</a></li>
					<li><a class="active-menu" href="UserController">Display
							User</a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-head-line">About us</h1>
						<h1 class="page-subhead-line">A short info of our institute.
						</h1>

					</div>
				</div>
				<div class="row">

					<div class="col-md-8">
						<div class="list-group">
							<a href="#" class="list-group-item active">
								<h4 class="list-group-item-heading">XYZ Institute</h4>
								<p class="list-group-item-text" style="line-height: 50px;">
									This Institute is one of the best institute in Nepal. We
									provide Full Satisfactory Course and teachings. We also provide
									Intern opportunity to our students and Jobs is capable.</p>
							</a>
						</div>
						<br />
						<!-- 16:9 aspect ratio -->

					</div>

				</div>
				<!--/.Row-->

			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->

	<div id="footer-sec">
		&copy; 2016 XYZ Institute | Design By : <a>Shiva</a>
	</div>
	<!-- /. FOOTER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="resources/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="resources/js/bootstrap.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="resources/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="resources/js/custom.js"></script>

</body>
</html>
