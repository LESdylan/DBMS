--values passenger
INSERT INTO passengers ("first_name", "last_name", "age")
VALUES  ('Amelia', 'Earhart', 39); -- good
-- value checkIn

-- value airlines
INSERT INTO airlines ("name", "concourse")
VALUES ("Delta", "F");
-- value flight
INSERT INTO flights ("airline_id", "departure_airport_code","expected_departure", "arrival_airport_code","expected_arrival"  )
VALUES (1, 'ATL', '2023-08-03 06:46', 'BOS', '2023-08-03 09:09');

INSERT INTO check_ins("passenger_id","flight_id","check_in_time")
VALUES (1, 1, '2023-08-3 03:03' );