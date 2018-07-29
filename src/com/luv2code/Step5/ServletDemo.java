package com.luv2code.Step5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletDemo")
public class ServletDemo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    //constructor is unnecessary but here it is just calling the HttpServlet
    //IntelliJ doesn't even bother adding this in but it can be useful to do stuff when it's generated
    public ServletDemo() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // auto generated method stub
        //doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Step 1: set content type
        response.setContentType("text/html");

        //Step 2: get the printwriter
        PrintWriter out = response.getWriter();

        //Step 3:  generate html content
        out.println("<html<body>");

        out.println("<h2>Hello World</h2>");
        out.println("hr");
        out.println("Time on the server is: " + new java.util.Date());

        out.println("</body></body>");

        // auto generated method stub keeping it in here because i like the shorthand
        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }
}
