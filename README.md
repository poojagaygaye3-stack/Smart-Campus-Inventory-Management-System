# 🏫 Smart Campus Inventory Management System

## 📌 Project Overview

The **Smart Campus Inventory Management System** is a web-based application developed to manage college inventory efficiently.

It helps administrators maintain inventory records, add new items, update stock, delete inventory, search inventory records, and manage campus assets through a simple and user-friendly interface.

The project is developed using **PHP, MySQL, HTML5, and CSS3** and runs locally using **XAMPP**.

---

## 🎯 Objectives

* To manage college inventory digitally.
* To maintain accurate inventory records.
* To simplify adding, updating, and deleting inventory items.
* To make inventory searching easier.
* To reduce manual inventory management.
* To provide a user-friendly and responsive interface.
* To improve the efficiency of campus asset management.

---

## 🛠️ Technologies Used

| Technology | Purpose                       |
| ---------- | ----------------------------- |
| PHP        | Backend development           |
| HTML5      | Website structure             |
| CSS3       | Styling and responsive design |
| MySQL      | Database management           |
| XAMPP      | Local development environment |
| phpMyAdmin | Database management           |

---

# 📂 Project Structure

```text
Smart-Campus-Inventory-Management-System/
│
├── Home.php
├── home.css
│
├── AddInventory.php
├── addInventory.css
│
├── UpdateInventory.php
├── updateInventory.css
│
├── DeleteInventory.php
│
├── SearchInventory.php
├── searchInventory.css
│
├── EmployeeLogin.php
├── employeeLogin.css
│
├── AdminLogin.php
├── adminLogin.css
│
├── images/
│
├── database/
│   └── inventory.sql
│
├── README.md
└── .gitignore
```

> **Note:** The project structure may vary slightly depending on the final implementation.

---

# 📂 Modules

## ✅ Module 1: Home Page

### Files

* `Home.php`
* `home.css`

### Features

* Attractive homepage design
* Navigation menu
* Responsive layout
* User-friendly interface
* Easy navigation to different sections

---

## ✅ Module 2: Add Inventory

### Files

* `AddInventory.php`
* `addInventory.css`

### Features

* Add new inventory items
* Inventory entry form
* Form validation
* Clean and responsive UI
* Store inventory information in the database

---

## ✅ Module 3: Update Inventory

### Files

* `UpdateInventory.php`
* `updateInventory.css`

### Features

* Update existing inventory records
* Edit inventory item details
* Modify stock quantity
* Update inventory information in the database
* User-friendly update interface

---

## ✅ Module 4: Delete Inventory

### Files

* `DeleteInventory.php`

### Features

* Delete inventory records
* Remove unwanted inventory items
* Update inventory records in the database
* Easy inventory management

---

## ✅ Module 5: Search Inventory

### Files

* `SearchInventory.php`
* `searchInventory.css`

### Features

* Search inventory items
* Search inventory records quickly
* Display matching inventory information
* Simplify inventory management

---

## ✅ Module 6: Employee Login

### Files

* `EmployeeLogin.php`
* `employeeLogin.css`

### Features

* Employee authentication
* Employee login system
* Secure access to the system
* Employee-specific access to the application

---

## ✅ Module 7: Admin Login

### Files

* `AdminLogin.php`
* `adminLogin.css`

### Features

* Admin authentication
* Admin login system
* Administrative access
* Manage inventory records
* Access inventory management features

---

# 🗄️ Database

The project uses **MySQL** for database management.

The database stores inventory and user-related information required by the application.

### Inventory Information

The inventory database may contain:

* Inventory ID
* Item Name
* Category
* Quantity
* Price
* Description
* Date Added
* Other inventory-related details

### Database File

The SQL database file is included in:

```text
database/inventory.sql
```

This file can be imported into **phpMyAdmin** to create the required database tables.

---

# 💻 Installation & Setup

Follow the steps below to run the project on your computer.

## 1. Install XAMPP

Download and install **XAMPP**.

After installation, open the XAMPP Control Panel and start:

* Apache
* MySQL

---

## 2. Clone the Repository

Open Command Prompt or Git Bash and run:

```bash
git clone https://github.com/poojagaygaye3-stack/Smart-Campus-Inventory-Management-System.git
```

Or download the repository using:

**GitHub → Code → Download ZIP**

---

## 3. Move the Project to XAMPP

After cloning/downloading the project, copy the project folder into:

```text
C:\xampp\htdocs\
```

The final location should be:

```text
C:\xampp\htdocs\Smart-Campus-Inventory-Management-System\
```

---

## 4. Create the Database

Open your browser and go to:

```text
http://localhost/phpmyadmin
```

### Steps:

1. Open **phpMyAdmin**.
2. Create a new database using the database name required by the project.
3. Select the created database.
4. Click **Import**.
5. Select:

```text
database/inventory.sql
```

6. Click **Import**.

The required tables will be created in the database.

> **Important:** Make sure the database name in your PHP database connection file matches the database name created in phpMyAdmin.

---

## 5. Check Database Connection

Before running the application, check the database connection settings in the PHP files.

Typical XAMPP MySQL settings are:

```text
Host: localhost
Username: root
Password: 
Database: your_database_name
```

> If your MySQL username, password, or database name is different, update the database connection settings accordingly.

---

## 6. Run the Project

Open your web browser and enter:

```text
http://localhost/Smart-Campus-Inventory-Management-System/Home.php
```

The **Smart Campus Inventory Management System** will open in your browser.

---

# 🔐 Demo Login

The project provides separate login systems for **Admin** and **Employee**.

## Admin Login


Email: admin@gmail.com
Password: admin123


## Employee Login


Email: superuser@gmail.com

Password: 123


> **Note:** You can use through database directly. 

---

# 🚀 How to Test the Project

After successfully running the project, you can test the following features:

### Admin

* Login as Admin
* Add Inventory
* View Inventory
* Update Inventory
* Delete Inventory
* Search Inventory
* Manage inventory records

### Employee

* Login as Employee
* Access employee-specific features
* View available inventory information

---

# 🧩 System Features

The system provides the following major features:

* 🏠 Home Page
* ➕ Add Inventory
* ✏️ Update Inventory
* 🗑️ Delete Inventory
* 🔍 Search Inventory
* 👨‍💼 Employee Login
* 👨‍💻 Admin Login
* 🗄️ MySQL Database Integration
* 📱 Responsive User Interface
* 🔐 Role-based access

---

# 🌟 Key Benefits

* Reduces manual inventory management.
* Saves time and effort.
* Maintains organized inventory records.
* Makes inventory searching easier.
* Allows quick updating of stock information.
* Provides secure login functionality.
* Provides centralized campus inventory management.
* Improves overall inventory management efficiency.

---

# 🔮 Future Enhancements

Although the major modules are completed, the system can be enhanced in the future with:

* 📊 Advanced admin dashboard
* 📈 Inventory analytics and statistics
* 📄 PDF and Excel report generation
* 🔔 Low-stock notifications
* 📦 Automatic stock alerts
* 🔎 Advanced filtering and sorting
* 👥 Employee management
* 📱 Improved mobile responsiveness
* 🔐 Enhanced role-based access control

---

# 📌 Project Status

**Current Status: ✅ Completed**

### Completed Modules

* ✅ Home Page
* ✅ Add Inventory
* ✅ Update Inventory
* ✅ Delete Inventory
* ✅ Search Inventory
* ✅ Employee Login
* ✅ Admin Login
* ✅ MySQL Database Integration

The **Smart Campus Inventory Management System** has successfully completed all major inventory management and authentication modules.

---

# 👩‍💻 Developer

**Pooja Gaygaye**

MCA Student | AI/ML

---

# 🎓 Project Type

**Academic / Educational Project**

This project was developed as part of an **MCA academic project** to demonstrate practical knowledge of:

* PHP
* MySQL
* HTML5
* CSS3
* Database Management
* Web Application Development

---

# 📄 License

This project is developed for **educational and academic purposes**.

---

# ⭐ Acknowledgement

Thank you for visiting this project.

If you find this project useful, feel free to explore the repository and provide feedback.
