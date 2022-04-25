# Employee Database Challenge

## Project Overview
Pewlett Hackard has been in existance for many years and has thousands of employees.  As baby boomers begin to retire, the company requires information to offer a retirement package for those about to retire, as well as information to determine which positions need to be filled in the near future.  This project will modify an existing SQL database query containing relevant employee information and, using PostgreSQL, will determine:
- #1, The number of retiring employees by title,
- #2, The employees eligible for the Mentorship Program
- #3, A written report on the employee database analysis.



## Deliverable #1:
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because we want to include only current employees in our analysis, be sure to exclude those employees who have already left the company.

## Deliverable #2:
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

###
![Mentorship Eligibility](https://user-images.githubusercontent.com/98435855/165019075-3378b533-b4d8-4b53-9df5-709d5d6b6611.png)

## Deliverable #3:  Analysis of Pewlett Hackard

### Overview
- This additional analysis looks at the number of retiring employees by title, as well as the employees eligible for the Mentorship Program.

### Results
- Retiring Titles: There are 7 titles expected to retire, with Senior Engineer and Senior Staff positions resulting in over half of the positions.

![image](https://user-images.githubusercontent.com/98435855/165019590-f97a56ff-bf11-4595-a871-d0a2d2e54a5d.png)

- Unique Titles:  There are 72,458 active employees, according to the "unique_titles" csv attachment.

- Retirement Departments:  The Development department has the most projected retirements upcoming (9,281), with the Production department second (8,174), as shown in the "retirement_depys" csv attachment.
 
- Mentorship Eligibility:  There are currently 1,549 active employees who are eligible for the Mentorship Program, per the "mentorship_eligibility" csv file attached.

### Summary
The active workforce of 72,458 includes approximately 36,600 (50%) who are expected to retire in the next 3 years.  Most of these positions are Senior Engineer and Senior Staff positions.   
