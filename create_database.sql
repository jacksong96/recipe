CREATE DATABASE IF NOT EXISTS recipe_db;
USE recipe_db;

CREATE TABLE recipe (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
    instructions TEXT NOT NULL,
    image_url VARCHAR(255),
    creator_name VARCHAR(255) NOT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ingredient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT,
    ingredient_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES recipe(id) ON DELETE CASCADE
);