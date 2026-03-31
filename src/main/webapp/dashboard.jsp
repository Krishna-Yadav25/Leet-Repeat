<%@ page contentType="text/html;charset=UTF-8" %>
<%
String user = (String) session.getAttribute("user");

if (user == null) {
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - LeetRepeat</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f1f5f9;
}

/* Sidebar */
.sidebar {
    width: 220px;
    height: 100vh;
    background: #0f172a;
    color: white;
    position: fixed;
    transition: 0.3s;
    padding-top: 20px;
}

.sidebar h2 {
    text-align: center;
}

.sidebar a {
    display: block;
    padding: 12px;
    color: white;
    text-decoration: none;
}

.sidebar a:hover {
    background: #1e293b;
}

/* Toggle Button */
.toggle-btn {
    position: absolute;
    left: 230px;
    top: 20px;
    cursor: pointer;
}

/* Main */
.main {
    margin-left: 230px;
    padding: 20px;
    transition: 0.3s;
}

/* Header */
.header {
    background: white;
    padding: 15px;
    border-radius: 10px;
    display: flex;
    justify-content: space-between;
}

/* Cards */
.cards {
    display: flex;
    gap: 20px;
    margin-top: 20px;
}

.card {
    flex: 1;
    background: white;
    padding: 20px;
    border-radius: 10px;
    transition: 0.3s;
    cursor: pointer;
}

.card:hover {
    transform: scale(1.05);
}

/* Logout */
.logout-btn {
    background: red;
    color: white;
    border: none;
    padding: 8px 15px;
    cursor: pointer;
    border-radius: 5px;
}
</style>

</head>

<body>

<!-- Sidebar -->
<div class="sidebar" id="sidebar">
    <h2>LeetRepeat 🚀</h2>
    <a href="#">Dashboard</a>
    <a href="#">Progress</a>
    <a href="#">Reminders</a>
</div>

<!-- Main -->
<div class="main" id="main">

    <!-- Header -->
    <div class="header">
        <h3 id="greeting"></h3>

        <div>
            <span id="clock"></span>

            <form action="LogoutServlet" method="post" style="display:inline;">
                <button class="logout-btn">Logout</button>
            </form>
        </div>
    </div>

    <!-- Cards -->
    <div class="cards">
        <div class="card" onclick="alert('Track your solved problems!')">
            <h3>📊 Progress</h3>
            <p>View your solved questions</p>
        </div>

        <div class="card" onclick="alert('Set your reminders!')">
            <h3>⏰ Reminders</h3>
            <p>Revise problems weekly</p>
        </div>

        <div class="card" onclick="alert('Keep going!')">
            <h3>🔥 Motivation</h3>
            <p>Stay consistent daily</p>
        </div>
    </div>

</div>

<script>
// Dynamic Greeting
let hour = new Date().getHours();
let greetingText = "Hello";

if (hour < 12) greetingText = "Good Morning ☀️";
else if (hour < 18) greetingText = "Good Afternoon 🌤️";
else greetingText = "Good Evening 🌙";

document.getElementById("greeting").innerText = greetingText + ", <%= user %> 👋";

// Live Clock
setInterval(() => {
    let time = new Date().toLocaleTimeString();
    document.getElementById("clock").innerText = time;
}, 1000);
</script>

</body>
</html>