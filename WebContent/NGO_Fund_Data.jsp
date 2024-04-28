<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="Com.Connection.*"%>
<%@page import="Dao.user"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Block Chain</title>
<link rel="favicon" href="assets1/images/favicon.png">
<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="assets1/css/bootstrap.min.css">
<link rel="stylesheet" href="assets1/css/font-awesome.min.css">
<link rel="stylesheet" href="assets1/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="assets1/css/da-slider.css" />
<link rel="stylesheet" href="assets1/css/style.css">
<script src="assets1/js/html5shiv.js"></script>
<script src="assets1/js/respond.min.js"></script>
</head>
<body>
	<div class="navbar navbar-inverse" style="background-color: black;">
		<div class="container" align="right">

			<div class="navbar-collapse collapse" align="right">
				<ul class="nav navbar-nav">
					<li><a class="navbar-brand" href="Index.jsp">
							<h4>Block Chain</h4>
					</a></li>

				</ul>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right mainNav">

						<jsp:include page="O_menu.jsp"></jsp:include>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="headO1">
		<div class="container">
			<div class="banner-content"></div>
		</div>
	</header>
	<!-- /Header -->


	<div id="courses"></div>
	<!-- container -->
	<section class="container">
		<br>
		<div class="row">
			<div class="col-md-4">
				<img src="./images/login.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-8">
				<div>
					<div>
						<div class="panel panel-primary">
							<div class="panel-heading" align="center" style="width: 80%">Funding
								Information</div>
							<br />
<%
							    String fundname=(String)session.getAttribute("role");
%>
							<form class="form-light mt-20" action="Add_Fund"
								method="post">


								<table border="1" width=80%>
									<tr>
										<td>Fund Name</td>
										<td>
										
											<input type="text" class="form-control"
											name="fund_name" placeholder="Enter Funding Name"  required>
										</td>
									</tr>
									
									<tr>
    <td>Due Date</td>
    <td>
        <input type="date" class="form-control" name="due_date" required>
    </td>
</tr>
									
									<tr>
										<td>Cost</td>

										<td><input type="text" class="form-control"
											name="fund_cost" placeholder="Enter Cost" required></td>
									</tr>

									<tr>

										<td colspan="2" align="center"><input type="submit"
											class="btn btn-two" value="Next"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		</div>
	</section>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets1/js/modernizr-latest.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets1/js/jquery.cslider.js"></script>
	<script src="assets1/js/custom.js"></script>
</body>
</html>