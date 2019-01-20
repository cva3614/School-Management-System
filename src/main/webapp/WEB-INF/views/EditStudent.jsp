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
						<h1 class="page-head-line">Edit Student</h1>

					</div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12 col-sm-6 col-xs-12">
						<form role="form" action="StudentController" method="post">

							<div class="col-md-12 col-sm-6 col-xs-12">
								<div class="col-md-6 col-sm-6 col-xs-12">


									<div class="form-group">
										<label>Sid</label> <input class="form-control" type="text"
											name="sid" value="${qc.get(0).sid}">
									</div>
								</div>
							</div>
							<div class="col-md-12 col-sm-6 col-xs-12">

								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label>First Name</label> <input class="form-control"
											type="text" name="firstname" value="${qc.get(0).firstname}">
									</div>
									<div class="form-group">
										<label>Last Name</label> <input class="form-control"
											type="text" name="lastname" value="${qc.get(0).lastname}">
									</div>
								</div>

								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label>Middle Name</label> <input class="form-control"
											type="text" name="middlename" value="${qc.get(0).middlename}">
									</div>
									<label>Gender</label>
									<div class="form-group">
										<label> <input type="radio" name="gender" value="M"
											<c:if test="${qc.get(0).gender=='M'}">checked</c:if>>Male
										</label> <label> <input type="radio" name="gender" value="F"
											<c:if test="${qc.get(0).gender=='F'}">checked</c:if>>Female
										</label>
									</div>

								</div>
							</div>
							<hr>

							<div class="col-md-12 col-sm-6 col-xs-12">

								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label>Address</label> <input class="form-control" type="text"
											name="address" value="${qc.get(0).address}">
									</div>
									<div class="form-group">
										<label>Mobile</label> <input class="form-control" type="text"
											name="mobile" value="${qc.get(0).mobile}">
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label>city</label> <input class="form-control" type="text"
											name="city" value="${qc.get(0).city}">
									</div>

									<div class="form-group">
										<label>E-mail</label> <input class="form-control" type="text"
											name="email" value="${qc.get(0).email}">
									</div>
								</div>
							</div>
							<hr>

							<div class="col-md-12 col-sm-6 col-xs-12">

								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<label>Level</label> <select class="form-control" name="level">
											<c:forEach items="School,Intermidiate,Bachelor,Masters"
												var="levelvalue">
												<c:choose>
													<c:when test="${qc.get(0).level==levelvalue}">
														<option selected="selected">${levelvalue}</option>>
                        							</c:when>
													<c:otherwise>
														<option>${levelvalue}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
								
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<label>Area</label> <select class="form-control" name="area">
											<c:forEach
												items="Account,Science,Engineering,It,Medical,Business,Hotel Management,Tourism,Education"
												var="areavalue">
												<c:choose>
													<c:when test="${qc.get(0).area==areavalue}">
														<option selected="selected">${areavalue}</option>>
                       								</c:when>
													<c:otherwise>
														<option>${areavalue}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<hr>
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
