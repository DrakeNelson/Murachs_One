<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/16/2018
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation of Cookie Send</title>
</head>
<%
    // read form data
    String favLang = request.getParameter("favoriteLanguage");

    //create the cookie
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

    // set the life span ... total number of seconds
    theCookie.setMaxAge(60 * 60 * 24 * 365);

    //send the cookie to the browser
    response.addCookie(theCookie);
%>
<body>
Thanks! We set your favorite language to: ${param.favoriteLanguage}
<br/><br/>
<a href="cookiesHomepage.jsp">return to homepage.</a>
</body>
</html>
