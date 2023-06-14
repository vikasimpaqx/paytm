 <!-- <%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>paytm</title>
<link rel="icon" type="text/css" href="https://play-lh.googleusercontent.com/6_Qan3RBgpJUj0C2ct4l0rKKVdiJgF6vy0ctfWyQ7aN0lBjs78M-1cQUONQSVeo2jfs">
<style>
body {
	background-image:
		url("https://assetscdn1.paytm.com/images/catalog/category/5165/paytm_logo.png");
	background-repeat: no-repeat;
	/* Choose from 'repeat', 'repeat-x', 'repeat-y', or 'no-repeat' */
	background-size: 100% auto;
}

.div {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	margin-top: 100px;
}

.button button{
	width: 150px;
	height: 30px;
	background-color: purple;
	color: white;
	border: none;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</html> 

-->

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Paytm</title>
<link rel="icon" type="text/css" href="https://play-lh.googleusercontent.com/6_Qan3RBgpJUj0C2ct4l0rKKVdiJgF6vy0ctfWyQ7aN0lBjs78M-1cQUONQSVeo2jfs">
<style>
body {
	background-image:
		url("https://assetscdn1.paytm.com/images/catalog/category/5165/paytm_logo.png");
	background-repeat: no-repeat;
	background-size: 100% auto;
}

.div {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	margin-top: 100px;
}

.button button{
	width: 150px;
	height: 30px;
	background-color: #00bfff;
	color: #ffffff;
	border: none;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</head>
<body>
	<div class="div" style="text-align: center;">
	<h3>Paytm Karo!</h3>
		<!-- Content to be centered goes here -->
		<div class="button">
			<form action="login.jsp">
				<button>LOGIN</button>
			</form>
		</div>

		<div class="button">
			<form action="signup.jsp">
				<button>SIGN UP</button>
			</form>
		</div>
	</div>

</body>
</html>
