CREATE DATABASE IF NOT EXISTS cinema_booking;
USE cinema_booking;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('user','admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    genre VARCHAR(100),
    duration_minutes INT,
    release_date DATE,
    poster VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS cinemas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    location VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS schedules (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    cinema_id INT NOT NULL,
    show_time DATETIME NOT NULL,
    price DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (cinema_id) REFERENCES cinemas(id)
);

CREATE TABLE IF NOT EXISTS bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    schedule_id INT NOT NULL,
    seats VARCHAR(100) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (schedule_id) REFERENCES schedules(id)
);
