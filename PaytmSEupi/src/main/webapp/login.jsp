<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css" href="https://pixlok.com/wp-content/uploads/2021/02/Paytm-Cricle-Logo-PNG.jpg">
    <title>paytm-Login</title>
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

        input[type="text"],
        input[type="password"] {
            width: 95.5%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .error-message {
            color: red;
        }
        .forgot a {
        margin-right: 110px;
        text-decoration: none;
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
            var mobileNo = document.getElementById("mobileNo").value;
            var password = document.getElementById("password").value;
            
            if (mobileNo.trim() === "") {
                alert("Mobile number is required.");
                return false;
            }
            
            if (password.trim() === "") {
                alert("Password is required.");
                return false;
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <s:form action="login" onsubmit="return validateForm();" method="post" theme="simple">
            <div class="form-group">
                <label for="mobileNo">Mobile No</label>
                <s:textfield id="mobileNo" name="user.mobileNo" cssClass="input-field" />
                <s:fielderror fieldName="user.mobileNo" cssClass="error-message" />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <s:password id="password" name="user.password" cssClass="input-field" />
                <s:fielderror fieldName="user.password" cssClass="error-message" />
            </div>
            <div class="form-group">
                <s:submit value="Login" cssClass="submit-button" />
            </div>
            
            <s:actionerror cssClass="error-message" />
        </s:form>
       
		<div class="forgot">
           <a href="signup.jsp">Sign up</a>
           <a id="1" href="forgetpasswordlogin.jsp">forgotPassword?</a>
      </div>

		
    </div>
</body>
</html>