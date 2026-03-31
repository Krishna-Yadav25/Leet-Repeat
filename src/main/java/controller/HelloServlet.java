package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public HelloServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response type
        response.setContentType("text/html");

        // Get writer
        PrintWriter out = response.getWriter();

        // Output HTML
        out.println("<html>");
        out.println("<head><title>LeetRepeat</title></head>");
        out.println("<body>");
        out.println("<h1>Hello LeetRepeat 🚀</h1>");
        out.println("<p>Your servlet is working successfully!</p>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // For now just call doGet
        doGet(request, response);
    }
}

