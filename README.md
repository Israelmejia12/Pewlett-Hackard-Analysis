# Pewlett-Hackard-Analysis

##Overview of the analysis: In this report we have determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Using the ERD I have created a reference using SQL queries as well as Excel, I created a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. I also use the DISTINCT ON statement to create a table that contains the most recent title of each employee, not only that but I also use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. I remove duplicate entries for some employees who have switched titles over the years. I excluded the employees that  already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.


##Results: 
 -The first thing we did was concatinate the emp_info and title list to get the table below. 
 ![Graph](https://github.com/Israelmejia12/Pewlett-Hackard-Analysis/blob/f8e7352bd69e17cdce0b19d73d34a201c968e54e/Table%201.png)
 
 
 - In the table we have all of the infirmation we need for the employees including but not limitied to employee ID#, full name, and their title in the company. 
 - Another point that we can make by looking at this table is that most of the people that are about to retire have senior positions withing the company. 

![picture](https://github.com/Israelmejia12/Pewlett-Hackard-Analysis/blob/f8e7352bd69e17cdce0b19d73d34a201c968e54e/Table%202.png)

### The Image above gives a clean data without duplicates. 

![picture](https://github.com/Israelmejia12/Pewlett-Hackard-Analysis/blob/f8e7352bd69e17cdce0b19d73d34a201c968e54e/Table%203.png)

 - In the table above we concatenated the two list inestad of presenting two tables, because we wanted to exclude the data we don't need as well as showing the information that is useful to us in this report. 
 
#Summary: 
###How many roles will need to be filled as the "silver tsunami" begins to make an impact?
More than 50% of the work force is looking for retirement withing the next 10 years. I bilieve that there is still time for the company to traing the junior level employees, but a plan needs to be put in place. 

## For such a big company as Pewlett Hackard, with so many employees, a program where juinior level employees can learn seneior level posisions and responsability should be made. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? Looking at the data it seems that there is notm but with the amount of time available the company has time to put a place in place. 
