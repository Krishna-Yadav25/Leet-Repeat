<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register - LeetRepeat</title>

<!-- Tailwind CDN -->
<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="h-screen flex font-sans">

<!-- LEFT PANEL -->
<div class="w-1/2 bg-gradient-to-br from-teal-500 to-green-400 text-white flex flex-col justify-center items-center p-10">

    <div class="bg-white/20 backdrop-blur-md p-6 rounded-2xl shadow-lg mb-6 text-center">
        <h1 class="text-4xl font-bold mb-2">Join LeetRepeat 🚀</h1>
        <p class="text-sm opacity-90">
            Start your journey to mastering DSA and cracking interviews.
        </p>
    </div>

    <div class="mt-6 animate-pulse text-lg">
        📈 Track • 🔁 Revise • 🚀 Improve
    </div>

</div>

<!-- RIGHT PANEL -->
<div class="w-1/2 flex justify-center items-center bg-gray-50">

    <div class="bg-white shadow-2xl rounded-2xl p-8 w-96 transition hover:scale-105 duration-300">

        <h2 class="text-2xl font-semibold mb-6 text-center">Create Account ✨</h2>

        <form action="RegisterServlet" method="post" class="space-y-4">

            <!-- Username -->
            <div>
                <label class="text-sm text-gray-600">Username</label>
                <input type="text" name="username" required
                    class="w-full p-3 mt-1 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-400 transition">
            </div>

            <!-- Password -->
            <div class="relative">
                <label class="text-sm text-gray-600">Password</label>
                <input type="password" id="password" name="password" required
                    class="w-full p-3 mt-1 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-400 transition">
                
                <!-- Show/Hide -->
                <span onclick="togglePassword()" 
                      class="absolute right-3 top-10 cursor-pointer text-gray-500">
                      👁️
                </span>
            </div>

            <!-- LeetCode ID -->
            <div>
                <label class="text-sm text-gray-600">LeetCode ID</label>
                <input type="text" name="leetcode_id" required
                    class="w-full p-3 mt-1 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-400 transition">
            </div>

            <!-- Button -->
            <button type="submit"
                class="w-full bg-teal-500 hover:bg-teal-600 text-white p-3 rounded-lg font-semibold transition duration-300">
                Register
            </button>

        </form>

        <!-- Divider -->
        <div class="my-4 text-center text-gray-400">or</div>

        <!-- Social UI -->
        <a href="https://accounts.google.com/o/oauth2/v2/auth?client_id=1017860517752-mun7g79e2a8ncjiicqv5dglimqhbu7mj.apps.googleusercontent.com&redirect_uri=http://localhost:8080/LeetRepeat/googleLogin&response_type=code&scope=openid%20email%20profile&access_type=online&prompt=select_account">

    <button class="w-full border p-2 rounded-lg hover:bg-gray-100">
        <img src="https://www.svgrepo.com/show/475656/google-color.svg" class="w-5 h-5">  
        Continue with Google
    </button>
</a>

        <!-- Login -->
        <p class="text-center mt-4 text-sm">
            Already have an account?
            <a href="login.jsp" class="text-teal-600 font-semibold hover:underline">Login</a>
        </p>

    </div>

</div>

<!-- JS -->
<script>
function togglePassword() {
    let pass = document.getElementById("password");
    pass.type = pass.type === "password" ? "text" : "password";
}
</script>

</body>
</html>