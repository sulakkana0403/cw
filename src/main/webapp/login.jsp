<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Login</title>
  <!-- Add Tailwind CSS CDN link -->
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="loginValidation.js" defer></script> <!-- External JS for Validation -->
</head>
<body class="bg-gray-100">

<!-- Centered login container -->
<div class="flex items-center justify-center min-h-screen">
  <div class="bg-white p-8 rounded-lg shadow-lg w-96">
    <h2 class="text-2xl font-bold text-center text-gray-700 mb-6">Sign in</h2>

    <form action="login" method="POST" onsubmit="return validateLoginForm()">
      <!-- Email Field -->
      <div class="mb-4">
        <label for="email" class="block text-gray-600 mb-2">Email:</label>
        <input type="email" id="email" name="email" class="w-full p-3 border border-gray-300 rounded-lg" required>
      </div>

      <!-- Password Field -->
      <div class="mb-4">
        <label for="password" class="block text-gray-600 mb-2">Password:</label>
        <input type="password" id="password" name="password" class="w-full p-3 border border-gray-300 rounded-lg" required>
      </div>

      <!-- User Role Selection -->
      <div class="mb-4">
        <label for="role" class="block text-gray-600 mb-2">Role:</label>
        <select id="role" name="role" class="w-full p-3 border border-gray-300 rounded-lg" required>
          <option value="">Select Role</option>
          <option value="teacher">Teacher</option>
          <option value="consultant">Consultant</option>
          <option value="student">Student</option>
        </select>
      </div>

      <!-- Submit Button -->
      <div class="mb-4">
        <button type="submit" class="w-full bg-blue-500 text-white p-3 rounded-lg hover:bg-blue-600 transition">Login</button>
      </div>
    </form>

    <div class="text-center">
      <p class="text-gray-600">Don't have an account? <a href="SignUp.jsp" class="text-blue-500 hover:underline">Sign up here</a></p>
    </div>
  </div>
</div>

</body>
</html>

