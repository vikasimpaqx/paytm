 <!-- <%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
</head> <body>
    <h1>Account Data</h1>

    

    
       <ul>
        <s:iterator value="user">
            <li><s:property value="userName"/></li>
            <li><s:property value="mobileNo"/></li>
            <li><s:property value="password"/></li>
        </s:iterator>
    </ul>
       
    <s:else>
        <p>No accounts found.</p>
    </s:else>
    
</body> 

</html> -->

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }

        .user-info {
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

        .user-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .user-mobileNo {
            color: #888;
            margin-bottom: 5px;
        }

        .user-password {
            font-style: italic;
            color: #888;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <div class="user-info">
        <h1>User Details</h1>
        <s:iterator value="user">
            <div class="form-group">
                <label>User Name:</label>
                <div class="user-name"><s:property value="userName"/></div>
            </div>
            <div class="form-group">
                <label>Mobile No:</label>
                <div class="user-mobileNo"><s:property value="mobileNo"/></div>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <div class="user-password"><s:property value="password"/></div>
            </div>
        </s:iterator>
        
        <a href="login.jsp">login</a>
        
        
    </div>
    
    
    
</body>
</html>






