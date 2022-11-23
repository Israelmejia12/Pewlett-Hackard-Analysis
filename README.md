# Pewlett-Hackard-Analysis

##Overview of the analysis: In this report we have determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Using the ERD I have created a reference using SQL queries as well as Excel, I created a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. I also use the DISTINCT ON statement to create a table that contains the most recent title of each employee, not only that but I also use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. I remove duplicate entries for some employees who have switched titles over the years. I excluded the employees that  already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.


##Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
 -The first thing we did was concatinate the emp_info and title list to get the table below. 
 
 
  - The Reason we concatenated the two list inestad of presenting two tables is because we wanted to exclude the data we don't need as well as showing the information that is useful to us in this report. 
 - In the table we have all of the infirmation we need for the employees including but not limitied to employee ID#, full name, and their title in the company. 
 - Another point that we can make by looking at this table is that most of the people that are about to retire have senior positions withing the company. 



Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?

###I Believe that for such a big company with so many employees, a program where juinior level employees can learn seneior level posisions and responsability should be made. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? I belive that they are. Even though most of these 
Deliverable 3 Requirements
