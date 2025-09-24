-- Enable local infile globally 
SET GLOBAL local_infile = 1;

-- Use the correct schema 
CREATE DATABASE IF NOT EXISTS kaggle_dataset;
USE kaggle_dataset;

-- Drop table if it already exists
DROP TABLE IF EXISTS kaggle_data;

-- Create the table
CREATE TABLE kaggle_data (
    name VARCHAR(255),
    position VARCHAR(50),
    age INT,
    nation VARCHAR(100),
    club VARCHAR(100),
    league VARCHAR(100),
    matches INT,
    goals INT,
    points INT,
    player_value VARCHAR(50)  -- 'values' is a reserved keyword, renamed to player_value
);

-- Load the CSV file 
LOAD DATA LOCAL INFILE 'C:/Users/matty/Downloads/Untitled spreadsheet - transfermarkt_players.csv'
INTO TABLE kaggle_data
CHARACTER SET utf8
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 
