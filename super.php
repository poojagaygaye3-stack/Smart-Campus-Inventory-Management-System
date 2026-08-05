<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SVIMS Smart Campus | Superuser</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
/* ================= ROOT VARIABLES ================= */
:root {
    --primary-blue: #0c9bed;
    --secondary-blue: #663cbb;
    --light-blue: #e6f2f8;
    --bg-color: #f4f7fb;
    --card-bg: #ffffff;
    --text-dark: #1e293b;
    --text-muted: #64748b;
    --shadow: 0 15px 35px rgba(0, 0, 0, 0.08);
}

/* ================= GLOBAL RESET ================= */
* {
    box-sizing: border-box;
}

html, body {
    height: 100%;
    margin: 0;
    overflow-x: hidden; /* ✅ allow vertical scroll */
}

body {
    font-family: 'Inter', sans-serif;
    background: var(--bg-color);
    color: var(--text-dark);
}

/* ================= LAYOUT ================= */
.dashboard-container {
    display: flex;
    min-height: 100vh; /* ✅ changed from height:100vh */
}

/* ================= MAIN CONTENT ================= */
.main-content {
    flex: 1;
    display: flex;
    flex-direction: column;
    overflow-y: auto; /* ✅ scrollbar here */
}

/* ================= SIDEBAR ================= */
.sidebar {
    width: 280px;
    background: linear-gradient(180deg, var(--primary-blue), var(--secondary-blue));
    padding: 2px;
    color: white;
    display: flex;
    flex-direction: column;
}

/* Logo */
.logo {
    font-size: 1.4rem;
    font-weight: bold;
    display: flex;
    align-items: center;
    gap: 35px;
    margin-left: 20px;
    margin-top: 40px;
    margin-bottom: 40px;
}

/* Logo container */
.logo1 {
    display: flex;
    align-items: center;
    gap: 12px;
}

.logo1 img {
    max-height: 55px;
    border-radius: 50%;
    box-shadow: 0 0 15px rgba(255,255,255,0.6);
    transition: transform 0.4s ease;
}

.logo1 img:hover {
    transform: rotate(6deg) scale(1.15);
}

.logo1 h1 {
    font-size: 1.7em;
    font-weight: 700;
    letter-spacing: 1.2px;
    text-shadow: 2px 2px 8px rgba(0,0,0,0.4);
}

/* Sidebar Navigation */
nav ul {
    list-style: none;
    padding: 0;
}

nav li {
    padding: 14px 18px;
    margin-bottom: 10px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    gap: 14px;
    cursor: pointer;
    transition: 0.3s;
}

nav li:hover,
nav li.active {
    background: rgba(255, 255, 255, 0.2);
}

.sidebar nav {
    flex: 1;
}

/* ================= HEADER ================= */
.top-header {
    position: sticky;        /* ✅ stays visible */
    top: 0;
    z-index: 1000;           /* ✅ above content */
    background: linear-gradient(90deg, var(--primary-blue), var(--secondary-blue));
    padding: 20px 30px;
    color: white;
    display: grid;
    grid-template-columns: 1fr auto 1fr;
    align-items: center;
    box-shadow: var(--shadow);
}

.header-left {
    display: flex;
    align-items: center;
    gap: 12px;
}

.header-center {
    display: flex;
    align-items: center;
    gap: 12px;
    position: absolute;
    right: 30px;
    top: 50%;
    transform: translateY(-50%);
    padding: 8px 16px;
    border-radius: 32px;
    background: rgba(255, 255, 255, 0.12);
}

/* Crown Icon */
.header-center i {
    font-size: 26px;
    color: #ffd700;                 /* Simple yellow */
    background: rgba(255, 215, 0, 0.25);
    padding: 8px;
    border-radius: 50%;
    box-shadow: 0 0 10px rgba(255, 215, 0, 0.45);
}

/* Title */
.header-center h2 {
    margin: 0;
    font-size: 18px;
    font-weight: 700;
    letter-spacing: 0.6px;
    color: #ffffff;
    white-space: nowrap;
}


/* ================= PAGE CONTENT ================= */
.page-content {
    padding: 35px 45px;
    flex: 1; /* ✅ pushes footer down */
}


/* ================= MODULES ================= */
.modules {
    background: linear-gradient(135deg, #eaf6ff, #f5f9ff);
    padding: 45px;
    border-radius: 30px;
    box-shadow: inset 0 0 0 1px rgba(12,155,237,0.08);
}

.card-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 32px;
}

.card {
    background: var(--card-bg);
    padding: 38px 25px;
    border-radius: 20px;
    text-align: center;
    box-shadow: var(--shadow);
    border-top: 4px solid transparent;
    transition: all 0.35s ease;
    position: relative;
    overflow: hidden;
}

.card::before {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(120deg, var(--primary-blue), var(--secondary-blue));
    opacity: 0;
    transition: 0.35s;
}

.card:hover::before {
    opacity: 0.06;
}

.card:hover {
    transform: translateY(-8px);
    border-top-color: var(--primary-blue);
}

.card i {
    font-size: 2.4rem;
    margin-bottom: 18px;
    background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.card p {
    font-weight: 600;
    font-size: 1rem;
    margin: 0;
}


/* ================= CIRCULARS ================= */
.circular-section {
    margin-top: 60px;
    margin-bottom: 80px;
}

.circular-section h2 {
    font-size: 1.6rem;
    font-weight: 700;
    margin-bottom: 25px;
    display: flex;
    align-items: center;
    gap: 10px;
}

.circular-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 28px;
}

.circular-card {
    background: var(--card-bg);
    padding: 26px 26px 30px;
    border-radius: 18px;
    box-shadow: var(--shadow);
    position: relative;
    overflow: hidden;
    transition: transform 0.3s ease;
}

.circular-card::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 6px;
    height: 100%;
    background: linear-gradient(var(--primary-blue), var(--secondary-blue));
}

.circular-card:hover {
    transform: translateY(-6px);
}

.circular-card h4 {
    margin: 0 0 10px;
    font-size: 1.05rem;
    font-weight: 700;
}

.circular-card p {
    font-size: 0.9rem;
    color: var(--text-muted);
    margin-bottom: 18px;
}

/* ================= BADGES ================= */
.badge {
    position: absolute;
    bottom: 18px;
    right: 20px;
    font-size: 0.72rem;
    padding: 5px 14px;
    border-radius: 20px;
    font-weight: 600;
}

.new {
    background: #e0f2fe;
    color: #0369a1;
}

.urgent {
    background: #fee2e2;
    color: #b91c1c;
}

.upcoming {
    background: #ede9fe;
    color: #5b21b6;
}
.logout-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;

    padding: 12px 22px;
    border-radius: 30px;

    background: linear-gradient(135deg, #ffffff, #f4f6ff);
    color: #5b4ddb;

    font-size: 14px;
    font-weight: 600;
    text-decoration: none;

    box-shadow: 
        0 6px 14px rgba(0, 0, 0, 0.15),
        inset 0 0 0 1px rgba(91, 77, 219, 0.15);

    transition: 
        background 0.3s ease,
        box-shadow 0.3s ease,
        transform 0.2s ease;
}

/* Icon */
.logout-btn i {
    font-size: 15px;
    color: #5b4ddb;
}

/* Hover effect (subtle & classy) */
.logout-btn:hover {
    background: linear-gradient(135deg, #f3f0ff, #ebe9ff);
    box-shadow: 
        0 8px 20px rgba(0, 0, 0, 0.18),
        inset 0 0 0 1px rgba(91, 77, 219, 0.25);
    transform: translateY(-2px);
}

/* Active (click) */
.logout-btn:active {
    transform: translateY(0);
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
}


/* ================= FOOTER ================= */
.footer {
    background: linear-gradient(90deg, var(--primary-blue), var(--secondary-blue));
    color: white;
    padding: 30px 45px 10px;
}

.footer-bottom {
    text-align: center;
    border-top: 1px solid rgba(255,255,255,0.3);
    padding-top: 10px;
    font-size: 0.85rem;
}

</style>
</head>

<body>

<div class="dashboard-container">

<!-- Sidebar -->
<aside class="sidebar">
    <div class="logo">
        <i class="active"><i class="fas fa-home"></i> Dashboard</i>
        

    </div>
    <nav>
        <ul>
<li><i class="fas fa-folder-open"></i> DMS System</li>
<li><i class="fas fa-futbol"></i> Sport System</li>
<li><i class="fas fa-calendar-alt"></i> Event Management System</li>
<li><i class="fas fa-calendar-day"></i> Academic Calendar System</li>
<li><i class="fas fa-building"></i> Infrastructure System</li>
<li><i class="fas fa-question-circle"></i> FAQ</li>
<li><i class="fas fa-user-tie"></i> HR System</li>
<li><i class="fas fa-graduation-cap"></i> Academic System</li>
<div class="header-right">
<a href="logout.php" class="logout-btn">
<i class="fas fa-sign-out-alt"></i> Logout
    </a>
</div>

            
        </ul>
    </nav>
</aside>

<!-- Main -->
<main class="main-content">

<!-- Header -->
<div class="top-header">
    <div class="header-left">
        <!--<i class="fas fa-user-shield"></i>-->
        <div class="logo1">
        <img src="logo.png" alt="Logo">
        <h1>SVIMS Smart Campus</h1>
        </div>
    </div>

    <div class="header-center">
    <i class="fas fa-crown"></i>
    <h2>Superuser Dashboard</h2>
</div> 
</div>

<!-- Content -->
<div class="page-content">

    <!-- Modules -->
<section class="modules">
    <div class="card-grid">

        <div class="card">
            <i class="fas fa-user-plus"></i>
            <p>Admission System</p>
        </div>

        <div class="card">
            <i class="fas fa-user-check"></i>
            <p>Attendance System</p>
        </div>

        <div class="card">
            <i class="fas fa-rupee-sign"></i>
            <p>Salary System</p>
        </div>

        <a href="home.php" class="card">
            <i class="fas fa-box-open"></i>
            <p>Inventory System</p>
        </a>

        <div class="card">
            <i class="fas fa-book"></i>
            <p>Syllabus System</p>
        </div>

        <div class="card">
            <i class="fas fa-book-reader"></i>
            <p>Digital Library System</p>
        </div>

        <div class="card">
            <i class="fas fa-briefcase"></i>
            <p>Placement Portal System</p>
        </div>

        <div class="card">
            <i class="fas fa-clipboard-check"></i>
            <p>Exam Cell System</p>
        </div>

    </div>
</section>

<!-- Circulars -->
<section class="circular-section">
    <h2>📢 Circulars & Notices</h2>

    <div class="circular-list">
        <div class="circular-card">
            <h4>Semester Examination Schedule</h4>
            <p>Updated timetable has been released.</p>
            <span class="badge new">NEW</span>
        </div>

        <div class="circular-card">
            <h4>System Maintenance</h4>
            <p>Portal will be offline Sunday 2 AM – 5 AM.</p>
            <span class="badge urgent">URGENT</span>
        </div>

        <div class="circular-card">
            <h4>Research Proposal Submission</h4>
            <p>Last date: 30th March.</p>
            <span class="badge new">NEW</span>
        </div>
  
  <div class="circular-card">
    <h4>Shiv Jayanti Celebration</h4>
    <p>Join us for cultural programs on 19th February.</p>
    <span class="badge upcoming">UPCOMING</span>
  </div>
  <div class="circular-card">
    <h4>Rays Competition</h4>
    <p>Inter-school science competition registration is open.</p>
    <span class="badge new">NEW</span>
  </div>
  <div class="circular-card">
    <h4>Navdhara Competition</h4>
    <p>Art and craft contest scheduled for 5th March.</p>
    <span class="badge upcoming">UPCOMING</span>
  </div>
</div>

    </div>
</section>

</div>

<footer class="footer">
    <center>
        <h1>Smart Campus Inventory</h1>
        <p>Maharashtra, Pune, Koregaon Park 411001</p>
        <p>+91-123-456-7890</p>

        <div class="social-icons">
            <img src="https://cdn-icons-png.flaticon.com/256/2504/2504839.png" width="40">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Logo_2023.png/768px-Facebook_Logo_2023.png" width="40">
            <img src="https://i2.wp.com/freepngimg.com/download/logo/69732-logo-facebook-instagram-icone-free-png-hq.png" width="40">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/479px-WhatsApp_icon.png" width="40">
        </div>

        <div>&copy; <strong>Smart Campus Inventory</strong>. All Rights Reserved</div>
        <a href="#" style="color:#fff;">Designed by MCA 1st Year Student</a>
    </center>
</footer>

</main>
</div>

</body>
</html>
