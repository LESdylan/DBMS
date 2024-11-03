CREATE TABLE IF NOT EXISTS Shops(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(64) NOT NULL,
    city VARCHAR(64) NOT NULL,
    pc VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(10) NOT NULL, -- hashed code up to 10 digit
    price_per_product DECIMAL(6,2) NOT NULL,
    description VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Inventory(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    shop_id INT NOT NULL,
    date DATETIME NOT NULL,
    qty INT,
    FOREIGN KEY `product_id` REFERENCES `products`(`id`),
    FOREIGN KEY `shop_id` REFERENCES `shops`(`id`) 
);

CREATE INDEX `search_by_localisation` ON `Shops` ('country', 'city', 'cp');