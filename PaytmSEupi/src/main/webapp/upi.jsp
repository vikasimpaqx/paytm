<!--<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
  <title>UPI Page</title>
</head>
<body>
  <h1>UPI Page</h1>

  <%-- Display error messages --%>
  <s:if test="hasActionErrors()">
    <div style="color: red;">
      <s:actionerror/>
    </div>
  </s:if>

  <%-- Display success message --%>
  <s:if test="#session['paymentSuccess']">
    <h2>Payment Successful!</h2>
    <p>Thank you for your payment.</p>
  </s:if>

  <form action="validateUpiPinAction" method="POST">
    <label for="upiPin">Enter UPI PIN (6 digits):</label>
    <input type="password" name="upiPin" id="upiPin" required maxlength="6">
    <input type="submit" value="Submit">
  </form>
</body>
-->




<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css" href="https://entrackr.com/storage/2019/04/PAYTM-PAYMENT-BANK-1200x600.jpg">
<title>Paytm-UPI Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f1f1f1;
	padding: 20px;
}

.container {
	display: flex;
	justify-content: center;

	height: 50vh;
}

.box {
	background-color: #fff;
	border: 1px solid #ccc;
	padding: 40px;
	width: 400px;
	text-align: center;
}

h1 {
	color: #4285f4;
}

.error {
	color: red;
	margin-bottom: 10px;
}

.success {
	color: green;
	margin-bottom: 10px;
}

form {
	margin-top: 20px;
}

label {
	font-weight: bold;
}

input[type="password"] {
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	width: 95.5%;
	margin-bottom: 15px;
	margin-top: 10px;
}

input[type="submit"] {
	padding: 8px 16px;
	background-color: #4285f4;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="box">
			<h1>UPI Page</h1>

			<%-- Display error messages --%>
			<s:if test="hasActionErrors()">
				<div style="color: red;">
					<s:actionerror />
				</div>
			</s:if>

			<%-- Display success message --%>
			<s:if test="#session['paymentSuccess']">
				<h2 class="success">Payment Successful!</h2>
				<p>Thank you for your payment.</p>
			</s:if>

			<form action="validateUpiPinAction" method="POST">
				<label for="upiPin">Enter UPI PIN (6 digits):</label><br> <input
					type="password" name="upiPin" id="upiPin" required maxlength="6"><br>
				<input type="submit" value="Pay">
			</form>
			<form action="dashboard.jsp" method="POST">
				<input type="submit" value="cancel payment">
			</form>
		</div>
	</div>
</body>
</html>