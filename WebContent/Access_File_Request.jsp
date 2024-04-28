<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Com.Connection.*" %>
<%@page import="Dao.user"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Block Chain</title>
	<link rel="favicon" href="assets1/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets1/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets1/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets1/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" type="text/css" href="assets1/css/da-slider.css" />
	<link rel="stylesheet" href="assets1/css/style.css">
	<script src="assets1/js/html5shiv.js"></script>
	<script src="assets1/js/respond.min.js"></script>
</head>
<body>
	<div class="navbar navbar-inverse" style="background-color: black;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="https://pdf.sciencedirectassets.com/280203/1-s2.0-S1877050922X00100/1-s2.0-S187705092201239X/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHQaCXVzLWVhc3QtMSJHMEUCIQDewVnovT86Xen%2F5Lx2x8KFTc7O4BkjcKCkEyYh5Jj9mgIgf%2BqyLtww8bs7Z2dyfYqf8ZIZy22S1FocmihLW9%2FyOjwqvAUIrf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAFGgwwNTkwMDM1NDY4NjUiDFX0CdyFyKsBNbQQ8iqQBQlf%2FbXQaGrZUK2rmWUYqFzGIBXOEiFQJh9nKR6g7cCDMpc645v8vlHqBn9st1mA0l8x533WMs33tMTo3j%2FjFByNGQKbGFdTjtsFqUfWlWPOahlN6NDJsbL%2BSnsdXukkya3dANGZ4t9uDVVmfmSCO22OoosXrzatfIjFAlpWWYVC6wFwRiGkiQVJxzBxIJXXTIcnqT%2BFBSWPUHUn%2FHKuOLkq1nkeP93TfRtwmbb9FzBf%2F3yaQoIIuQroGGlFBdsBACguMx8y028ffZf0NWYC9zxaZP28rB5X%2FDSZWJDxEtHPRnrXdcEy5WW5r4dAmKOETFt%2BgiPLEhG5aM9AK2QBLCS3buS%2BXfaezpiMY49ODkI878KlTIrUNX5j5dM2SWcR9BKdj4cFiNA%2BnhdlDHo2cAo7y6UqLuWDTauO6%2FA0q%2F3UwkRYRdJA%2Ft4Ll014GrDqLI%2FBFtoEe5INe7Gj6f4TVDPO1BuYPkTDM1R%2Brslr%2FAvJsTO41LVcMBrUMlHZbsdLy6jbPbOzbAjrKV7wxhnVOUFg6HE%2FLQMb68gJ54xU4mhyp1Tw5NssUFNFU75h3re%2FBuPpNQFMcsqDdhiGA2li5xLkaLRNVXGC5vw89Gua5jUaH2ycRhblBISaq4MWStRJ1VlmG8Ac0y41dl%2FRX6NnUyRLEpvFx%2FGafelMlyhKtWw%2BjGlhCITJbbdad13Skzoelk2jUTfiOVgQCW%2B6dXHCGZ6qT5252Stau6ZTxnTJNAJSmWnf0%2B2iFyQhZPjrx7OP0rwV%2BJIohJnZXJD5p7hYw6ZhrhERjuMvYPHkbKX8ccU9%2BERLzB23lIScHCrWPguKB1xB3FQTTwAvzJN2HRDGngWkovUcB0%2BxqJQIo4QwbyPHMM%2BL9rAGOrEBxAjl872XrmEN5w4cVVN0E6clYg%2F4dLZC44huQTcA7P4Nfyw%2BNrpNJ7%2F6dJS7Fih22xhA4QPSS3xYuqAfpCqm8iyehsokAOAEZWRqrqerw8cAW8ukry6D2Ucag7qf41iXfPtGFdbw%2FwxZDX2DJmOb4nXbnI2W1ldfuWNoqyILU5wXIfc5D7VyfX56wOaLsXd4Eny%2BKMaUlqatVbq6nJoGDgBUYxZEM9BYOuWZXSX2WHHq&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240415T210822Z&X-Amz-SignedHeaders=host&X-Amz-Expires=299&X-Amz-Credential=ASIAQ3PHCVTY7VWTLYOW%2F20240415%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=cce31fd710f272b7512dfefd93ed89174ce51ef4fe7d0c50d51139fc69406793&hash=a048a185ba3c22ec533a6e059f06897376bd32fc9b19242191a73f76212f93db&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S187705092201239X&tid=spdf-18772e72-80cf-4895-84c3-d3aa2e854898&sid=47158e34907aa8427d8b3728ac4ccdbbfc13gxrqb&type=client&tsoh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&ua=13085d51530702575559&rr=874ee9192c36f3e9&cc=in">
				 
				<img src="./images/logoUser1.png" alt=""  style="   width: 29px; height: auto; margin-right:15px">
                    <span style="color: #ff6600;">Fuel A Dream</span>
                </a>
				</a>	
			</div>
			<div class="navbar-collapse collapse">
			<jsp:include page="authormenu.jsp"></jsp:include>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="headO">
		<div class="container">
			<div class="banner-content">
				
			</div>
		</div>
	</header>
	
	<!-- /Header -->


	<div id="courses">
		
	</div>
	<!-- container -->
	<section class="container">
		<div class="heading">
			<!-- Heading -->
			<h2>Our Fund Request (Admin) </h2>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="./images/login.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-8">
				<TABLE class="table table-bordered">
            <TR class="danger">            	
              <TH>ID</TH>
               <TH>User Name</TH>
               <TH>User Email-ID</TH>
               <TH>Donation Name</TH>
               <TH>Cost</TH>
               <TH>Process</TH>
               
            </TR>
<% 


	String query = "SELECT * FROM tbl_user_fund_info WHERE Status_Info = 'Pending'";
	
    Connection con=ConnectionFactory.getInstance().getConnection();
    Statement st=con.createStatement();
 
	ResultSet resultset=st.executeQuery(query);
	while(resultset.next())
	{
%>
 <TR>
                <TD> <%= resultset.getString(1) %></TD>
               <TD> <%= resultset.getString(2) %> </TD>
                 <TD> <%= resultset.getString(3) %></TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD> 
               <TD>
               <a href="Fund_info_Data?id=<%=resultset.getString(1)%>"><input type="button" name="sendkey" value="Accept" class="btn btn-primary" style="background-color: green; margin-right: 10px;">
               </a>
               <a href="AFund_Reject?id=<%=resultset.getString(1)%>"><input type="button" name="sendkey" value="Reject" class="btn btn-primary" style="background-color: red;"></a>
               
               </TD>
               </TR> 
               
<% 
   } 
		
%>
        </TABLE>

				
			</div>
		</div>
	</section>
	

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets1/js/modernizr-latest.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets1/js/jquery.cslider.js"></script>
	<script src="assets1/js/custom.js"></script>
</body>
</html>
