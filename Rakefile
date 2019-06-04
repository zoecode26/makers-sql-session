require 'pg'

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE country_data;')

  connection = PG.connect :dbname => 'country_data';
  connection.exec('CREATE TABLE countries (id SERIAL PRIMARY KEY, name VARCHAR(20), continent VARCHAR(20), population VARCHAR(20), density VARCHAR(20), gni VARCHAR(20));')
end

task :seed_db do
  connection = PG.connect :dbname => 'country_data';
  connection.exec ('TRUNCATE TABLE countries;')
  connection.exec ("INSERT INTO countries VALUES (1, 'United Kingdom', 'Europe', '86', '243', '40,600');")
  connection.exec ("INSERT INTO countries VALUES (2, 'France', 'Europe', '67', '123', '38.160');")
  connection.exec ("INSERT INTO countries VALUES (3, 'Spain', 'Europe', '47', '93', '27,150');")
  connection.exec ("INSERT INTO countries VALUES (4, 'Germany', 'Europe', '83', '237', '43,700');")
  connection.exec ("INSERT INTO countries VALUES (5, 'Austria', 'Europe', '9', '107', '45,360');")
  connection.exec ("INSERT INTO countries VALUES (6, 'Switzerland', 'Europe', '9', '214', '81,130');")
  connection.exec ("INSERT INTO countries VALUES (7, 'Kenya', 'Africa', '50', '87', '1460');")
  connection.exec ("INSERT INTO countries VALUES (8, 'South Africa', 'Africa', '57', '47', '5430');")
  connection.exec ("INSERT INTO countries VALUES (9, 'Tunisia', 'Africa', '12', '74', '3490');")
  connection.exec ("INSERT INTO countries VALUES (10, 'Uganda', 'Africa', '42', '214', '600');")
  connection.exec ("INSERT INTO countries VALUES (11, 'Brazil', 'South America', '209', '25', '8,610');")
  connection.exec ("INSERT INTO countries VALUES (12, 'Uraguay', 'South America', '4', '20', '15,250');")
  connection.exec ("INSERT INTO countries VALUES (13, 'Argentinia', 'South America', '44', '16', '13,030');")
  connection.exec ("INSERT INTO countries VALUES (14, 'Chile', 'South America', '18', '24', '13,610');")
  connection.exec ("INSERT INTO countries VALUES (15, 'Panama', 'South America', '4', '5', '13,280');")
  connection.exec ("INSERT INTO countries VALUES (16, 'Japan', 'Asia', '127', '348', '38,520');")
  connection.exec ("INSERT INTO countries VALUES (17, 'China', 'Asia', '1387', '148', '8690');")
  connection.exec ("INSERT INTO countries VALUES (18, 'India', 'Asia', '1339', '450', '1790');")
  connection.exec ("INSERT INTO countries VALUES (19, 'Afghanistan', 'Asia', '36', '54', '560');")
  connection.exec ("INSERT INTO countries VALUES (20, 'USA', 'North America', '325', '36', '59,160');")
end
