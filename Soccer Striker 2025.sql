SELECT name, goals FROM kaggle_data ORDER BY goals DESC LIMIT 10;

SELECT AVG(age) AS avg_age FROM kaggle_data;

SELECT nation, COUNT(*) AS player_count FROM kaggle_data GROUP BY nation ORDER BY player_count DESC;

SELECT name, goals, points FROM kaggle_data ORDER BY points DESC LIMIT 10;

SELECT * FROM kaggle_data WHERE age < 21; 

SELECT name, goals
FROM kaggle_data
ORDER BY goals DESC
LIMIT 10;

SELECT name, matches
FROM kaggle_data
ORDER BY matches DESC
LIMIT 10;

SELECT name, goals, matches, 
       ROUND(goals / matches, 2) AS goals_per_match
FROM kaggle_data
WHERE matches > 0
ORDER BY goals_per_match DESC
LIMIT 10;

SELECT *
FROM kaggle_data
WHERE matches = 0 AND goals = 0;

SELECT name, matches, goals
FROM kaggle_data
WHERE matches >= 100 AND goals < 5
ORDER BY matches DESC;

SELECT name, goals, matches, 
       ROUND(goals / matches, 2) AS goals_per_match
FROM kaggle_data
WHERE matches > 0 AND goals / matches > 0.5
ORDER BY goals_per_match DESC;

SELECT name, age, goals
FROM kaggle_data
WHERE age < 21
ORDER BY goals DESC
LIMIT 10;

SELECT 
  CASE 
    WHEN goals = 0 THEN '0 Goals'
    WHEN goals BETWEEN 1 AND 5 THEN '1-5 Goals'
    WHEN goals BETWEEN 6 AND 10 THEN '6-10 Goals'
    WHEN goals BETWEEN 11 AND 20 THEN '11-20 Goals'
    ELSE '21+ Goals'
  END AS goal_range,
  COUNT(*) AS players_in_range
FROM kaggle_data
GROUP BY goal_range
ORDER BY players_in_range DESC;

SELECT age, COUNT(*) AS total_players
FROM kaggle_data
GROUP BY age
ORDER BY age;