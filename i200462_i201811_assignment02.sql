CREATE DATABASE assignment002;

USE assignment002;

CREATE TABLE PLANE_TYPE (
  Model VARCHAR(50) PRIMARY KEY,
  Capacity INT,
  Weight INT
);

CREATE TABLE HANGAR (
  Number INT PRIMARY KEY,
  Capacity INT,
  Location VARCHAR(50)
);

CREATE TABLE AIRPLANE (
  RegNum INT PRIMARY KEY,
  AirplaneID INT,
  OF_TYPE VARCHAR(50),
  STORED_IN INT,
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE(Model),
  FOREIGN KEY (STORED_IN) REFERENCES HANGAR(Number)
);

CREATE TABLE PLANE_SERVICE (
  PlaneServiceID INT PRIMARY KEY,
  Date DATE,
  Hours INT,
  Work_Code VARCHAR(50),
  RegNum INT,
  FOREIGN KEY (RegNum) REFERENCES AIRPLANE(RegNum)
);


CREATE TABLE CORPORATION (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR(255),
  Phone VARCHAR(20),
  OWNID INT
);

CREATE TABLE EMPLOYEE (
  ID INT PRIMARY KEY,
  NAME VARCHAR(50),
  ADDRESS VARCHAR(50),
  SALARY DECIMAL(10,2),
  SHIFT VARCHAR(50)
);

CREATE TABLE MAINTENANCE (
  ID INT PRIMARY KEY,
  EmployeeID INT,
  Hours INT,
  WorkDate DATE
);

CREATE TABLE PILOT (
  PILOTID INT PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR(50),
  LicNum VARCHAR(50),
  NoAirplanes INT NOT NULL,
  --airplane_regNUMS INT[] DEFAULT '{}'
);


CREATE TABLE owners (
    owner_id INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    purchaser_id INT,
    corporation_name VARCHAR(255),
    plane_type VARCHAR(255),
    purchase_date DATE
);


INSERT INTO PLANE_TYPE (Model, Capacity, Weight) VALUES
('Boeing 747', 416, 394000),
('Airbus A380', 853, 575000),
('Cessna 172', 4, 2300),
('Piper PA-28', 4, 1100),
('Beechcraft King Air', 9, 12500);

INSERT INTO PLANE_TYPE (Model, Capacity, Weight) VALUES
('Airbus A320', 180, 42000),
('Boeing 737-800', 189, 41730),
('Embraer E145', 50, 24617),
('ATR 42', 48, 18960),
('Cessna 173', 4, 1420),
('Beechcraft King Air1', 9, 12038),
('Gulfstream G650ER', 19, 54097),
('Boeing 777-200LR', 301, 347814),
('Airbus A380-800', 853, 560000),
('Bombardier CRJ900', 88, 37193);

INSERT INTO HANGAR (Number, Capacity, Location)
VALUES 
  (1, 10, 'Karachi'),
  (2, 150, 'Lahore'),
  (3, 20, 'Islamabad'),
  (4, 250, 'Rawalpindi'),
  (5, 30, 'Peshawar'),
  (6, 350, 'Quetta'),
  (7, 40, 'Faisalabad'),
  (8, 450, 'Multan'),
  (9, 500, 'Hyderabad'),
  (10, 550, 'Gujranwala'),
  (11, 600, 'Sialkot'),
  (12, 650, 'Sargodha'),
  (13, 700, 'Bahawalpur'),
  (14, 75, 'Sukkur'),
  (15, 800, 'Jhang'),
  (16, 850, 'Sheikhupura'),
  (17, 900, 'Mardan'),
  (18, 950, 'Chiniot'),
  (19, 1000, 'Kohat'),
  (20, 1050, 'Muzaffargarh');



INSERT INTO AIRPLANE (RegNum, AirplaneID, OF_TYPE, STORED_IN)
VALUES 
  (1001, 1, 'Boeing 747', 11),
  (1002, 2, 'Boeing 787', 12),
  (1003, 3, 'Airbus A380', 13),
  (1004, 4, 'Airbus A350', 14),
  (1005, 5, 'Boeing 737', 15);
  



INSERT INTO AIRPLANE (RegNum, AirplaneID, OF_TYPE, STORED_IN) VALUES
(101, 1001, 'Boeing 747', 1),
(102, 1002, 'Airbus A380', 2),
(103, 1003, 'Cessna 172', 4),
(104, 1004, 'Piper PA-28', 5),
(105, 1005, 'Beechcraft King Air', 3);


INSERT INTO AIRPLANE (RegNum, AirplaneID, OF_TYPE, STORED_IN) VALUES
(1, 1001, 'Boeing 747', 1),
(2, 1002, 'Airbus A380', 2),
(3, 1003, 'Cessna 172', 4),
(4, 1004, 'Piper PA-28', 5),
(5, 1005, 'Beechcraft King Air', 3);

INSERT INTO AIRPLANE (RegNum, AirplaneID, OF_TYPE, STORED_IN) VALUES
(11, 1, 'Boeing 747', 1),
(21, 2, 'Airbus A380', 2),
(31, 3, 'Cessna 172', 4),
(41, 4, 'Piper PA-28', 5),
(51, 5, 'Beechcraft King Air', 3);


INSERT INTO PLANE_SERVICE (PlaneServiceID, Date, Hours, Work_Code, RegNum) VALUES
(1, '2022-01-01', 100, 'Oil Change', 1),
(2, '2022-02-01', 200, 'Tire Replacement', 2),
(3, '2022-03-01', 50, 'Inspection', 3),
(4, '2022-04-01', 300, 'Engine Repair', 4),
(11, '2022-05-12', 8, 'OIL_CHANGE', 1),
(12, '2022-06-08', 4, 'TIRE_ROTATION', 2),
(13, '2023-02-04', 12, 'ENGINE_OVERHAUL', 3),
(14, '2022-08-20', 6, 'BRAKE_REPLACEMENT', 4),
(21, '2023-03-12', 8, 'OIL_CHANGE', 1),
(31, '2023-01-08', 4, 'TIRE_ROTATION', 2),
(41, '2022-07-04', 12, 'ENGINE_OVERHAUL', 3),
(42, '2022-08-20', 6, 'BRAKE_REPLACEMENT', 4);

INSERT INTO CORPORATION (ID, Name, Address, Phone, OWNID) VALUES
(1, 'Apple Inc.', 'Cupertino, CA', '1-408-996-1010', 1001),
(2, 'Microsoft Corporation', 'Redmond, WA', '1-425-882-8080', 1002),
(3, 'Amazon.com, Inc.', 'Seattle, WA', '1-206-266-1000', 1003),
(4, 'Google LLC', 'Mountain View, CA', '1-650-253-0000', 1004),
(5, 'Facebook, Inc.', 'Menlo Park, CA', '1-650-308-7300', 1005),
(11, 'Apple Inc.', 'Cupertino, CA', '1-408-996-1010', 10011),
(12, 'Pakistan Corporation', 'Redmond, WA', '1-425-882-8080', 10012),
(13, 'Fast.com, Inc.', 'Seattle, WA', '1-206-266-1000', 10013),
(14, 'Goog LLC', 'Mountain View, CA', '1-650-253-0000', 10014),
(15, 'Insta, Inc.', 'Menlo Park, CA', '1-650-308-7300', 10015),
(21, 'Inc.', 'Cupertino, CA', '1-408-996-1010', 10021),
(22, 'Corporation', 'Redmond, WA', '1-425-882-8080', 10022),
(23, 'Daraz.com, Inc.', 'Seattle, WA', '1-206-266-1000', 10023),
(24, 'Bing LLC', 'Mountain View, CA', '1-650-253-0000', 10024),
(25, 'Face, Inc.', 'Menlo Park, CA', '1-650-308-7300', 10025);



INSERT INTO EMPLOYEE (ID, NAME, ADDRESS, SALARY, SHIFT)
VALUES 
    (1, 'Ali Khan', 'Lahore, Pakistan', 45000.00, 'Night'),
    (2, 'Sana Ahmed', 'Karachi, Pakistan', 52000.00, 'Day'),
    (3, 'Raza Hassan', 'Islamabad, Pakistan', 48000.00, 'Night'),
    (4, 'Samiya Malik', 'Rawalpindi, Pakistan', 50000.00, 'Day'),
    (5, 'Ahmed Ali', 'Faisalabad, Pakistan', 47000.00, 'Night'),
    (6, 'Amna Khan', 'Multan, Pakistan', 51000.00, 'Day'),
    (7, 'Naveed Ahmed', 'Peshawar, Pakistan', 49000.00, 'Night'),
    (8, 'Hina Malik', 'Quetta, Pakistan', 53000.00, 'Day'),
    (9, 'Bilal Khan', 'Gujranwala, Pakistan', 46000.00, 'Night'),
    (10, 'Aisha Ahmed', 'Sialkot, Pakistan', 54000.00, 'Day');

INSERT INTO MAINTENANCE (ID, EmployeeID, Hours, WorkDate)
VALUES 
    (1, 1, 8, '2022-03-27'),
    (2, 2, 6, '2022-03-27'),
    (3, 3, 7, '2022-03-27'),
    (4, 4, 10, '2021-03-27'),
    (5, 5, 9, '2022-03-27'),
    (6, 6, 5, '2023-03-27'),
    (7, 7, 8, '2022-01-27'),
    (8, 8, 6, '2022-02-27'),
    (9, 9, 7, '2023-03-27'),
    (10, 10, 11, '2023-03-27');

INSERT INTO PILOT (PILOTID, Name, Address, LicNum, NoAirplanes)
VALUES
  (1, 'Ahmed Ali', 'Street 123, Karachi', 'PK123', 2),
  (2, 'Ayesha Khan', 'Flat 456, Lahore', 'PK234', 1),
  (3, 'Imran Qureshi', 'House 789, Islamabad', 'PK345', 0),
  (4, 'Sana Malik', 'Plot 321, Rawalpindi', 'PK456', 3),
  (5, 'Kamran', 'Apartment 654, Faisalabad', 'PK567', 1),
  (6, 'Ahmed', 'Street 123, Karachi', 'PK123', 2),
  (7, 'Ayesha', 'Flat 456, Lahore', 'PK234', 1),
  (8, 'Imran Khan', 'House 789, Islamabad', 'PK345', 0),
  (9, 'Sara Malik', 'Plot 321, Rawalpindi', 'PK456', 3),
  (11, 'Danyal Aziz', 'Apartment 654, Faisalabad', 'PK567', 1);


INSERT INTO owners (owner_id, name, address)
VALUES (1, 'John Doe', '123 Main St.'),
       (2, 'Jane Smith', '456 Maple Ave.'),
       (3, 'Bob Johnson', '789 Oak St.'),
       (4, 'Sally Brown', '101 Elm St.'),
       (5, 'Tom Green', '555 Cedar St.'),
	   (11, 'John Roe', '123 Main St.'),
       (12, 'Jake Smith', '456 Maple Ave.'),
       (13, 'Boris Johnson', '789 Oak St.'),
       (14, 'Sally Red', '101 Elm St.'),
       (15, 'Tom Yellow', '555 Cedar St.');

INSERT INTO owners (owner_id, name, address)
VALUES (1001, 'Hassan', '123 Main St.'),
       (1002, 'Ali', '456 Maple Ave.'),
       (1003, 'Shamim', '789 Oak St.'),
       (1004, 'Saad', '101 Elm St.'),
       (1005, 'Zubi', '555 Cedar St.');

INSERT INTO owners (owner_id, name, address)
	VALUES (1006, 'Kamran', 'Muzaffargrh');

--SELECT * FROM PURCHASES
INSERT INTO owners (owner_id, name, address)
VALUES (1000, 'Umer', '123 Main St.'),
       (100111, 'Asif', '456 Maple Ave.');

INSERT INTO purchases (purchase_id, purchaser_id, corporation_name, plane_type, purchase_date)
VALUES 
    (1, 1001, 'Pakistan Airlines', 'Boeing 747', '2022-01-01'),
    (2, 1002, 'Air Blue', 'Airbus A320', '2022-01-02'),
    (3, 1003, 'Serene Air', 'Boeing 737', '2023-02-03'),
    (4, 1004, 'Shaheen Air', 'Airbus A330', '2022-01-04'),
    (5, 1005, 'Pakistan International Airlines', 'Boeing 777', '2022-01-05'),
	(11, 1001, 'Pakistan Airlines', 'Bo 747', '2022-01-01'),
    (12, 1002, 'Air Blue', 'Air A320', '2023-01-02'),
    (13, 1003, 'Serene Air', 'Boe 737', '2023-02-03'),
    (14, 1004, 'Shaheen Air', 'Airchus A330', '2023-01-04'),
    (15, 1005, 'Pakistan International Airlines', 'Bong 777', '2023-01-05');


INSERT INTO purchases (purchase_id, purchaser_id, corporation_name, plane_type, purchase_date)
VALUES 
    (91, 1006, 'Pakistan Airlines', 'Boeing 747', '2022-01-01'),
    (92, 1007, 'Air Blue', 'Airbus A320', '2022-01-02');

INSERT INTO purchases (purchase_id, purchaser_id, corporation_name, plane_type, purchase_date)
VALUES 
    (991, 10006, 'Apple Inc', 'Boeing 747', '2022-01-01');


INSERT INTO purchases (purchase_id, purchaser_id, corporation_name, plane_type, purchase_date)
VALUES 
    (111, 1001, 'Pakistan Airlines', 'Boeing 747', '2023-03-29'),
    (112, 1002, 'Air Blue', 'Airbus A320', '2023-03-24');

--Q3
SELECT OF_TYPE,REGNUM FROM AIRPLANE
WHERE REGNUM NOT IN (SELECT REGNUM FROM PLANE_SERVICE);


--DELETE FROM PLANE_SERVICE

--drop table CORPORATION

--Q4
SELECT DISTINCT c.Name, c.Address,pt.Capacity
FROM CORPORATION c
INNER JOIN AIRPLANE a ON a.AirplaneID = c.OWNID
INNER JOIN PLANE_TYPE pt ON a.OF_TYPE = pt.Model
WHERE pt.Capacity > 200;



--Q5
SELECT AVG(Salary) AS AvgSalary
FROM EMPLOYEE
WHERE SHIFT = 'Night' 


--Q6
SELECT TOP 5 E.Name, SUM(M.Hours) AS TotalHours
FROM EMPLOYEE E
INNER JOIN MAINTENANCE M ON E.ID = M.EmployeeID
GROUP BY E.ID, E.Name
ORDER BY TotalHours DESC;

--Q7
SELECT DISTINCT E.REGNUM,E.OF_TYPE
FROM AIRPLANE E
INNER JOIN PLANE_SERVICE P ON E.REGNUM=P.PlaneServiceID
WHERE P.Date BETWEEN P.Date AND GETDATE();

--Q8
SELECT DISTINCT o.name, o.address
FROM owners o
INNER JOIN purchases p ON o.owner_id = p.purchaser_id
WHERE p.purchase_date BETWEEN DATEADD(month, -1, GETDATE()) AND GETDATE();

--SELECT * FROM purchases


--Q9
SELECT PILOTID,Name,NoAirplanes FROM PILOT
ORDER BY NoAirplanes DESC;


--Q10
SELECT LOCATION,CAPACITY FROM HANGAR
WHERE CAPACITY = (SELECT MAX(CAPACITY) FROM HANGAR)
--LIMIT 1;

--Q11
SELECT c.ID, c.Name, COUNT(a.RegNum) AS NumberOfPlanes
FROM CORPORATION c
LEFT JOIN AIRPLANE a ON c.ID = a.RegNum
GROUP BY c.ID, c.Name
ORDER BY NumberOfPlanes DESC;


--Q12
SELECT PT.MODEL,AVG(PS.HOURS) AS AVGHOURS
FROM PLANE_TYPE PT
INNER JOIN AIRPLANE A ON PT.MODEL=A.OF_TYPE
LEFT JOIN PLANE_SERVICE PS ON A.RegNum=PS.PlaneServiceID
GROUP BY PT.MODEL;


--Q13
SELECT DISTINCT o.name,o.address
FROM owners o
INNER JOIN purchases p ON o.owner_id = p.purchaser_id
INNER JOIN AIRPLANE a ON p.plane_type = a.OF_TYPE
INNER JOIN PLANE_SERVICE ps ON a.RegNum = ps.PlaneServiceID
INNER JOIN MAINTENANCE m ON ps.PlaneServiceID = m.ID
INNER JOIN EMPLOYEE e ON m.EmployeeID = e.ID
WHERE e.NAME <> a.OF_TYPE;

--Q14
SELECT o.name, o.address
FROM owners o
INNER JOIN purchases p ON o.owner_id = p.purchaser_id
INNER JOIN CORPORATION c ON p.corporation_name = c.Name
INNER JOIN HANGAR h ON c.ID = h.Number
WHERE h.Location = o.address;


--Q15
SELECT p.Name
FROM PILOT p
INNER JOIN AIRPLANE a ON p.PILOTID = a.AIRPLANEID
INNER JOIN PLANE_SERVICE ps ON a.RegNum = ps.PlaneServiceID
INNER JOIN MAINTENANCE m ON ps.PlaneServiceID = m.ID
WHERE ps.Date BETWEEN ps.Date AND GETDATE();

--Q16
SELECT e.NAME, SUM(m.Hours) AS Total_Maintenance_Hours
FROM EMPLOYEE e
JOIN MAINTENANCE m ON e.ID = m.EmployeeID
JOIN AIRPLANE a ON a.RegNum = m.ID
JOIN purchases p ON p.plane_type = a.OF_TYPE AND p.corporation_name = 'Apple Inc.'
JOIN CORPORATION c ON c.ID = p.purchaser_id
WHERE c.Name = 'Apple Inc.'
GROUP BY e.ID,e.NAME
ORDER BY Total_Maintenance_Hours DESC;



--Q17
SELECT a.RegNum, a.OF_TYPE
FROM AIRPLANE a
WHERE a.REGNUM NOT IN (SELECT c.ID FROM CORPORATION c);



--Q18
SELECT o.name, o.address
FROM owners o
JOIN purchases p ON o.owner_id = p.purchaser_id
JOIN purchases p2 ON p.plane_type = p2.plane_type
WHERE p2.purchase_date BETWEEN DATEADD(MONTH, -1, GETDATE()) AND GETDATE()
AND p.purchase_date BETWEEN DATEADD(MONTH, -1, GETDATE()) AND GETDATE()
AND p2.corporation_name <> p.corporation_name;



--Q19
SELECT HANGAR.LOCATION, COUNT(AIRPLANE.RegNum) AS total_planes
FROM AIRPLANE
INNER JOIN HANGAR ON AIRPLANE.STORED_IN = HANGAR.Number
GROUP BY HANGAR.LOCATION;


--Q20
SELECT AIRPLANE.OF_TYPE,COUNT(*) AS NOPLANES
FROM AIRPLANE
GROUP BY OF_TYPE;

--Q21
SELECT AIRPLANE.RegNum, AIRPLANE.OF_TYPE, COUNT(PLANE_SERVICE.PlaneServiceID) AS total_services
FROM AIRPLANE
LEFT JOIN PLANE_SERVICE ON AIRPLANE.AirplaneID = PLANE_SERVICE.PlaneServiceID
GROUP BY AIRPLANE.RegNum, AIRPLANE.OF_TYPE;


--Q22
SELECT shift, AVG(salary) AS average_salary
FROM employee
GROUP BY shift;

--Q23
SELECT o.name, COUNT(a.RegNum) AS total_planes
FROM owners o
INNER JOIN purchases p ON o.owner_id = p.purchaser_id
INNER JOIN AIRPLANE a ON p.plane_type = a.OF_TYPE
GROUP BY o.name;

--Q24
SELECT NAME,NOAIRPLANES
FROM PILOT
GROUP BY NAME,NOAIRPLANES

--Q25
SELECT * FROM PLANE_TYPE WHERE Weight > 5000;

SELECT * FROM AIRPLANE WHERE OF_TYPE = 'Boeing 747';

--This query retrieves the names of all employees who worked on maintenance between January 1st and December 31st of 2022
SELECT e.NAME, p.Hours FROM EMPLOYEE e JOIN MAINTENANCE p ON e.ID = p.EmployeeID WHERE p.WorkDate BETWEEN '2022-01-01' AND '2022-12-31';

--This query retrieves the names of all owners along with the number of planes they have purchased
SELECT o.name, COUNT(p.purchase_id) FROM owners o JOIN purchases p ON o.owner_id = p.purchaser_id GROUP BY o.name;