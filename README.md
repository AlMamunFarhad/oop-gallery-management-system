# OOP Gallery Management System

A fully functional photo gallery application built using **Core PHP with Object-Oriented Programming (OOP)**. This system provides a complete backend for admin management and a user-facing frontend for browsing and commenting on photos.

---

## ✨ Features

### 🛠️ Admin Dashboard
- **Login system**
- **Admin dashboard**
- **Photo upload** (single & drag-drop multiple)
- **Photo comments** with real-time comment count
- **Admin panel** to manage users, photos, and comments

### 🌐 Frontend Features

- **Responsive photo gallery**  
- **Clean grid layout** for browsing photos
- **Frontend photo gallery** with custom pagination
- **Photo comments section**
- **Live comment count** on each photo

---

## 🛠️ Tech Stack

| Layer        | Technology                                 |
|--------------|---------------------------------------------|
| Language     | PHP (Object-Oriented Programming)           |
| Frontend     | HTML, CSS, Bootstrap                        |
| JavaScript   | jQuery, Vanilla JS, AJAX                    |
| Database     | MySQL                                       |

---

## 🚀 Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/AlMamunFarhad/oop-gallery-management-system.git
   cd oop-gallery-management-system
   ```
   
2. **Import the Database**
   - Open `phpMyAdmin`
   - Create a database (e.g., `gallery_db_3`)
   - Import the provided `.sql` file located in the project folder

3. **Configure Database Connection**
   - Open the config file (e.g., `admin/includes/config.php`)
   - Update DB credentials:
     ```php
     define('DB_HOST', 'localhost');
     define('DB_USER', 'root');
     define('DB_PASS', '');
     define('DB_NAME', 'gallery_db_3');
     ```

4. **Start the Server**
   - If using XAMPP or MAMP, place the project in `htdocs` or `www` folder
   - Visit:
      ```
     http://localhost/oop-gallery-management-system/
     ```
---

## 🧪 Admin Login

**Credentials:**
- **Username:** `Admin`
- **Password:** `password`

---

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you’d like to improve or add.

---

## 📄 License

This project is open-source and available under the **MIT License**.

---

## 🔗 GitHub Repository

👉 [oop-gallery-management-system](https://github.com/AlMamunFarhad/oop-gallery-management-system)

