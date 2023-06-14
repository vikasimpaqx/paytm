<!-- <%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>Google_pay-History</title>
</head>
<body>
  <h1>Recent transaction</h1>
  <table>
    <tr>
      <th>Transaction ID</th>
      <th>Mobile Number</th>
      <th>Amount</th>
      <th>Time</th>
    </tr>
    <s:iterator value="records">
      <tr>
        <td><s:property value="id"/></td>
        <td><s:property value="mobileNo"/></td>
        <td><s:property value="amount"/></td>
        <td><s:property value="currentTime"/></td>
      </tr>
    </s:iterator>
  </table>
</body>
</html> -->


<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>paytm - History</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 12px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #e2e2e2;
}

.button {
	margin-top: 20px;
}

.button button {
	padding: 10px 20px;
	background-color: #4CAF50;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

.button button:hover {
	background-color: #45a049;
}

h1 {
	text-align: center;
	margin-top: 30px;
}

p {
	text-align: center;
	margin-top: 20px;
	font-size: 14px;
	color: #888;
}

</style>
</head>
<body>
	<h1>Recent Transactions</h1>
	<table>
		<tr>
			<th>Transaction ID</th>
			<th>Mobile Number</th>
			<th>Time</th>
			<th>Amount</th>
		</tr>
		<s:iterator value="records">
			<tr>
				<td><s:property value="id" /></td>
				<td><s:property value="mobileNo" /></td>
				<td><s:property value="time" /></td>
				<td><s:property value="amount" /></td>
			</tr>
		</s:iterator>
	</table>
	<div class="button">
		<form action="dashboard.jsp">
			<button>HOME</button>
		</form>
	</div>
</body>
</html>
