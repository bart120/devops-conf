CREATE DATABASE mydb;
CREATE TABLE messages (id SERIAL PRIMARY KEY, content TEXT NOT NULL);
INSERT INTO messages (content) VALUES ('Hello from PostgreSQL!');