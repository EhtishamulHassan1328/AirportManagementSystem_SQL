# i200462_i201811_Assignment2_DB
--Q3
Explanation: This query selects the type of airplane and registration number from the AIRPLANE table where registration number is not in the list of registration numbers from the PLANE_SERVICE table.
--Q4
Explanation: This query selects the distinct name, address of corporations and capacity of planes that have a capacity greater than 200. It does this by joining the CORPORATION, AIRPLANE, and PLANE_TYPE tables on relevant columns and then filtering on the plane capacity.
--Q5
Explanation: This query selects the average salary of employees who work the night shift. It does this by selecting the average of the salaries of employees whose shift is 'Night'.
--Q6
Explanation: This query selects the top 5 employee names and their total maintenance hours in descending order. It does this by joining the EMPLOYEE and MAINTENANCE tables on relevant columns, grouping by employee ID and name, and then summing the maintenance hours for each employee.
--Q7
Explanation: This query selects the distinct registration numbers and airplane types from the AIRPLANE table that have been serviced between the date of the service and the current date. It does this by joining the AIRPLANE and PLANE_SERVICE tables on relevant columns and filtering on the service date.
--Q8
Explanation: This query selects the distinct names and addresses of owners who have made a purchase within the last month. It does this by joining the owners and purchases tables on relevant columns and filtering on the purchase date.
--Q9
Explanation: This query selects the pilot ID, name, and number of airplanes flown, in descending order of number of airplanes flown. It does this by selecting the pilot ID, name, and counting the number of distinct registration numbers from the AIRPLANE table that match the pilot's ID.
This query selects the location and capacity of the hangar(s) that have the highest capacity. It first selects the maximum capacity from the HANGAR table using the subquery (SELECT MAX(CAPACITY) FROM HANGAR). Then, it selects the location and capacity of the hangar(s) where the capacity matches the maximum capacity using the WHERE clause.
Q11:
This query retrieves the ID and name of each corporation along with the number of planes they own. It uses a left join to include corporations that don't have any planes in the result set, and groups the result by corporation ID and name to aggregate the count of planes.

Q12:
This query retrieves the model of each plane type along with the average number of hours flown by planes of that type. It joins the plane type table with the airplane table, and then left joins with the plane service table to include plane types that haven't had any service yet. It groups the result by plane type model to calculate the average.

Q13:
This query retrieves the name and address of owners who have purchased a plane that has undergone maintenance by an employee who is not certified to work on that type of plane. It joins several tables including owners, purchases, airplane, plane service, maintenance, and employee, and filters the result to only include owners whose planes have undergone maintenance by an unqualified employee.

Q14:
This query retrieves the name and address of owners who have purchased a plane that is stored in a hangar located at the owner's address. It joins several tables including owners, purchases, corporation, and hangar, and filters the result to only include owners whose planes are stored in a hangar at their address.

Q15:
This query retrieves the names of pilots who have flown a plane that has undergone maintenance between a given date range. It joins several tables including pilot, airplane, plane service, and maintenance, and filters the result to only include pilots whose planes have undergone maintenance within the specified date range.

Q16:
This query retrieves the name of each employee along with the total number of hours they have spent on maintenance for planes purchased by a specific corporation (Apple Inc. in this case). It joins several tables including employee, maintenance, airplane, purchases, and corporation, and filters the result to only include maintenance hours for planes purchased by Apple Inc. It groups the result by employee name to calculate the total maintenance hours.

Q17:
This query retrieves the registration number and type of planes that don't belong to any corporation. It selects all planes from the airplane table that have a registration number not present in the corporation table.

Q18:
This query retrieves the name and address of owners who have purchased the same plane type from different corporations within the last month. It joins several instances of the purchases table and filters the result to only include purchases from different corporations of the same plane type within the last month.

Q19:
This query retrieves the location of each hangar along with the total number of planes stored there. It joins the airplane and hangar tables and groups the result by hangar location to calculate the total number of planes stored there.

Q20:
This query retrieves the number of planes for each plane type. It selects the plane type and counts the number of occurrences in the airplane table, grouping the result by plane type.

Q21:
This query retrieves the registration number, type, and total number of services for each plane. It left joins the airplane table with the plane service table, groups the result by registration number and type, and counts the number of services for each plane.

Q22:
This query retrieves the average salary for employees in each shift. It groups the employee table by shift and calculates the average salary for each shift.

Q23:
This query retrieves the name of each owner along with the total number of planes they have purchased. It joins the owners, purchases, and airplane tables and groups the result by owner name to calculate the total number of planes purchased.

Q24:
This query selects the name and the total number of airplanes each pilot is associated with from the PILOT table, groups the results by the pilot's name and the total number of airplanes and then returns the name and the total number of airplanes associated with each pilot.

Q25:
The first query selects all columns from the PLANE_TYPE table where the weight is greater than 5000. This query would return all plane types with a weight greater than 5000, likely indicating larger or more heavy-duty planes.

The second query selects all columns from the AIRPLANE table where the OF_TYPE column is equal to 'Boeing 747'. This query would return all planes with the type 'Boeing 747', likely providing information about specific planes of that type in the database.
