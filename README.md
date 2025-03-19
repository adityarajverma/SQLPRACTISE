# SQLPRACTISE
SQL Practise query

Just Generate three table using below QUery

1. Creating the Student Table:

Based on the information from the provided link, here are the SQL queries to create the `Student`, `Program`, and `Scholarship` tables:

**1. Creating the `Student` Table:**
CREATE TABLE Student (
    STUDENT_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GPA DECIMAL(3, 2),
    ENROLLMENT_DATE DATE,
    MAJOR VARCHAR(50)
);



**2. Creating the `Program` Table:**
CREATE TABLE Program (
    PROGRAM_ID INT PRIMARY KEY,
    PROGRAM_NAME VARCHAR(100),
    DEPARTMENT_NAME VARCHAR(100)
);
```


**3. Creating the `Scholarship` Table:**
CREATE TABLE Scholarship (
    SCHOLARSHIP_ID INT PRIMARY KEY,
    STUDENT_REF_ID INT,
    SCHOLARSHIP_AMOUNT DECIMAL(10, 2),
    SCHOLARSHIP_DATE DATE,
    FOREIGN KEY (STUDENT_REF_ID) REFERENCES Student(STUDENT_ID)
);
```


**Explanation:**

- **`Student` Table:**
  - `STUDENT_ID`: Unique identifier for each student.
  - `FIRST_NAME` and `LAST_NAME`: Student's first and last names.
  - `GPA`: Grade Point Average of the student.
  - `ENROLLMENT_DATE`: Date when the student enrolled.
  - `MAJOR`: Student's major field of study.

- **`Program` Table:**
  - `PROGRAM_ID`: Unique identifier for each program.
  - `PROGRAM_NAME`: Name of the academic program.
  - `DEPARTMENT_NAME`: Department offering the program.

- **`Scholarship` Table:**
  - `SCHOLARSHIP_ID`: Unique identifier for each scholarship.
  - `STUDENT_REF_ID`: References the `STUDENT_ID` in the `Student` table to associate the scholarship with a student.
  - `SCHOLARSHIP_AMOUNT`: Monetary amount of the scholarship.
  - `SCHOLARSHIP_DATE`: Date when the scholarship was awarded.

These table structures are designed to maintain data integrity and establish relationships between students, their academic programs, and scholarships.



Insert Queries

Here are `INSERT` queries to populate the `Student`, `Program`, and `Scholarship` tables with at least 15 records:

### **1. Inserting Data into the `Student` Table**
```sql
INSERT INTO Student (STUDENT_ID, FIRST_NAME, LAST_NAME, GPA, ENROLLMENT_DATE, MAJOR) VALUES
(1, 'John', 'Doe', 3.8, '2022-08-15', 'Computer Science'),
(2, 'Jane', 'Smith', 3.6, '2021-07-10', 'Mechanical Engineering'),
(3, 'Mike', 'Johnson', 3.2, '2023-01-05', 'Electrical Engineering'),
(4, 'Emily', 'Davis', 3.9, '2022-06-20', 'Business Administration'),
(5, 'David', 'Martinez', 3.5, '2020-09-12', 'Civil Engineering'),
(6, 'Sophia', 'Garcia', 3.7, '2019-10-25', 'Mathematics'),
(7, 'James', 'Brown', 3.3, '2021-03-14', 'Biology'),
(8, 'Olivia', 'Miller', 3.4, '2023-02-11', 'Physics'),
(9, 'Daniel', 'Wilson', 3.6, '2020-11-18', 'Chemistry'),
(10, 'Isabella', 'Taylor', 3.8, '2019-12-09', 'Economics'),
(11, 'Ethan', 'Anderson', 3.1, '2021-04-17', 'Political Science'),
(12, 'Mia', 'Thomas', 3.5, '2022-05-22', 'Psychology'),
(13, 'Alexander', 'Harris', 3.7, '2023-06-19', 'Sociology'),
(14, 'Charlotte', 'Clark', 3.8, '2020-07-15', 'Philosophy'),
(15, 'Benjamin', 'Lewis', 3.9, '2021-08-30', 'History');
```

---

### **2. Inserting Data into the `Program` Table**
```sql
INSERT INTO Program (PROGRAM_ID, PROGRAM_NAME, DEPARTMENT_NAME) VALUES
(1, 'Bachelor of Science in CS', 'Computer Science'),
(2, 'Bachelor of Engineering in ME', 'Mechanical Engineering'),
(3, 'Bachelor of Engineering in EE', 'Electrical Engineering'),
(4, 'Bachelor of Business Administration', 'Business Administration'),
(5, 'Bachelor of Engineering in CE', 'Civil Engineering'),
(6, 'Bachelor of Science in Math', 'Mathematics'),
(7, 'Bachelor of Science in Biology', 'Biology'),
(8, 'Bachelor of Science in Physics', 'Physics'),
(9, 'Bachelor of Science in Chemistry', 'Chemistry'),
(10, 'Bachelor of Science in Economics', 'Economics'),
(11, 'Bachelor of Arts in Political Science', 'Political Science'),
(12, 'Bachelor of Arts in Psychology', 'Psychology'),
(13, 'Bachelor of Arts in Sociology', 'Sociology'),
(14, 'Bachelor of Arts in Philosophy', 'Philosophy'),
(15, 'Bachelor of Arts in History', 'History');
```

---

### **3. Inserting Data into the `Scholarship` Table**
```sql
INSERT INTO Scholarship (SCHOLARSHIP_ID, STUDENT_REF_ID, SCHOLARSHIP_AMOUNT, SCHOLARSHIP_DATE) VALUES
(1, 1, 5000.00, '2022-09-01'),
(2, 2, 3000.00, '2021-08-15'),
(3, 3, 4000.00, '2023-02-10'),
(4, 4, 6000.00, '2022-07-20'),
(5, 5, 2500.00, '2020-10-01'),
(6, 6, 3500.00, '2019-11-25'),
(7, 7, 4500.00, '2021-04-15'),
(8, 8, 5000.00, '2023-03-01'),
(9, 9, 3200.00, '2020-12-05'),
(10, 10, 5500.00, '2019-11-20'),
(11, 11, 2700.00, '2021-05-10'),
(12, 12, 3300.00, '2022-06-15'),
(13, 13, 4200.00, '2023-07-05'),
(14, 14, 5300.00, '2020-08-30'),
(15, 15, 6000.00, '2021-09-12');
```

---

### **Summary**
- **Student Table**: Contains student details such as name, GPA, major, and enrollment date.
- **Program Table**: Stores the details of academic programs and their respective departments.
- **Scholarship Table**: Associates students with scholarship amounts and the date they received them.

This setup ensures proper relationships between students, programs, and scholarships in a structured manner. 🚀

For more detailed information and additional SQL queries, you can refer to the original article on GeeksforGeeks: citeturn0search0 
https://www.geeksforgeeks.org/sql-query-interview-questions/?ref=lbp


