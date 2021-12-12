-- SELECT * FROM users
-- WHERE first_name LIKE 'Max%';

-- SELECT COUNT(id) FROM locations;

-- SELECT cities.name,COUNT(locations.id) FROM cities 
-- LEFT JOIN locations ON locations.city_name=cities.name
-- GROUP BY cities.name;

SELECT cities.name,COUNT(locations.id) FROM cities 
LEFT JOIN locations ON locations.city_name=cities.name
GROUP BY cities.name
HAVING COUNT(locations.id)>1;