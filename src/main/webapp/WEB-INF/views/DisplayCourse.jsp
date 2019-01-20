
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li><a class="active-menu" href="AddStudent.jsp">Add
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
						<h1 class="page-head-line">Display Course</h1>

					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-6 col-xs-12">
						<!--   Kitchen Sink -->
						<div class="panel panel-default">
							<div class="panel-heading">Course Table</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>Cid</th>
												<th>Title</th>
												<th>Price</th>
												<th>Duration</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${dc}" var="Course">
												<tr>

													<td>${Course.cid}</td>
													<td>${Course.title}</td>
													<td>${Course.price}</td>
													<td>${Course.duration}</td>
													<td><a
														href="CourseController?cid=${Course.cid}&action=edit">Edit</a></td>
													<!--yesto direct do get ma jancha-->
													<td><a
														href="CourseController?cid=${Course.cid}&action=delete">Delete</a></td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- End  Kitchen Sink -->

					</div>

				</div>
				<!--/.ROW-->







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
