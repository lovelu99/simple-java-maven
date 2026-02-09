package com.example.webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Example endpoint:
 *   GET /simple-webapp/hello?name=Ashequr
 */
@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    private final GreetingService greetingService = new GreetingService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain; charset=UTF-8");

        String name = req.getParameter("name");
        String message = greetingService.greet(name);

        resp.setStatus(HttpServletResponse.SC_OK);
        resp.getWriter().println(message);
    }
}
