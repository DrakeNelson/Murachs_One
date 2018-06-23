package com.Drake.Servlets.Section1.Chapter2;

import com.Drake.DataAccess.Section1.Chapter2.UserDB;
import com.Drake.business.Section1.Chapter2.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class EmailListServlet extends HttpServlet {

    //handle post operations to EmailListServlet
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.html";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";//default action join stops the event ** join seems to be a conventional end thread symbol **
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/Section1/Chapter2/index.html";
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object aqnd save User object in database
            User user = new User(firstName, lastName, email);
            if (UserDB.insert(user)) {
                // set User object in request object and set url
                request.setAttribute("user", user);
                url = "/Section1/Chapter2/thanks.jsp"; // the "thanks page"
            } else {
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Backend Error Has Occurred in UserDB');");
                out.println("location='index.jsp';");
                out.println("</script>");
            }


        }

        //forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    //handle HTTP requests that use the GET method
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        //because it is calling the post the get requests to this servlet
        //perform the same operations as the post requests
        doPost(request, response);
    }
}