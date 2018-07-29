<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/16/2018
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Home</title>
</head>
<body>
<!-- read the favorite programming language cookie -->
<%
    // the default ... if there are no cookies
    // the favLang variable is usable throughout this page with a basic expression
    String favLang = "Java";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    //find our favorite language cookei
    if (theCookies != null) {
        for (Cookie tempCookie : theCookies) {
            if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
                favLang = tempCookie.getValue();
                break;
            }
        }
    }
%>

<!-- now show a personalized page ... use the "favLang" variable -->
<h4>New Books for <%= favLang %>
</h4>
<ul>
    <li>blah</li>
    <li>blah</li>
    <li>blah</li>
</ul>

<h4>Latest News Reports For <%= favLang%>
</h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang%>
</h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>


<!-- hr is just a rule that separates portions of the page -->
<hr>
<a href="CookiesPersonalizeForm.html">Personalize This page</a>

</body>
</html>
