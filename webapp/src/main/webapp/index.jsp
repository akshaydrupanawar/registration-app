<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
</head>
<body>
  <h2>Register for DevOps Learning</h2>

  <form id="registrationForm">
    <label>Enter Name <input type="text" id="name" required></label><br><br>
    <label>Enter Mobile <input type="text" required></label><br><br>
    <label>Enter Email <input type="email" required></label><br><br>
    <label>Password <input type="password" id="password" required></label><br><br>
    <label>Repeat Password <input type="password" id="repeatPassword" required></label><br><br>
    <button type="submit">Register</button>
  </form>

  <script>
    document.getElementById('registrationForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const name = document.getElementById('name').value;
      const password = document.getElementById('password').value;
      const repeatPassword = document.getElementById('repeatPassword').value;

      if (password !== repeatPassword) {
        alert("Passwords do not match!");
        return;
      }

      // Store name temporarily using sessionStorage
      sessionStorage.setItem("username", name);

      // Redirect to welcome page
      window.location.href = "welcome.html";
    });
  </script>
</body>
</html>
