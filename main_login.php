<?php
// =======================================
// COLLEGEFLOW MODERN LOGIN INTERFACE
// =======================================

error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();

/* ✅ FIXED DATABASE NAME (removed spaces) */
$conn = new mysqli("localhost", "root", "Root@123", "college_inventory");

if ($conn->connect_error) {
    die("Database Connection Failed: " . $conn->connect_error);
}

$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email    = trim($_POST['email']);
    $password = trim($_POST['password']);
    $category = trim($_POST['category']);

    if ($email == "" || $password == "" || $category == "") {
        $error = "Please fill all fields";
    } else {

        /* ✅ ROLE → TABLE → DASHBOARD MAPPING */
        switch ($category) {

            /*case "hod":
                $table = "users";
                $redirect_page = "#";
                break;*/

            case "admin":
                $table = "admins";
                $redirect_page = "admin_home.php";
                break;

            case "superuser":
                $table = "superusers";
                $redirect_page = "home.php";
                break;

            case "staff":
                $table = "superusers";   
                $redirect_page = "faculty_office.php";
                break;

            default:
                $error = "Invalid role selected";
                exit;
        }

        /* ✅ PREPARED STATEMENT */
        $stmt = $conn->prepare("SELECT * FROM $table WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {

            $row = $result->fetch_assoc();

            /* ✅ PASSWORD CHECK (supports hashed + plain) */
            if (
                password_verify($password, $row['password']) ||
                $password === $row['password']
            ) {

                $_SESSION['email'] = $row['email'];
                $_SESSION['name']  = $row['name'];
                $_SESSION['role']  = $category;

                header("Location: $redirect_page");
                exit;

            } else {
                $error = "Incorrect password";
            }

        } else {
            $error = "Account not found for this role";
        }

        $stmt->close();
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CollegeFlow | Navigate Your Academic Journey</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --primary: #2c3e50;
            --accent: #4a90e2;
            /* button color when click*/
            --bg-dark: #0c0109;
            --glass: rgba(20, 1, 1, 0.95);
        }

        body {
            font-family: 'Inter', sans-serif;
            margin: 0;
            background: var(--bg-dark);
            color: #fff;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* --- Attractive Header --- */
        header {
            padding: 20px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: linear-gradient(to right, #2c3e50, #4a90e2);
        }

        .logo {
    font-size: 28px;
    font-weight: 600;
    display: flex;
    align-items: center;
    gap: 12px;
    color: #ffffff;
    letter-spacing: 0.5px;
}

/* Logo image styling */
.logo img {
    border-radius: 50px;           /* smooth corners */
    background: #ffffff;
    padding: 4px 4px 2px 2px;
}

/* Text styling */
.logo span {
    display: flex;
    align-items: center;
}

.logo strong {
    margin-left: 10px;
    font-weight: 900;
                    /* highlight “Smart Campus” */
}

        

        /* --- Main Layout --- */
        .main-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
        }

        .glass-card {
            background: var(--glass);
            color: #0f0101;
            width: 100%;
            max-width: 1100px;
            border-radius: 20px;
            display: grid;
            grid-template-columns: 1.2fr 1fr;
            overflow: hidden;
            box-shadow: 0 20px 50px rgba(0,0,0,0.3);
        }

        /* --- Left Side: Welcome --- */
        /* --- Left Side: Welcome --- */
        /* --- Left Side: Welcome --- */
.welcome-section {
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start; 
    background: #98ade0;
    position: relative;            /* Keeps image inside */
    overflow: hidden;              /* Clips the image to the border-radius */           /* Rounded corners for the section */
    min-height: 350px;             /* Ensures enough space for the image */
}

/* Heading & Text - We use z-index to keep them on top */
.welcome-section h2 {
    font-size: 30px;
    margin-top:10px;
    margin-bottom: 30px;
    color: #040709;
    position: relative;
    z-index: 2; 
    text-shadow: 0px 2px 4px rgba(255,255,255,0.8); /* Makes text pop over image */
}



/* Updated Image Styling */
.welcome-img {
    position: static;                 
    height: 100%;                  
    object-fit: cover;             /* Fills the space perfectly */
    object-position: center;       /* Centers the focus of the image */
    z-index: 1;                    /* Behind the text */
    border-radius: 10px;           /* Matches the container */
    opacity: 1;                  /* Slightly transparent for a professional look */
    transition: transform 0.5s ease; /* Smooth effect for hackathon feel */
}

/* Subtle hover effect for the hackathon "Wow" factor */
.welcome-section:hover .welcome-img {
    transform: scale(1.05);
}



        /* --- Right Side: Secure Login --- */
        .login-section {
            padding: 60px;
            background: #fff;
            border-left: 1px solid #eee;
        }

        .login-box h2 { font-size: 24px; margin-bottom: 30px; border-left: 4px solid var(--accent); padding-left: 15px; }

        .input-group { margin-bottom: 20px; position: relative; }
        .input-group i { position: absolute; left: 15px; top: 38px; color: #999; }
        
        label { display: block; margin-bottom: 8px; font-weight: 600; font-size: 14px; }
        
        input, select {
            width: 100%;
            padding: 12px 12px 12px 40px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 15px;
            transition: 0.3s;
        }

        input:focus { border-color: var(--accent); outline: none; box-shadow: 0 0 8px rgba(74,144,226,0.2); }

        .btn-login {
            width: 100%;
            padding: 14px;
            background: var(--accent);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .btn-login:hover { background: #357abd; transform: translateY(-2px); }

        .error-msg { background: #fee; color: #c00; padding: 10px; border-radius: 5px; margin-bottom: 20px; font-size: 14px; }

        /* --- Footer --- */
        footer {
            background: #111;
            padding: 40px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links a { color: #999; text-decoration: none; margin-right: 20px; font-size: 14px; }
        .social-icons i { color: #fff; margin-left: 20px; cursor: pointer; }
    </style>
</head>
<body>

<header>
    <div class="logo">
    <img src="logo.png" height="40px" width="40px">
    <span>SVIMS <strong>Smart Campus</strong></span>
</div>

    
    
    </div>
</header>

<main class="main-container">
    <div class="glass-card">
        <div class="welcome-section">
    <h2>Welcome to Current User</h2>
    <img src="main.png" alt="Education Illustration" class="welcome-img">
</div>


        <div class="login-section">
            <div class="login-box">
                <h2>Secure Login</h2>
                
                <?php if($error!=""): ?>
                    <div class="error-msg"><i class="fas fa-exclamation-circle"></i> <?php echo $error; ?></div>
                <?php endif; ?>

                <form method="post">
                    <div class="input-group">
                        <label>Select Role</label>
                        <i class="fas fa-user-shield"></i>
                        <select name="category" required>
                            <option value="">-- Choose Role --</option>
                            <option value="superuser">Super User</option>
                            <option value="admin">Admin</option>
                            <option value="staff">Office Staff</option>
                            <!--<option value="student">Student</option>-->
                        </select>
                    </div>

                    <div class="input-group">
                        <label>Email Address</label>
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="email" placeholder="demo@college.edu" autocomplete="off" required>

<!--<input type="password" name="password" placeholder="Demo@123" autocomplete="new-password" required>-->

                        <!--<input type="email" name="email" placeholder="name@college.edu" required>-->
                    </div>

                    <div class="input-group">
                        <label>Password</label>
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="••••••••" required>
                    </div>

                    <div style="display: flex; justify-content: space-between; font-size: 13px; margin-bottom: 20px; color: #666;">
                        <label style="font-weight: 400;"><input type="checkbox" style="width: auto; margin-right: 5px; padding: 0;"> Remember Me</label>
                        <a href="#" style="color: var(--accent); text-decoration: none;">Forgot Password?</a>
                    </div>

                    <button type="submit" class="btn-login">LOGIN <i class="fas fa-arrow-right" style="margin-left: 8px;"></i></button>
                </form>
            </div>
        </div>
    </div>
</main>

<footer>
    <div class="footer-links">
        <a href="#">About Us</a>
        <a href="#">Contact</a>
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
    </div>
    <div style="color: #666; font-size: 13px;">
        &copy; 2026 CollegeFlow Management System
    </div>
    <div class="social-icons">
        <i class="fab fa-facebook"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-instagram"></i>
        <i class="fab fa-linkedin"></i>
    </div>
</footer>

</body>
</html>
