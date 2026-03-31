package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DBConnection;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String leetcodeId = request.getParameter("leetcode_id");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users (username, password, leetcode_id) VALUES (?, ?, ?)"
            );

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, leetcodeId);

            int i = ps.executeUpdate();

            if (i > 0) {
                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().println("Registration Failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}