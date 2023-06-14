<%@ taglib prefix="s" uri="/struts-tags"%>
  
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css" href="https://pixlok.com/wp-content/uploads/2021/02/Paytm-Cricle-Logo-PNG.jpg">
<title>Sign Up</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
}

.container {
	max-width: 400px;
	margin: 70px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: blue;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
	width: 95.5%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.error-message {
	color: red;
}

.submit-button {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>

<script>
	function validateForm() {
		var username = document.getElementById("userName").value;
		var mobileNo = document.getElementById("mobileNo").value;
		var password = document.getElementById("password").value;
		var usernamePattern = /[a-zA-Z]/;
		var mobileNoPattern = /^\d{10}$/;

		if (!usernamePattern.test(username)) {
			alert("Username must contain at least one alphabet.");
			return false;
		}

		if (!mobileNoPattern.test(mobileNo)) {
			alert("Mobile number must be a 10-digit numeric value.");
			return false;
		}

		if (password.length <= 5) {
			alert("Password must be greater than 6 characters.");
			return false;
		}
	}

	function showSuccessMessage() {
		var successMessage = document.getElementById("successMessage");
		successMessage.style.display = "block";
	}
</script>


</head>
<body>
	<div class="container">
		<h1>Sign Up</h1>
		<s:form action="signup" theme="simple"
			onsubmit="return validateForm();">
			<div class="form-group">
				<label for="userName">Username</label>
				<s:textfield name="user.userName" id="userName" />
				<s:fielderror fieldName="user.userName" cssClass="error-message" />
			</div>
			<div class="form-group">
				<label for="mobileNo">Mobile No</label>
				<s:textfield name="user.mobileNo" id="mobileNo" />
				<s:fielderror fieldName="user.mobileNo" cssClass="error-message" />
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<s:password name="user.password" id="password" />
				<s:fielderror fieldName="user.password" cssClass="error-message" />
			</div>
			<div class="form-group">
				<s:submit value="Sign Up" cssClass="submit-button" />
			</div>
		</s:form>

		<div id="successMessage" style="display: none;">
			<p>Sign up successful!</p>
			<s:else>
			<p>Mobile Number is already Registered</p>
			</s:else>
		</div>

	</div>
</body>
</html>
