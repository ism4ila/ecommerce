CREATE DATABASE IF NOT EXISTS ecommerce;

USE ecommerce;

-- Table for Categories
CREATE TABLE IF NOT EXISTS categories (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE
);

-- Table for Products (modified to include category_id)
CREATE TABLE IF NOT EXISTS products (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

-- Table for Users
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table for Orders
CREATE TABLE IF NOT EXISTS orders (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending', -- e.g., 'pending', 'completed', 'cancelled'
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Table for Order Items (details of products in an order)
CREATE TABLE IF NOT EXISTS order_items (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(10, 2) NOT NULL, -- Price at the time of order
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- Table for Carts (one cart per user)
CREATE TABLE IF NOT EXISTS carts (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE, -- Each user has one cart
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Table for Cart Items (products in a user's cart)
CREATE TABLE IF NOT EXISTS cart_items (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cart_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (cart_id) REFERENCES carts(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    UNIQUE (cart_id, product_id) -- A product can only be once in a cart
);

-- Clear existing sample data before inserting new
TRUNCATE TABLE products;
TRUNCATE TABLE categories;
ALTER TABLE categories AUTO_INCREMENT = 1; -- Reset auto-increment

-- Sample Data (added by Gemini)
-- Insert sample categories for Homme, Femme, Enfant
INSERT INTO categories (name) VALUES
('Homme'),
('Femme'),
('Enfant');

-- Insert sample products, linking to new categories (assuming IDs 1, 2, 3 for Homme, Femme, Enfant respectively)
INSERT INTO products (name, description, price, image, category_id) VALUES
('T-shirt Homme Élégant', 'T-shirt 100% coton, coupe classique.', 25.00, 'tshirt_homme.jpg', (SELECT id FROM categories WHERE name = 'Homme')),
('Jean Slim Homme', 'Jean confortable et moderne pour homme.', 59.99, 'jean_homme.jpg', (SELECT id FROM categories WHERE name = 'Homme')),
('Robe Fleurie Femme', 'Robe d\'été légère et élégante.', 45.00, 'robe_femme.jpg', (SELECT id FROM categories WHERE name = 'Femme')),
('Sac à Main Cuir Femme', 'Sac à main en cuir véritable, idéal pour le quotidien.', 75.00, 'sac_femme.jpg', (SELECT id FROM categories WHERE name = 'Femme')),
('Chaussures Enfants', 'Chaussures confortables et résistantes pour enfants.', 35.00, 'chaussures_enfant.jpg', (SELECT id FROM categories WHERE name = 'Enfant')),
('Jouet Éducatif Bébé', 'Jouet en bois stimulant pour le développement des tout-petits.', 29.99, 'jouet_enfant.jpg', (SELECT id FROM categories WHERE name = 'Enfant'));