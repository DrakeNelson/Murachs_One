<%--
  Created by IntelliJ IDEA.
  User: drake
  Date: 6/16/2018
  Time: 10:45 AM
  Before Starting this I did a good bit of research into setting up tomcat with IntelliJ it's pretty slick
  This is just practice before moving onto MVC, it's probably prudent to learn some more about JSP and Servlets before
  jumping into frameworks
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First Tests of JSP</title>
</head>
<body>
<style>
    th {
        font-weight: bold;
    }
    td {
        padding-left: 10px;
    }
    caption {
        text-align: left;
    }
</style>
<h1>Hello World of Java!</h1>
<!--
  Jsp Expression, Scriptlet, Declaration
  Expressions
-->
<table>
    <tr>
        <td><h3>jsp expressions &lt;%= %&gt; </h3></td>
        <td rowspan="3">
            <table style="margin-left: 20px">
                <caption ><h3>Built-In Server Objects</h3></caption>
                <thead>
                <tr>
                    <th>Object</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>request</td>
                    <td>Contains http request headers and form data</td>
                </tr>
                <tr>
                    <td>response</td>
                    <td>provides http support for sending response</td>
                </tr>
                <tr>
                    <td>out</td>
                    <td>jspwriter for including content in html page</td>
                </tr>
                <tr>
                    <td>session</td>
                    <td>unique session for each user of the web application</td>
                </tr>
                <tr>
                    <td>application</td>
                    <td>shared data for all users of the web application</td>
                </tr>
                </tbody>
            </table>
        </td>
        <td rowspan="5">
            <table class="w3-table-all notranslate">
                <tbody><tr>
                    <th>Result</th>
                    <th>Description</th>
                    <th>Entity Name</th>
                    <th>Entity Number</th>
                </tr>
                <tr>
                    <td style="height: 29px"></td>
                    <td style="height: 29px">non-breaking space</td>
                    <td style="height: 29px">&amp;nbsp;</td>
                    <td style="height: 29px">&amp;#160;</td>
                </tr>
                <tr>
                    <td>&lt;</td>
                    <td>less than</td>
                    <td>&amp;lt;</td>
                    <td>&amp;#60;</td>
                </tr>
                <tr>
                    <td>&gt;</td>
                    <td>greater than</td>
                    <td>&amp;gt;</td>
                    <td>&amp;#62;</td>
                </tr>
                <tr>
                    <td>&amp;</td>
                    <td>ampersand</td>
                    <td>&amp;amp;</td>
                    <td>&amp;#38;</td>
                </tr>
                <tr>
                    <td>"</td>
                    <td>double quotation mark </td>
                    <td>&amp;quot;</td>
                    <td>&amp;#34;</td>
                </tr>
                <tr>
                    <td>'</td>
                    <td>single quotation mark (apostrophe) </td>
                    <td>&amp;apos;</td>
                    <td>&amp;#39;</td>
                </tr>
                <tr>
                    <td>¢</td>
                    <td>cent</td>
                    <td>&amp;cent;</td>
                    <td>&amp;#162;</td>
                </tr>
                <tr>
                    <td>£</td>
                    <td>pound</td>
                    <td>&amp;pound;</td>
                    <td>&amp;#163;</td>
                </tr>
                <tr>
                    <td>¥</td>
                    <td>yen</td>
                    <td>&amp;yen;</td>
                    <td>&amp;#165;</td>
                </tr>
                <tr>
                    <td>€</td>
                    <td>euro</td>
                    <td>&amp;euro;</td>
                    <td>&amp;#8364;</td>
                </tr>
                <tr>
                    <td>©</td>
                    <td>copyright</td>
                    <td>&amp;copy;</td>
                    <td>&amp;#169;</td>
                </tr>
                <tr>
                    <td>®</td>
                    <td>registered trademark</td>
                    <td>&amp;reg;</td>
                    <td>&amp;#174;</td>
                </tr>
                <tr>
                    <td>$</td>
                    <td>Dollar Sign</td>
                    <td></td>
                    <td>&amp;#174;</td>
                </tr>
                </tbody></table>
        </td>
    </tr>
    <tr>
        <td>
            <p>
                The time on the server is <%= new java.util.Date() %>.<br/>
                String functions <%= "Hello World".toUpperCase()%><br/>
                25 multiplied by 4 is <%= 25 * 4 %><br/>
                Is 75 less than 69 <%= false %><br/>
            </p>
        </td>
    </tr>
    <tr>
        <td><h3>JSP Scriptlet &lt;% %&gt; </h3></td>
    </tr>
    <tr>
        <td>
            <p>Here is a jsp Scriptlet loop <br>
                <%
                    for (int i = 0; i < 5; i++) {
                        for (int j = 0; j < 5 - i; j++) {
                            //html entity for whitespace &#160;
                            out.print("&#160;");
                        }
                        for (int k = 0; k <= i; k++) {
                            out.print("$&#160;");
                        }
                        out.print("<br/>");
                    }
                %>
            </p>
        </td>
    </tr>
    <tr>
        <td><h3>Testing Broken Scriptlet &lt;% while(true) { %&gt; html &lt;%! } %&gt; </h3></td>
        <td><h3>JSP Built-In Objects</h3></td>
    </tr>
    <tr>
        <td><p>
            <%
                for (int i = 0; i < 5; i++) {
                    for (int j = 0; j < 5 - i; j++) {
                        //html entity for whitespace &#160;
                        out.print("&#160;");
                    }
                    for (int k = 0; k <= i; k++) {
                        out.print("$&#160;");
                    }
                    for (int j = 0; j < 5 - i; j++) {
                        //html entity for whitespace &#160;
                        out.print("&#160;&#160;");
                    }
            %>
            This BR tag is actually hardcoded HTML <br/>
            <%
                }
            %>
        </p>
        </td>
        <td>
            <p>
                Request user agent: <%= request.getHeader("User-Agent")%><br/>
                Request user agent: &lt;%= request.getHeader("User-Agent")%&gt;<br/><br/>
                Request language: <%= request.getLocale()%><br/>
                Request language: &lt;%= request.getLocale()%&gt;<br/>

            </p>
        </td>
    </tr>
    <tr>
        <td><h3>JSP Declaration &lt;%! %&gt;</h3></td>
    </tr>
    <tr>
        <td><%!
            private String makeItLower(String data) {
                return data.toLowerCase();
            }
        %>
            <p>Lower case "Hello World": <%= makeItLower("Hello World")%><br/>
                The text after the colon is returned from the method makeItLower declared in the &lt;%! tags </p>
        </td>
    </tr>
    <tr>
        <td><h3>JSP Calling Separate java class</h3></td>
    </tr>
    <tr>
        <td>
            <p>1. create java class: com.luv2code.Step1/FunUtils.java<br/>

            <span style="font-family: 'Courier New',monospace">package com.luv2code.Step1;<br/>
                <br/>
                public class FunUtils {<br/>
                &nbsp;&nbsp; public static String makeItLower(String data) {<br/>
                &nbsp;&nbsp; return data.toLowerCase();<br/>
                &nbsp;&nbsp; }<br/>
                } <br/>
            </span>
            </p>
            <p>2. Call the java class<br/>
                Lets have some fun: <%= com.luv2code.Step1.FunUtils.makeItLower("FUN FUN FUN")%><br/>
                Lets have some fun: &lt;%= com.luv2code.Step1.FunUtils.makeItLower("FUN FUN FUN")%&gt;<br/>
            </p>
            <p>
                This can be done with an import as well with the code<br/>
                &lt;%@ page import="com.luv2code.Step1.FunUtils" %&gt;
            </p>
        </td>
    </tr>


</table>

</body>
</html>
