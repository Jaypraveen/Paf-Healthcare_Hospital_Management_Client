<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Hospital"%>
<%@ page import="com.HospitalAPI"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hospital Management </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./Components/Hospital.js"></script>
<style type="text/css">
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 90%;
	margin-left: auto;
	margin-right: auto;	
	border: 1px;
	border-radius: 6px;
}

td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}


th {
	border: 1px solid #dddddd;	
	background-color: #D5DBDB;
	text-align: left;
	padding: 10px;
}
</style>
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" id="formHospital"
				name="formHospital" method="post" action="Hospital_Insert.jsp">
				<span class="contact100-form-title"> Hospital Registation </span> <label
					class="label-input100" for="email">Hospital Name</label>
				<div class="wrap-input100 validate-input">
					<input class="input100" id="hosName" name="hosName" type="text"
						required> <span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="email">Contact No</label>
				<div class="wrap-input100 validate-input">
					<input class="input100" id="hosTelNo" name="hosTelNo" type="text"
						placeholder="0xxxxxxxxx" maxlength="10" pattern="^\d{10}$"
						class="form-control form-control-sm" required> <span
						class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Address</label>
				<div class="wrap-input100">
					<input class="input100" id="hosAddress" name="hosAddress"
						type="text" class="form-control form-control-sm" require>
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="email">E-mail</label>
				<div class="wrap-input100 validate-input">
					<input class="input100" id="hosEmail" name="hosEmail" type="text"
						class="form-control form-control-sm" required> <span
						class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidHospitalIDSave" name="hidHospitalIDSave" value="">

				</div>
				<div id="alertSuccess" class="alert alert-success"
					style="margin-left: 144px;"></div>
				<div id="alertError" class="alert alert-danger"
					style="margin-left: 144px;"></div>
			</form>

			<div class="contact100-more flex-col-c-m"
				style="background-image: url('images/img1.jpg');"></div>
		</div>


		<div id="divItemsGrid" style="margin-top: 30px;">
			<%
			Hospital h1 = new Hospital();
			out.print(h1.readHospital());
		%>
		</div>

	</div>

	</div>



	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>
