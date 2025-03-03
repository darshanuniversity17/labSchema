
--1. Display all student details along with their city and course names.
	SELECT 
    s.studentid, 
    s.name AS StudentName, 
    s.spi, 
    c.name AS City, 
    co.name AS Course
	FROM Student s
	JOIN City c ON s.cityid = c.cityid
	JOIN Course co ON s.courseid = co.courseid;

--	**Expected Output:**  
--| studentid | StudentName         | spi | City      | Course |
--|-----------|---------------------|-----|-----------|--------|
--| 301       | Raj Verma           | 8.5 | Mumbai    | MBA    |
--| 302       | Priya Das           | 7.8 | Delhi     | BscIT  |
--| 303       | Amit Rao            | 8.2 | Bangalore | B.Com  |
--| ...       | ...                 | ... | ...       | ...    |
--| 320       | Shweta Patel        | 8.6 | Kolkata   | BBA    |



--2. Display each city and the number of students from that city.  
--3. Display each course and the number of students enrolled in it.  
--4. Display the average SPI of students grouped by city.  
--5. Display the maximum SPI for each course.  
--6. Display the minimum SPI for each city.  
--7. List all students sorted by SPI in descending order (with city and course details).  
--8. List each course along with the average SPI of its enrolled students.  
--9. List the details of students with an SPI greater than 8.5.  
--10. List all students whose names contain the string 'Patel'.  
--11. Count the number of students with an SPI above 8 in each course.  
--12. Count the number of students with an SPI below 8 in each city.  
--13. List students whose SPI is between 7.5 and 8.5 (inclusive).  
--14. List all students from Mumbai.  
--15. List all students from Delhi.  
--16. Display each course along with its students’ SPIs, sorted by course name (ascending) and then by SPI (ascending).  
--17. List distinct cities where students have enrolled.  
--18. Display details of students enrolled in courses 'MBA' and 'BCA'.  
--19. Count the total number of students enrolled across all courses.  
--20. Display students whose names start with the letter 'S'.  
--21. Display all student details sorted by student name (alphabetically).  
--22. List each city along with the total SPI (sum) of its students.  
--23. List each course with the difference between its maximum and minimum SPI.  
--24. Display the number of students grouped by both city and course.  
--25. Display each course along with its student details, sorting the students by SPI in descending order.  

