<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/21/2018
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Murach's Java Servlets and JSP</title>
</head>
<body>
<h1>Murach's Java Servlets and JSP</h1>
<p>I am using this page to index all of the practice work I do with this book.</p>
<p>Rather than creating a bunch of individual webapps while working through this tutorial, <br/> I am creating this one
    project to index everything.</p>
<hr/>
<table>
    <tr>
        <td><h2>Section 1</h2></td>
        <td>
            <table class="sectionTable">
                <tr>
                    <td>
                        <h3>Chapter 2 Example</h3>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/Section1/Chapter2/">How to structure a web application with the MVC pattern</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td><h2>Section 2</h2></td>
        <td>
            <table class="sectionTable">
                <tr>
                    <td>
                        <h3>Chapter 1 ?</h3>
                    </td>
                    <td>
                        <a href="http://www.google.com">google placeholder</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</body>
</html>
