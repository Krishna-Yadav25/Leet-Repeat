package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.net.*;
import org.json.JSONObject;

@WebServlet("/googleLogin")
public class GoogleLoginServlet extends HttpServlet {

    private final String CLIENT_ID = "YOUR_CLIENT_ID";
    private final String CLIENT_SECRET = "YOUR_CLIENT_SECRET";
    private final String REDIRECT_URI = "http://localhost:8080/LeetRepeat/googleLogin";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String code = request.getParameter("code");

        if (code == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            // 🔹 Step 1: Exchange code for token
            URL url = new URL("https://oauth2.googleapis.com/token");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            String params = "code=" + code +
                    "&client_id=" + CLIENT_ID +
                    "&client_secret=" + CLIENT_SECRET +
                    "&redirect_uri=" + REDIRECT_URI +
                    "&grant_type=authorization_code";

            OutputStream os = conn.getOutputStream();
            os.write(params.getBytes());
            os.flush();

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String output, result = "";

            while ((output = br.readLine()) != null) {
                result += output;
            }

            JSONObject json = new JSONObject(result);
            String accessToken = json.getString("access_token");

            // 🔹 Step 2: Get user info
            URL userInfoUrl = new URL(
                "https://www.googleapis.com/oauth2/v2/userinfo?access_token=" + accessToken
            );

            HttpURLConnection conn2 = (HttpURLConnection) userInfoUrl.openConnection();
            BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));

            String userInfo = "", line;
            while ((line = br2.readLine()) != null) {
                userInfo += line;
            }

            JSONObject userJson = new JSONObject(userInfo);

            String name = userJson.getString("name");
            String email = userJson.getString("email");

            // 🔥 Step 3: Session
            HttpSession session = request.getSession();
            session.setAttribute("username", name);
            session.setAttribute("email", email);

            // 🔥 Step 4: Redirect
            response.sendRedirect("dashboard.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }
    }
}