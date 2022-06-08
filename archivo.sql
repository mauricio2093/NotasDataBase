CREATE DATABASE CONTROL_STUDENTS
USE CONTROL_STUDENTS

CREATE TABLE Alumns(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(250),
    last_name VARCHAR(250),
    date_birth DATATIME
);

CREATE TABLE Subjects(
    code INT IDENTITY NOT NULL PRIMARY KEY,
    title VARCHAR(250),
    departament VARCHAR(250)
);

CREATE TABLE Alumns_Subjects(
    id INT NOT NULL PRIMARY KEY,
    code INT NOT NULL,
    new_evaluation INT,
    qualification VARCHAR(250),
    FOREIGN KEY(id) REFERENCES Alumns(id),
    FOREIGN KEY(code) REFERENCES Subjects(code)
);
