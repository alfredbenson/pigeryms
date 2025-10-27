<?php

include './includes/config.php';

$mode = $_GET['mode'] ?? '';
$containerClass = ($mode === 'signup') ? 'container sign-up-mode' : 'container';

$loginError = '';
$signupError = '';
$success = '';
$err = '';

// Handle form submissions
if ($_SERVER["REQUEST_METHOD"] === "POST") {

  // 🔹 LOGIN PROCESS
  if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $sql = "SELECT id, EmailId, Password, FullName FROM tblusers WHERE EmailId = :username";
    $query = $dbh->prepare($sql);
    $query->bindParam(':username', $username, PDO::PARAM_STR);
    $query->execute();
    $results = $query->fetch(PDO::FETCH_ASSOC);
    
    if ($results && password_verify($password, $results['Password'])) {
        $_SESSION['login'] = $results['EmailId'];
        $_SESSION['customer'] = $results['id'];
        $_SESSION['fname'] = $results['FullName'];
        header("Location: index.php");
        exit();
    } else {
        $loginError = "Invalid login credentials";
    }
  }

  // 🔹 SIGNUP PROCESS
  elseif (isset($_POST["signup"])) {
    $fullName = trim($_POST["fullName"]);
    $email = trim($_POST["email"]);
    $password = $_POST["password"];
    $confirmPassword = $_POST["confirmPassword"];
    $mobileNumber = trim($_POST["mobileNumber"]);
    $dob = $_POST["dob"];
    $address = trim($_POST["address"]);

    if ($password !== $confirmPassword) {
      $signupError = "Passwords do not match.";
    } else {
      $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

      $sql = "INSERT INTO tblusers (FullName, EmailId, ContactNo, dob, Address, Password)
              VALUES (:fullName, :email, :mobileNumber, :dob, :address, :password)";
      $query = $dbh->prepare($sql);
      $query->bindParam(':fullName', $fullName, PDO::PARAM_STR);
      $query->bindParam(':email', $email, PDO::PARAM_STR);
      $query->bindParam(':mobileNumber', $mobileNumber, PDO::PARAM_STR);
      $query->bindParam(':dob', $dob, PDO::PARAM_STR);
      $query->bindParam(':address', $address, PDO::PARAM_STR);
      $query->bindParam(':password', $hashedPassword, PDO::PARAM_STR);

      if ($query->execute()) {
        $success = "Registration successful. Redirecting to login...";
        header("refresh:1;url=login.php");
        exit();
      } else {
        $signupError = "Something went wrong. Please try again.";
      }
    }
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login / Sign Up</title>
  <link rel="shortcut icon" href="assets/images/logos.jpeg">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="style.css" />
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="./admin/js/swal.js"></script>
</head>

<body>
  <div class="<?php echo $containerClass; ?>">
    <div class="forms-container">
      <div class="signin-signup">

        <!-- 🔹 LOGIN FORM -->
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" class="sign-in-form">
          <div class="signin">
            <h2 class="title">Sign In</h2>

            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" name="username" placeholder="Email" required />
            </div>

            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="login-password" name="password" placeholder="Password" required />
              <span class="toggle-password" onclick="togglePasswordVisibility('login-password')">
                <i id="login-password-eye-icon" class="fas fa-eye-slash"></i>
              </span>
            </div>

            <?php if ($loginError): ?>
              <p class="error"><?php echo htmlspecialchars($loginError); ?></p>
            <?php endif; ?>

            <br>
            <input type="submit" value="Login" name="login" class="btn solid" />
          </div>
        </form>

        <!-- 🔹 SIGNUP FORM -->
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" class="sign-up-form" onsubmit="return validatePassword();">
          <div class="signin">
            <h2 class="title">Sign Up</h2>

            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="fullName" placeholder="Full Name" required />
            </div>

            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" id="emailid" onblur="checkAvailability()" placeholder="Email Address" required>
              <br><span id="user-availability-status" style="font-size:12px;"></span>
            </div>

            <div class="input-field">
              <i class="fas fa-phone"></i>
              <input type="text" name="mobileNumber" id="mobilenumber" placeholder="Mobile Number" required oninput="this.value = this.value.replace(/[^0-9]/g, '');" />
            </div>

            <div class="input-field">
              <i class="fas fa-calendar"></i>
              <input type="text" id="dob" name="dob" placeholder="Date of Birth" required />
            </div>

            <div class="input-field">
              <i class="fas fa-map-marker-alt"></i>
              <input type="text" name="address" placeholder="Address" required />
            </div>

            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="signin-password" name="password" placeholder="Password" required />
              <span class="toggle-password" onclick="togglePasswordVisibility('signin-password')">
                <i id="signin-password-eye-icon" class="fas fa-eye-slash"></i>
              </span>
            </div>

            <div class="input-field" id="confirm">
              <i class="fas fa-lock"></i>
              <input type="password" id="confirm-password" name="confirmPassword" placeholder="Confirm Password" required />
              <span class="toggle-password" onclick="togglePasswordVisibility('confirm-password')">
                <i id="confirm-password-eye-icon" class="fas fa-eye-slash"></i>
              </span>
            </div>

            <?php if ($signupError): ?>
              <p class="error"><?php echo htmlspecialchars($signupError); ?></p>
            <?php endif; ?>

            <input type="submit" class="btn" name="signup" value="Signup" />
          </div>
        </form>

      </div>
    </div>

    <div class="panels-container">
      <div class="panel left-panel">
        <div class="content">
          <h3>Are you new here?</h3>
          <p>Click Sign up to discover the finest selection of healthy and well-cared-for pigs for sale.</p>
          <button class="btn transparent" id="sign-up-btn">Sign up</button>
        </div>
        <img src="img/signlog.svg" class="image" alt="sign-up" />
      </div>

      <div class="panel right-panel">
        <div class="content">
          <h3>Are you one of us?</h3>
          <p>Sign in now and explore the best deals on high-quality pigs.</p>
          <button class="btn transparent" id="sign-in-btn">Sign in</button>
        </div>
        <img src="img/reglog.svg" class="image" alt="sign-in" />
      </div>
    </div>
  </div>

  <script>
  // 🔹 Toggle password visibility
  function togglePasswordVisibility(inputId) {
    var input = document.getElementById(inputId);
    var eyeIcon = document.getElementById(inputId + "-eye-icon");
    if (input.type === "password") {
      input.type = "text";
      eyeIcon.classList.remove("fa-eye-slash");
      eyeIcon.classList.add("fa-eye");
    } else {
      input.type = "password";
      eyeIcon.classList.remove("fa-eye");
      eyeIcon.classList.add("fa-eye-slash");
    }
  }

  // 🔹 Check email availability (AJAX)
  function checkAvailability() {
    $("#loaderIcon").show();
    jQuery.ajax({
      url: "check_availability.php",
      data: 'emailid=' + $("#emailid").val(),
      type: "POST",
      success: function (data) {
        $("#user-availability-status").html(data);
        $("#loaderIcon").hide();
      },
      error: function () {}
    });
  }

  // 🔹 Convert DOB input to date on focus
  document.getElementById('dob').addEventListener('focus', function (e) {
    e.target.type = 'date';
  });

  // 🔹 Client-side form validation
  function validatePassword() {
    var password = document.getElementById("signin-password").value;
    var confirmPassword = document.getElementById("confirm-password").value;
    var mobile = document.getElementById("mobilenumber").value.trim();
    var dob = document.getElementById("dob").value;

    if (password.length < 8) {
      swal("Error", "Password must be 8 characters or higher", "error");
      return false;
    }

    if (password !== confirmPassword) {
      swal("Error", "Passwords do not match", "error");
      return false;
    }

    if (!/^[0-9]{11}$/.test(mobile)) {
      swal("Error", "Mobile number must be 11 digits only", "error");
      return false;
    }

    if (dob) {
      var today = new Date();
      var birthDate = new Date(dob);
      var age = today.getFullYear() - birthDate.getFullYear();
      var monthDiff = today.getMonth() - birthDate.getMonth();
      if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
      }
      if (age < 20) {
        swal("Error", "You must be at least 20 years old to sign up", "error");
        return false;
      }
    }
    return true;
  }
  </script>

  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/interface.js"></script>
  <script src="app.js"></script>
</body>
</html>

<?php if ($success): ?>
<script>
document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    swal("Success", "<?php echo addslashes($success); ?>", "success");
  }, 100);
});
</script>
<?php elseif ($signupError || $loginError): ?>
<script>
document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    swal("Error", "<?php echo addslashes($signupError ?: $loginError); ?>", "error");
  }, 100);
});
</script>
<?php endif; ?>
