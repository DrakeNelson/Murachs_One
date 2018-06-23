<jsp:useBean id="user" scope="request" type="com.Drake.business.Section1.Chapter2.User"/>
<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/22/2018
  Time: 9:02 PM
   //git test
      mutlibranch intellij git testing seems to be working well
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1> Thanks for Joining our email list</h1>
<p> here is the information that you entered:</p>
<label>Email:</label>
<span>${user.email}</span><br/>
<label>First Name:</label>
<span>${user.firstName}</span><br/>
<label>Last Name:</label>
<span>${user.lastName}</span><br/>
<p>To enter another email address, click the Back button in your browser or the return button shown below.</p>
<form action="" method="get">
    <input type="hidden" name="action" value="join"/>
    <input type="submit" value="Return">
</form>
</body>
</html>
