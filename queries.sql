-- write your queries here

-- first query
SELECT * FROM owners
FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- second query
SELECT first_name, last_name, COUNT(make) FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name ORDER BY first_name;

-- third query
SELECT first_name, last_name, AVG(price) AS average_price, COUNT(make) FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name HAVING COUNT(make) > 1 AND AVG(price) > 10000 
ORDER BY first_name DESC;