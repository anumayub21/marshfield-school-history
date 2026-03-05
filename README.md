Marshfield School History Website

A multi-page historical website developed as part of a university project. The website presents historical information about Marshfield School and allows users to search historical staff records and source documents through a database-driven interface.

The project demonstrates the use of HTML, CSS, PHP, and MySQL to build a simple web application with database integration.

Project Features

Multi-page historical website

Staff database search functionality

Sources database search functionality

PHP and MySQL integration

PDF archive links

Responsive navigation system

Consistent styling across all pages

Technologies Used

HTML5 – Page structure

CSS3 – Styling and layout

PHP – Server-side scripting

MySQL – Database management

XAMPP – Local development environment

GitHub – Version control

Project Structure
enterprise_pro
│
├── index.html
├── page1a.html
├── page2.html
├── page3.html
├── page4.html
├── page5_staff.html
├── page6_sources.html
│
├── staff_search.php
├── sources_search.php
│
├── style.css
│
├── Images/
├── PDFs/
│
└── marshfield_app.sql
How to Run the Project
1. Install XAMPP

Download XAMPP from:

https://www.apachefriends.org/

2. Start the Server

Open XAMPP Control Panel and start:

Apache

MySQL

3. Place the Project in htdocs

Move the project folder to:

C:\xampp\htdocs\enterprise_pro
4. Import the Database

Open phpMyAdmin

Create a database called:

marshfield_app

Click Import

Upload the file:

marshfield_app.sql
5. Open the Website

Open a browser and go to:

http://localhost/enterprise_pro

If Apache uses another port (for example 8083), use:

http://localhost:8083/enterprise_pro

The website will automatically load Page 1 (index.html).
