<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/CSS/main.css" type="text/css">
    <jsp:include page="/Resources/ReusableParts/DrakeNavHead.jsp"/>

</head>
<body>
<jsp:include page="/Resources/ReusableParts/DrakeNav.jsp"/>

<h1>Join our email list</h1>
<p>To join our email ist, enter your name and email address below.</p>
<form action="EmailListServlet" method="post">
    <input type="hidden" name="action" value="add">

    <label>Email:
        <input type="email" name="email" required>
    </label><br/>

    <label>First Name:
        <input type="text" name="firstName" required>
    </label><br/>

    <label>Last Name:
        <input type="text" name="lastName" required>
    </label><br/>

    <label>&nbsp;</label>
    <input type="submit" value="Join Now" id="submit">

</form>
</body>
</html>