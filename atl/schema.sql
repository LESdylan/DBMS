CREATE TABLE passengers (
    passenger_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL
);

CREATE TABLE airlines (
    airline_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    concourse ENUM('A', 'B', 'C', 'D', 'E', 'F', 'T') NOT NULL
);
CREATE TABLE flights (
    flight_id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_number VARCHAR(255) NOT NULL,
    airline_id INTEGER NOT NULL,
    departure_airport_code VARCHAR(255) NOT NULL,
arrival_airport_code VARCHAR(255) NOT NULL,
    expected_departure DATETIME NOT NULL,
    expected_arrival DATETIME NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES airlines(airline_id)
);

CREATE TABLE check_ins (
    check_in_id INTEGER PRIMARY KEY AUTOINCREMENT,
    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,
    check_in_time DATETIME NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);