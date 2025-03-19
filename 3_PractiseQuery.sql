-- 1. Write a SQL query to fetch "FIRST_NAME" from the Student table in upper case and use ALIAS name as STUDENT_NAME.
select upper(first_name) as STUDENT_NAME from student; 
-- 2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
select DISTINCT  major from student ;
-- 3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
select substring(first_name,1,3) from student;
-- 4. Write a SQL query to find the position of alphabet ('a') int the first name column 'Shivansh' from Student table.
select instr(first_name,'a') from student where first_name='Alexander';
-- 5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.
select distinct major, length(major) from student;
-- 6. Write a SQL query to print FIRST_NAME from the Student table after replacing 'a' with 'A'.
select replace(first_name,'a','A') from student;
-- 7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.
select concat(First_name," " ,Last_name) as COMPLETE_NAME from student;
-- 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
select * from student order by first_name asc , major desc;
-- 9. Write a SQL query to print details of the Students with the FIRST_NAME as 'Daniel' and 'David' from Student table.
select * from student where first_name in ('Daniel','David');
-- 10. Write a SQL query to print details of the Students excluding FIRST_NAME as 'Daniel' and 'David' from Student table.
select * from student where first_name not in ('Daniel','David'); 
-- 11. Write a SQL query to print details of the Students whose FIRST_NAME ends with 'a'.
select * from student where first_name like('%a');
-- 12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains three alphabets.
select * from student where first_name like('%a') and length(first_name)= 3;
-- 13. Write an SQL query to print details of the Students whose GPA lies between 3.2 and 3.8.
select * from student where GPA between 3.2 and 3.8;
-- 14. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.
select count(*) from student where major='Computer Science';
-- 15. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.
select concat(first_name, " " , last_name) as FULL_NAME from student where GPA between 3.2 and 3.8;
-- 16. Write an SQL query to fetch the no. of Students for each MAJOR subject in the descending order.
select Major, Count(*) from student group by Major order by major desc;
-- 17. Display the details of students who have received scholarships, including their names, scholarship amounts, and scholarship dates.
select st.first_name, scl.scholarship_amount,scl.scholarship_date from student as st join scholarship as scl on st.student_id=scl.student_ref_id;
select st.first_name, scl.scholarship_amount,scl.scholarship_date from student as st join scholarship as scl where st.student_id=scl.student_ref_id;
-- 18. Write an SQL query to show only odd rows from Student table.
SELECT * FROM Student WHERE student_id % 2 != 0;
-- 19. Write an SQL query to show only even rows from Student table.
SELECT * FROM Student WHERE student_id % 2 = 0;
-- 20. List all students and their scholarship amounts if they have received any. If a student has not received a scholarship, display NULL for the scholarship details.
select * from student as st left join scholarship as scl on st.student_id =scl.student_ref_id;
-- 21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.
select * from student order by gpa desc limit 5;
-- 22. Write an SQL query to determine the nth (say n=5) highest GPA from a table.
-- 23. Write an SQL query to determine the 5th highest GPA without using LIMIT keyword.
-- 24. Write an SQL query to fetch the list of Students with the same GPA.
-- 25. Write an SQL query to show the second highest GPA from a Student table using sub-query.
-- 26. Write an SQL query to show one row twice in results from a table.
-- 27. Write an SQL query to list STUDENT_ID who does not get Scholarship.
-- 28. Write an SQL query to fetch the first 50% records from a table.
-- 29. Write an SQL query to fetch the MAJOR subject that have less than 4 people in it.
-- 30. Write an SQL query to show all MAJOR subject along with the number of people in there.
-- 31. Write an SQL query to show the last record from a table.
-- 32. Write an SQL query to fetch the first row of a table.
-- 33. Write an SQL query to fetch the last five records from a table.
-- 34. Write an SQL query to fetch three max GPA from a table using co-related subquery.
-- 35. Write an SQL query to fetch three min GPA from a table using Correlated subquery.
-- 36. Write an SQL query to fetch nth max GPA from a table.
-- 37. Write an SQL query to fetch MAJOR subjects along with the max GPA in each of these MAJOR subjects.
-- 38. Write an SQL query to fetch the names of Students who has highest GPA.
-- 39. Write an SQL query to show the current date and time.
-- 40. Write a query to create a new table which consists of data and structure copied from the other table (say Student) or clone the table named Student.
-- 41. Write an SQL query to update the GPA of all the students in 'Computer Science' MAJOR subject to 7.5
-- 42. Write an SQL query to find the average GPA for each major.
-- 43. Write an SQL query to show the top 3 students with the highest GPA.
-- 44. Write an SQL query to find the number of students in each major who have a GPA greater than 7.5.
-- 45. Write an SQL query to find the students who have the same GPA as 'Shivansh Mahajan'

insert into student(student_id,FIRST_NAME ,LAST_NAME ,GPA ,ENROLLMENT_DATE ,MAJOR ) values('16','aditya','verma','9.00','2020-07-15','SCIENCE');
