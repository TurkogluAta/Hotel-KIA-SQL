#1.Create a view of staff details at hotel H01 excluding salaries
CREATE VIEW exSalary AS SELECT StaffID, FirstName, LastName, Address, TelNo, Position, Sex, DOB, HotelID FROM staff WHERE HotelID = 'H01';
#Run this code to see exsalary
select * from exSalary;

#2.LIST staff who work in City'Toronto'
SELECT FirstName, LastName FROM staff WHERE HotelID = (SELECT HotelID FROM Hotel WHERE City = 'Toronto');

#3.List all the staff whose salary is greater than the avergae salary and show how much
SELECT StaffID, FirstName, LastName, Salary, Salary - (SELECT AVG(salary) FROM staff) AS SalaryDifference FROM staff WHERE salary > (SELECT AVG(salary) FROM staff);

#4.Get the total revenue earned by each hotel in year, prediting all rooms are priced on current rates
SELECT HotelName, SUM(RoomPrice * 365) AS TotalEarning FROM Hotel JOIN Room ON Hotel.HotelID = Room.HotelID GROUP BY HotelName;

#5.view the total number of rooms in each hotel
SELECT HotelName, COUNT(*) AS TotalRooms FROM Hotel JOIN Room ON Hotel.HotelID = Room.HotelID GROUP BY HotelName;

#6.Show the names of all managers in any of the hotels
SELECT CONCAT(Title, ' ', FirstName, ' ', LastName) AS FullName FROM Staff WHERE Position = 'Manager';

#7.Show the hotel name, room number, and room price for all available rooms in 'Hotel Sunset'
SELECT HotelName, RoomNo, RoomPrice FROM Hotel JOIN Room ON Hotel.HotelID = Room.HotelID WHERE HotelName = 'Hotel Sunset' AND Availability = 'Available';

#8.Show the details of the cheapest room available in all hotels
SELECT * FROM Room WHERE RoomPrice = (SELECT MIN(RoomPrice) FROM Room);

#9.Show the number of staff members who are doctors in 'Hotel Sunset'
SELECT COUNT(*) FROM Staff WHERE Position = 'Housekeeper' AND HotelID = 'H01';

#10.List all staff members whose first name starts with "T" and who work in a hotel in Paris
SELECT s.StaffID, s.FirstName, s.LastName, h.HotelName, h.City FROM Staff s JOIN Hotel h ON s.HotelID = h.HotelID WHERE s.FirstName LIKE 'T%' AND h.City = 'Toronto';

#11.List all the staff members who were born in the 1990s, sorted by their salary in descending order
SELECT StaffID, CONCAT(FirstName, ' ', LastName) AS Name, Position, Salary FROM Staff WHERE YEAR(DOB) BETWEEN 1990 AND 1999 ORDER BY Salary DESC;

#12.Find the staff members who work in the same position as Michael Hagne
SELECT * FROM Staff WHERE Position = (SELECT Position FROM Staff WHERE FirstName = 'Thad' AND LastName = 'Milo');

#13.Find the staff members who have the same first name and work in the same hotel:
SELECT S1.StaffID, S1.FirstName, S1.LastName, S1.HotelID FROM Staff S1 JOIN Staff S2 ON S1.FirstName = S2.FirstName AND S1.HotelID = S2.HotelID
WHERE S1.StaffID < S2.StaffID UNION ALL SELECT S2.StaffID, S2.FirstName, S2.LastName, S2.HotelID FROM Staff S1
JOIN Staff S2 ON S1.FirstName = S2.FirstName AND S1.HotelID = S2.HotelID WHERE S1.StaffID < S2.StaffID;

