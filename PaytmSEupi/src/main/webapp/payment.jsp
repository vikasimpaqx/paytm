<!--<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Searched Contact</title>
</head>
<body>
    <h1>Searched Contact</h1>
    <s:if test="contact != null">
    <s:property value="contact.mobileNO" />
    </s:if>
    <s:else>
        <p>Contact not found.</p>
    </s:else>
</body>
</html> -->

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="text/css" href="https://pixlok.com/wp-content/uploads/2021/02/Paytm-Cricle-Logo-PNG.jpg">
  <title>Paytm-Payment Page</title>
  <style>
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .chat-box {
      width: 300px;
      height: 400px;
      border: 1px solid #ddd;
      border-radius: 5px;
      overflow-y: scroll;
      padding: 10px;
      background-color: #f5f5f5;
                background: url("https://entrackr.com/storage/2019/04/PAYTM-PAYMENT-BANK-1200x600.jpg") no-repeat scroll right center;
      background-size: 100%;
    }

    .message-container {
      margin-bottom: 10px;
      
    }

    .sender-message {
      background-color: #DCF8C6;
      border-radius: 20px;
      padding: 8px 15px;
      display: inline-block;
      max-width: 80%;
      word-wrap: break-word;
      margin-right: 10px;
    }

    .receiver-message {
      background-color: #E2E4E6;
      border-radius: 20px;
      padding: 8px 15px;
      display: inline-block;
      max-width: 80%;
      word-wrap: break-word;
      margin-left: 10px;
    }

    .input-container {
      display: flex;
      align-items: center;
      margin-top: 10px;
    }

    .input-container input[type="text"] {
      width: 200px;
      padding: 8px 40px 8px 8px;
      border: 1px solid #ddd;
      border-radius: 5px;
      background: url("https://tse3.mm.bing.net/th?id=OIP.KLZG3wdiMmHbV1psmGuX3gHaHa&pid=Api&P=0&h=180") no-repeat scroll right center;
      background-size: 24px;
    }

    .input-container input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      padding: 8px 15px;
      margin-left: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Payment Page</h1>
    <div class="chat-box">
      <div class="message-container">
        <div class="sender-message">Hello, please enter your payment amount.</div>
      </div>
      <!-- Previous messages will be displayed here -->
    </div>
    <form action="pay" method="POST">
      <div class="input-container">
        <input type="text" name="amount" id="paymentText" placeholder="Enter payment amount" required="required">
        <input type="submit" value="Pay">
      </div>
    </form>
  </div>
</body>
</html>