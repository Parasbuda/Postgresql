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

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL CHECK (LENGTH(first_name)>3),
    last_name VARCHAR(20) NOT NULL CHECK (LENGTH(last_name)>2),
    birth_date DATE NOT NULL,
    email VARCHAR(20) NOT NULL
);

CREATE TABLE organizers (
    password VARCHAR(10) NOT NULL CHECK (LENGTH(password)>5),
    user_id INT PRIMARY KEY REFERENCES users ON DELETE CASCADE
);
 
CREATE TABLE tags (
    name VARCHAR(20) PRIMARY KEY
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY ,
    name VARCHAR(50) NOT NULL CHECK (LENGTH(name)>5),
    date_planned TIMESTAMP NOT NULL,
    image VARCHAR(300),
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants>0),
    min_age INT CHECK (min_age>0),
    location_id INT REFERENCES locations ON DELETE CASCADE,
    organizer_id INT REFERENCES organizers on DELETE CASCADE
    ); 

CREATE TABLE events_user (
    id SERIAL PRIMARY KEY,
    event_id INT REFERENCES events ON DELETE CASCADE,
    user_id INT REFERENCES users ON DELETE CASCADE
);

CREATE TABLE events_tags (
    id SERIAL PRIMARY KEY,
    event_id INT REFERENCES events ON DELETE CASCADE,
    tag_name VARCHAR(20) REFERENCES tags ON DELETE CASCADE
);




