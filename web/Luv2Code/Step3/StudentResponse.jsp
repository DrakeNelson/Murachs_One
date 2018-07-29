<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/16/2018
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>
<h1>Student Response JSP</h1>
The student is confirmed: <br/>
note there are two ways of calling this data
<br/><br/>
<!-- basic input passed into Step1 file -->
&lt;%= request.getParameter("firstName")%&gt; &lt;%= request.getParameter("lastName")%&gt;<br/>
<%= request.getParameter("firstName")%> <%= request.getParameter("lastName")%>
<br/><br/>
and
<br/><br/>
&#36;{param.firstName} &#36;{param.lastName}<br/>
${param.firstName} ${param.lastName}<br/>
<br/><br/>
<!-- result from dropdown works just like input -->
The student's country: ${param.Country}
<br/><br/>
<!-- result from radio button works just like input -->
Favorite Programming language is: ${param.favoriteLangRB}
<br/><br/>
<!-- checkboxes have to loop after building an array -->
Known Programming Languages:<br/>
<ul>
    <%
        String[] langs = request.getParameterValues("favoriteLangCB");
        for (String s : langs) {
            out.print("<li>" + s + "</li>");
        }
    %>
</ul>
<br/><br/>

</body>
</html>
