<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<html>
<head>
<link rel="icon" type="text/css" href="https://pixlok.com/wp-content/uploads/2021/02/Paytm-Cricle-Logo-PNG.jpg">
    <title>Google_Pay-Account Data</title>
    <style>
        .account-box {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            color: #333;
            font-family: Arial, sans-serif;
            background-image: url("path/to/background-image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .account-box .account-info {
            position: relative;
            z-index: 1;
        }

        .account-box .account-info div {
            margin-bottom: 5px;
        }

        .delete-button {
            float: right;
            margin-top: -10px;
            margin-right: -10px;
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: #cc0000;
        }

        .add-account-button {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Account Data</h1>

    

    <s:if test="accounts != null && !accounts.isEmpty()">
        <s:iterator value="accounts">
            <div class="account-box">
                <div class="account-info">
                    <div>Mobile No: <s:property value="mobileNo" /></div>
                    <div>Bank Name: <s:property value="bankName" /></div>
                    <div>Account No: <s:property value="accountNo" /></div>
                    <div>IFSC Code: <s:property value="ifscCode" /></div>
                    <div>Branch: <s:property value="branch" /></div>
                </div>
                <form action="deleteAccount" method="post">
                    <input type="hidden" name="accountId" value="<s:property value='id' />" />
                    <input type="submit" value="Delete" class="delete-button" />
                </form>
            </div>
        </s:iterator>
    </s:if>
    <s:else>
        <p>No accounts found.</p>
    </s:else>
    <a href="accountForm.jsp" class="add-account-button">Add Account</a>
</body>
</html> -->

<%@ taglib prefix="s" uri="/struts-tags"%> 

<html>
<head>
    <link rel="icon" type="text/css" href="https://pixlok.com/wp-content/uploads/2021/02/Paytm-Cricle-Logo-PNG.jpg">
    <title>Google_Pay-Account Data</title>
    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("path/to/background-image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        .account-box {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            color: #333;
            font-family: Arial, sans-serif;
            position: relative;
        }

        .account-box .account-info {
            position: relative;
            z-index: 1;
        }

        .account-box .account-info div {
            margin-bottom: 5px;
        }

        .delete-button {
            float: right;
            margin-top: -10px;
            margin-right: -10px;
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: #cc0000;
        }

        .add-account-button {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div>
            <h1>Account Data</h1>

            <s:if test="accounts != null && !accounts.isEmpty()">
                <s:iterator value="accounts">
                    <div class="account-box">
                        <div class="account-info">
                            <div>Mobile No: <s:property value="mobileNo" /></div>
                            <div>Bank Name: <s:property value="bankName" /></div>
                            <div>Account No: <s:property value="accountNo" /></div>
                            <div>IFSC Code: <s:property value="ifscCode" /></div>
                            <div>Branch: <s:property value="branch" /></div>
                        </div>
                        <form action="deleteAccount" method="post">
                            <input type="hidden" name="accountId" value="<s:property value='id' />" />
                            <input type="submit" value="Delete" class="delete-button" />
                        </form>
                    </div>
                </s:iterator>
            </s:if>
            <s:else>
                <p>No accounts found.</p>
            </s:else>
            <a href="accountForm.jsp" class="add-account-button">Add Account</a>
        </div>
    </div>
</body>
</html>
