<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css" href="https://w7.pngwing.com/pngs/305/719/png-transparent-paytm-ecommerce-shopping-social-icons-circular-color-icon-thumbnail.png">
  <title>Paytm-Payment Successful</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .box {
      background-color: #fff;
      border: 1px solid #ccc;
      padding: 40px;
      width: 400px;
      text-align: center;
    }

    h1 {
      color: green;
    }

    .success {
      color: #34a853;
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
    }

    p {
      margin-bottom: 20px;
    }

    .logo {
      width: 150px;
      height: 100px;
      margin-left: 50px;
    }

    .button-container {
      margin-top: 10px;
    }

    .button-container a {
      display: inline-block;
      padding: 8px 16px;
      background-color: #4285f4;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="box">
      <img class="logo" src="https://w7.pngwing.com/pngs/305/719/png-transparent-paytm-ecommerce-shopping-social-icons-circular-color-icon-thumbnail.png" alt="Paytm Logo">
      <h1>Payment Successful!</h1>
      <p>Thank you for your payment.</p>
      <div class="button-container">
        <a href="dashboard.jsp">Pay Again</a>
      </div>
    </div>
  </div>
  <div class="button">
			<form action="dashboard.jsp">
				<button>HOME</button>
			</form>
		</div>
</body>
</html>