<!-- accountForm.jsp 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Account Form</title>
</head>
<body>
	<h1>Account Form</h1>

	<s:form action="account" method="post">
		<s:textfield label="Mobile No" name="account.mobileNo" />
		<s:textfield label="Bank Name" name="account.bankName" />
		<s:textfield label="Account No" name="account.accountNo" />
		<s:textfield label="IFSC Code" name="account.ifscCode" />
		<s:textfield label="Branch" name="account.branch" />
		<s:textfield label="UPI" name="account.upi" />
		<s:textfield label="CUPI" name="account.cupi" />

		<s:if test=""></s:if>
		<s:submit value="Submit" />
	</s:form>
</body>
</html>-->




<!-- accountForm.jsp 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Account Form</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f1f1f1;
}

h1 {
  color: #333;
  text-align: center;
}

form {
  margin: 20px;
  width: 400px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"] {
  width: 200%;
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

input[type="submit"] {
  display: block;
  width: 171%;
  padding: 12px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}
</style>
</head>
<body>
  <h1>Account Form</h1>

  <div style="text-align: left;">
    <s:form action="account" method="post">
      <s:textfield label="Mobile No" name="account.mobileNo" />
      <s:textfield label="Bank Name" name="account.bankName" />
      <s:textfield label="Account No" name="account.accountNo" />
      <s:textfield label="IFSC Code" name="account.ifscCode" />
      <s:textfield label="Branch" name="account.branch" />
      <s:textfield label="UPI" name="account.upi" />
      <s:textfield label="CUPI" name="account.cupi" />

      <s:if test=""></s:if>
      <s:submit value="Submit" />
    </s:form>
  </div>
</body>
</html> -->




<!-- accountForm.jsp -->
<!-- accountForm.jsp 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Account Form</title>
</head>
<body>
	<h1>Account Form</h1>

	<s:form action="account" method="post">
		<s:textfield label="Mobile No" name="account.mobileNo" />
		<s:textfield label="Bank Name" name="account.bankName" />
		<s:textfield label="Account No" name="account.accountNo" />
		<s:textfield label="IFSC Code" name="account.ifscCode" />
		<s:textfield label="Branch" name="account.branch" />
		<s:textfield label="UPI" name="account.upi" />
		<s:textfield label="CUPI" name="account.cupi" />

		<s:if test=""></s:if>
		<s:submit value="Submit" />
	</s:form>
</body>
</html>-->


<!-- accountForm.jsp -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css"
	href="https://img.icons8.com/?size=2x&id=17949&format=png">
<title>Google_Pay-Account Form</title>
<style>
nav {
	background-color: #e6e6fa; /* Light purple color */
	overflow: hidden;
	position: sticky;
	top: 0;
	width: 100%;
}

nav a {
	display: inline-block;
	color: #333;
	text-align: right;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
	vertical-align: middle;
}

nav img {
	height: 30px;
	margin-right: 10px;
}

nav a:hover {
	background-color: #ddd;
}

nav .active {
	color: white;
	margin-left: 920px
}

body {
	font-family: Arial, sans-serif;
	background-color: #f1f1f1;
}

h1 {
	color: #333;
}

form {
	margin: 20px;
	width: 400px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"] {
	width: 200%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	display: block;
	width: 171%;
	padding: 12px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.error-message {
	color: red;
	margin-top: 5px;
}
</style>
<script>
	function validateForm() {
		var mobileNoField = document.getElementById("mobileNo");
		var upiField = document.getElementById("upi");
		var cupiField = document.getElementById("cupi");
		var accountNoField = document.getElementById("accountNo");
		var bankNameField = document.getElementById("bankName");
		var branchField = document.getElementById("branch");
		var errorMessage = document.getElementById("error-message");

		if (mobileNoField.value.length !== 10 || isNaN(mobileNoField.value)) {
			errorMessage.innerHTML = "Mobile number should be a 10-digit number.";
			errorMessage.style.display = "block";
			return false;
		}

		if (upiField.value.length !== 6 || isNaN(upiField.value)) {
			errorMessage.innerHTML = "UPI should be a 6-digit number.";
			errorMessage.style.display = "block";
			return false;
		}

		if (upiField.value !== cupiField.value) {
			errorMessage.innerHTML = "UPI and CUPI must be the same.";
			errorMessage.style.display = "block";
			return false;
		}

		if (accountNoField.value.length <= 10 || isNaN(accountNoField.value)) {
			errorMessage.innerHTML = "Account number should be a numerical value with length greater than or equle to 11.";
			errorMessage.style.display = "block";
			return false;
		}

		var bankNameRegex = /^[A-Za-z]+$/;
		if (!bankNameRegex.test(bankNameField.value)) {
			errorMessage.innerHTML = "Bank name should contain only alphabetical characters.";
			errorMessage.style.display = "block";
			return false;
		}

		var branchRegex = /^[A-Za-z]+$/;
		if (!branchRegex.test(branchField.value)) {
			errorMessage.innerHTML = "Branch name should contain only alphabetical characters.";
			errorMessage.style.display = "block";
			return false;
		}

		errorMessage.style.display = "none";
		return true;
	}
</script>
</head>
<body>

	<!-- <nav>
		<a href="#" class=""><img
			src="https://fazilpay.com/wp-content/uploads/2021/02/google-pay-logo-1024x224.png"
			alt="Google Pay Logo"></a> <a href="dashboard.jsp" class="active"><img
			src="https://www.freepnglogos.com/uploads/logo-home-png/photo-icon-home-logo-23.png"
			alt="Home Page Logo"></a> <a href="index.jsp" class="logout-button">Logout</a>
	</nav> -->

	<h1>Fill the details of Account</h1>

	<div style="text-align: left;">
		<s:form action="account" method="post"
			onsubmit="return validateForm()">
			<s:textfield label="Mobile No" id="mobileNo" name="account.mobileNo"
				required="true" pattern="[0-9]{10}"
				title="Mobile number should be a 10-digit number." />
			<s:textfield label="Bank Name" id="bankName" name="account.bankName"
				required="true" />
			<s:textfield label="Account No" id="accountNo"
				name="account.accountNo" required="true" pattern="[0-9]+"
				title="Account number should be a numerical value." />
			<s:textfield label="IFSC Code" name="account.ifscCode"
				required="true" />
			<s:textfield label="Branch" id="branch" name="account.branch"
				required="true" />

			<s:textfield label="UPI" id="upi" name="account.upi" required="true"
				pattern="[0-9]{6}" title="UPI should be a 6-digit number." />
			<s:textfield label="CUPI" id="cupi" name="account.cupi"
				required="true" />

			<div class="error-message" id="error-message" style="display: none;"></div>

			<s:if test=""></s:if>
			<s:submit value="Submit" />
		</s:form>
	</div>
</body>
</html>