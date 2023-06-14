<!DOCTYPE html>
<html>
<head>
    <title>Mobile Recharge</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        h1 {
            color: #333333;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 5px;
            padding: 20px;
            margin-top: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .form-input {
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 3px;
            width: 200px;
        }

        .form-button {
            padding: 8px 16px;
            background-color: #4caf50;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Pay bills</h1>

    <div class="form-container">
        <form action="upi.jsp" method="post">
            <div class="form-label">Mobile Number:</div>
            <input type="text" name="mobileNumber" class="form-input" required /><br><br>

            <div class="form-label">Amount:</div>
            <input type="text" name="amount" class="form-input" required /><br><br>

            <input type="submit" value="Recharge" class="form-button" />
        </form>
    </div>
</body>
</html>
