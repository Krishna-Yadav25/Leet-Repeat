<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - LeetRepeat</title>

<!-- Tailwind CDN -->
<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="h-screen flex font-sans">

<!-- LEFT SIDE -->
<div class="w-1/2 bg-gradient-to-br from-teal-500 to-green-400 text-white flex flex-col justify-center items-center p-10">

    <!-- BRAND -->
    <h1 class="text-5xl font-extrabold mb-4 tracking-wide">
        LeetRepeat 🚀
    </h1>

    <p class="text-lg opacity-90 text-center max-w-md mb-8">
        Master DSA with consistency. Track your progress and never forget what you learn.
    </p>

    <!-- CARD -->
    <div class="bg-white/20 backdrop-blur-md p-6 rounded-2xl shadow-lg text-center">
        <h2 class="text-2xl font-semibold mb-2">Welcome Back 👋</h2>
        <p class="text-sm opacity-90">
            Continue your journey with LeetRepeat
        </p>
    </div>

    <!-- TIP -->
    <div class="mt-6 text-lg animate-pulse">
        💡 Solve 1 problem daily
    </div>

</div>

<!-- RIGHT SIDE -->
<div class="w-1/2 flex justify-center items-center bg-gray-50">

    <div class="bg-white shadow-2xl rounded-2xl p-8 w-96 border border-gray-100">

        <!-- BRAND TITLE -->
        <div class="text-center mb-6">
            <h1 class="text-3xl font-bold text-teal-600">LeetRepeat 🚀</h1>
            <p class="text-sm text-gray-500">Login to your account</p>
        </div>

        <!-- FORM -->
        <form action="LoginServlet" method="post" class="space-y-4">

            <!-- Username -->
            <div>
                <label class="text-sm text-gray-600">Username</label>
                <input type="text" name="username" required
                    class="w-full p-3 mt-1 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-400 transition">
            </div>

            <!-- Password -->
            <div>
                <label class="text-sm text-gray-600">Password</label>
                <input type="password" name="password" required
                    class="w-full p-3 mt-1 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-400 transition">
            </div>

            <!-- Remember + Forgot -->
            <div class="flex justify-between text-sm">
                <label>
                    <input type="checkbox"> Remember me
                </label>
                <a href="#" class="text-teal-600 hover:underline">Forgot?</a>
            </div>

            <!-- Login Button -->
            <button type="submit"
                class="w-full bg-teal-500 hover:bg-teal-600 text-white p-3 rounded-lg font-semibold transition duration-300">
                Login
            </button>

        </form>

        <!-- Divider -->
        <div class="my-4 text-center text-gray-400">or</div>

        <!-- Google Login -->
        <a href="https://accounts.google.com/o/oauth2/v2/auth?client_id=1017860517752-mun7g79e2a8ncjiicqv5dglimqhbu7mj.apps.googleusercontent.com&redirect_uri=http://localhost:8080/LeetRepeat/googleLogin&response_type=code&scope=openid%20email%20profile&access_type=online&prompt=select_account">

            <button class="w-full flex items-center justify-center gap-2 border p-2 rounded-lg hover:bg-gray-100 transition">
                <img src="https://www.svgrepo.com/show/475656/google-color.svg" class="w-5 h-5">
                Continue with Google
            </button>
        </a>

        <!-- Register -->
        <p class="text-center mt-4 text-sm">
            Don't have an account?
            <a href="register.jsp" class="text-teal-600 font-semibold hover:underline">Register</a>
        </p>

    </div>

</div>

</body>
</html>