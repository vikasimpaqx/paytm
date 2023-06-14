<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/png" href="https://www.citypng.com/public/uploads/preview/paytm-circle-logo-hd-png-11664329993zq3dvoml08.png">
    <title>Paytm Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .header h1 {
            margin: 0;
            font-size: 24px;
        }

        .header img {
            height: 30px;
            padding: 5px;
        }

        .dashboard-container {
            max-width: 800px;
            margin: 0 auto;
        }

        .dashboard-container .dashboard-logo {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .dashboard-container .dashboard-logo img {
            height: 50px;
            margin-right: 10px;
        }

        .dashboard-container .dashboard-nav {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .dashboard-container .dashboard-nav a {
            display: inline-block;
            color: #333;
            text-decoration: none;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #e6e6fa;
            transition: background-color 0.3s;
        }

        .dashboard-container .dashboard-nav a:hover {
            background-color: #ddd;
        }

        .dashboard-container .dashboard-nav .active {
            color: white;
            background-color: #26baee;
        }

        .dashboard-container .dashboard-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .dashboard-container .dashboard-content h2 {
            margin-top: 0;
        }

        .dashboard-container .dashboard-content img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        .dashboard-container .dashboard-content p {
            margin: 0;
            line-height: 1.5;
        }

        .logout-button {
            background-color: #26baee;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .logout-button:hover {
            background-color: #0e8ab1;
        }

        .search-bar {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar input[type="text"] {
            padding: 10px;
            font-size: 16px;
            flex: 1;
            border-radius: 5px;
            border: none;
        }

        .search-bar input[type="submit"] {
            background-color: #26baee;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <div class="dashboard-logo">
            <img src="https://logos-world.net/wp-content/uploads/2020/11/Paytm-Symbol.png" alt="Paytm Logo">
            <h1>Paytm</h1>
        </div>
        <div class="dashboard-nav">
            <a href="#" class="active">Home</a>
            <a href="readAccount">Account</a>
            <a href="mobilerecharge.jsp">Mobile Recharge</a>
            <a href="paybill.jsp">Pay Bills</a>
            <a href="printHistory">History</a>
            <a href="index.jsp" class="logout-button">Logout</a>
        </div>
        <div class="dashboard-content">
            <h2>Welcome, Vikas</h2>
            <div class="search-bar">
                <form action="searchAction">
                <input type="text" name="search" placeholder="Enter phone number to pay" required>
                <input type="submit" value="Search">
                </form>
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxnSTX2G8li4eypLRay5Nrthd1ME1MS6WaJg&usqp=CAU" alt="Loan Image">
            <p>India kahe paytm Karo</p>
            <p>paytm se upi. paytm karo!</p>
        </div>
    </div>
</body>

</html>
