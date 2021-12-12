CREATE TABLE cities (
    name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    street VARCHAR(50) NOT NUll,
    house_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(5) NOT NULL,
    city_name VARCHAR(50) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE
);







