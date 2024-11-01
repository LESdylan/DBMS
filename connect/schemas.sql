CREATE TABLE users (
    id INT PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL CHECK(password NOT IN(first_name, last_name))
);
CREATE TABLE establishments (
    id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    year YEAR NOT NULL
);

CREATE TABLE companies (
    id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    industry VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

CREATE TABLE user_connection(
    user_id1 INT,
    user_id2 INT,
    start_date DATETIME NOT NULL ,
    end_date DATETIME,
    PRIMARY KEY (user_id1, user_id2)
    FOREIGN KEY (user_id1) REFERENCES users(id),
    FOREIGN KEY (user_id2) REFERENCES users(id),
    CONSTRAINT CHECK (user_id1 <> user_id2)
);
CREATE TABLE user_schools(
    user_id INT NOT NULL,
    establishment_id INT NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME ,
    degree VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (establishment_id) REFERENCES establishments(id)
);
CREATE TABLE user_company(
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    start_date  DATETIME NOT NULL,
    end_date DATETIME,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
)