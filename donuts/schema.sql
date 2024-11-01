CREATE TABLE ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    pounds DECIMAL(10, 2) NOT NULL
);

CREATE TABLE donuts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    gluten_free TINYINT(1) CHECK(gluten_free IN (0, 1)),
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    history_order_id INT,
    FOREIGN KEY (history_order_id) REFERENCES orders(id)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    donut_id INT NOT NULL,
    customer_id INT,
    FOREIGN KEY (donut_id) REFERENCES donuts(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
