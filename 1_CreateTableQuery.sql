CREATE DATABASE schooldb;
USE schooldb;
CREATE TABLE Student (
    STUDENT_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GPA DECIMAL(3, 2),
    ENROLLMENT_DATE DATE,
    MAJOR VARCHAR(50)
);

CREATE TABLE Program (
    PROGRAM_ID INT PRIMARY KEY,
    PROGRAM_NAME VARCHAR(100),
    DEPARTMENT_NAME VARCHAR(100)
);

CREATE TABLE Scholarship (
    SCHOLARSHIP_ID INT PRIMARY KEY,
    STUDENT_REF_ID INT,
    SCHOLARSHIP_AMOUNT DECIMAL(10, 2),
    SCHOLARSHIP_DATE DATE,
    FOREIGN KEY (STUDENT_REF_ID) REFERENCES Student(STUDENT_ID)
);
