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
						<h1 class="page-head-line">Edit User</h1>

					</div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12 col-sm-6 col-xs-12">
						<form role="form" action="UserController" method="post">
							<div class="col-md-12 col-sm-6 col-xs-12">
								<div class="col-md-6 col-sm-6 col-xs-12">


									<div class="form-group">
										<label>Uid</label> <input class="form-control" type="text"
											name="uid" value="${eu.get(0).uid}">
									</div>

								</div>
							</div>
							<div class="col-md-12 col-sm-6 col-xs-12">

								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label>Username</label> <input class="form-control"
											type="text" name="username" value="${eu.get(0).username}">
									</div>
								</div>
							</div>
							<hr>

							<div class="col-md-12 col-sm-6 col-xs-12">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<label>New Password</label> <input class="form-control"
											type="password" name="password">
										<lable>
										<small> Type new Password</small></lable>
									</div>
									<div class="form-group">
										<label>Confirm Password</label> <input class="form-control"
											type="password" name="confirmpassword">
									</div>

								</div>
							</div>
							<hr>
							<div class="col-md-12 col-sm-6 col-xs-12">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<label>Type</label> <select class="form-control" name="type">
											<c:forEach items="Admin,User" var="typevalue">
												<c:choose>
													<c:when test="${eu.get(0).type==typevalue}">
														<option selected="selected">${typevalue}</option>>
                        </c:when>
													<c:otherwise>
														<option>${typevalue}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label> <input type="radio" name="status" value="A"
											<c:if test="${eu.get(0).status=='A'}">checked</c:if>>Active
										</label> <label> <input type="radio" name="status" value="I"
											<c:if test="${eu.get(0).status=='I'}">checked</c:if>>Inactive
										</label>
									</div>

								</div>
							</div>
							

							<div class="col-md-12 col-sm-6 col-xs-12">
								<button type="submit" class="btn btn-info" name="update"
									Value="Update">Edit</button>
							</div>
						</form>

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
		&copy; 2016 XYZ Institute | Design By : <a>Renjin</a>
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
