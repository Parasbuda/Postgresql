-- SELECT events.id AS event_id,
--  events.name,
--  events.date_planned,
--  locations.title,
--  locations.street,
--  locations.house_number
--  FROM events 
-- INNER JOIN locations ON events.location_id=locations.id;

-- SELECT events.id AS event_id,
--  events.name,
--  events.date_planned,
--  locations.title,
--  locations.street,
--  locations.house_number,
--  users.first_name,
--  users.last_name
-- FROM events 
-- INNER JOIN locations ON events.location_id=locations.id
-- INNER JOIN events_user ON events_user.event_id=events.id
-- INNER JOIN users ON users.id=events_user.user_id;

-- SELECT * FROM locations
-- LEFT JOIN events ON events.location_id=locations.id;

-- SELECT * FROM cities
-- LEFT JOIN locations ON locations.city_name=cities.name
-- INNER JOIN events ON events.location_id=locations.id;

SELECT * FROM cities
LEFT JOIN locations ON locations.city_name=cities.name
LEFT JOIN events ON events.location_id=locations.id
WHERE cities.name='Munich';