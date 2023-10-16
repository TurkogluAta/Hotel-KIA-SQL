#Hotel KIA Database Creation Script
#INSTRUCTIONS:

#The script creates a database called Hotel which has 6 tables.
#The script can be executed from the MySql Client program.

#Creating the database 
DROP DATABASE IF EXISTS Hotel_KIA;
CREATE DATABASE Hotel_KIA;
USE Hotel_KIA;

#Creating Hotel table and inserting data
CREATE TABLE Hotel(
HotelID VARCHAR(3) NOT NULL, 
HotelName VARCHAR(20) NOT NULL,
AddressLine_1 VARCHAR(30) NOT NULL,
AddressLine_2 VARCHAR(20),
Country VARCHAR(20) NOT NULL,
City VARCHAR(20) NOT NULL,
PostCode VARCHAR(10) NOT NULL,
TelNo VARCHAR(17)  NOT NULL,
RoomCount INT NOT NULL,
#Creating connections and primary key
PRIMARY KEY (HotelID)
);
INSERT INTO Hotel VALUES 
("H01","Hotel Sunset","Birch Street, Maplewood","","Canada","Toronto","07040","+1 613 555 0195","20"),
("H02","Hotel Ocean","27 Rue des Rosiers","Saint-Ouen","France","Paris","93400","+33 12 345 6789","15"),
("H03","Hotel Haven","42 Lower Mount Street","","Ireland","Dublin","D02 TN83","+353 83 115 0374","25");

#Creating Staff table and inserting data
CREATE TABLE Staff(
StaffID VARCHAR(3) NOT NULL,
Title VARCHAR(3) NOT NULL,
FirstName VARCHAR(15) NOT NULL,
LastName VARCHAR(15) NOT NULL,
Address VARCHAR(35) NOT NULL,
TelNo VARCHAR(17) NOT NULL,
Position VARCHAR(20) NOT NULL,
Sex VARCHAR(10) NOT NULL,
DOB DATE NOT NULL,
SALARY DECIMAL(7,2) NOT NULL,
HotelID VARCHAR(3) NOT NULL,
#Creating connections and primary key
PRIMARY KEY (StaffID),
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);
INSERT INTO staff VALUES
('S01','Mr','Ferdinand','Celestine','3606 Weir Crescent','+1-562-829-7445','Manager','Male','1980-05-15',60000.00,'H01'),
('S02','Mr','Braiden','Laird','2861 Albert Street','+1-559-268-7490','Receptionist','Male','1993-08-21',30000.00,'H01'),
('S03','Mr','Merritt','Shae','2745 Eglinton Avenue','+1-517-945-4707','Housekeeper','Male','1990-01-12',25000.00,'H01'),
('S04','Mr','Thad','Milo','2438 43rd Avenue','+1-517-945-4707','Chef','Male','1986-11-04',45000.00,'H01'),
('S05','Mr','Thad','Trey','3876 Mountain Rd','+1-540-767-5642','Waiter','Male','1995-06-30',24000.00,'H01'),
('S06','Mr','Tracy','Rickie','3449 Port Washington Road','+1-234-786-7448','Bartender','Male','1988-03-29',28000.00,'H01'),
('S07','Ms','Kaety','Andrina','3395 Islington Ave','+1-447-585-8092','Gardener','Female','1978-09-10',32000.00,'H01'),
('S08','Ms','Brenna','Cherie','2106 Sheppard Ave','+1-609-763-1629','Housekeeper','Female','1997-04-18',25000.00,'H01'),
('S09','Ms','Jools','Clover','3646 St. John Street','+1-828-346-2889','Receptionist','Female','1982-12-24',30000.00,'H01'),
('S10','Ms','Sierra','Melanie','1267 Barrydowne Road','+1-321-285-4401','Housekeeper','Female','1975-07-07',25000.00,'H01'),
('S11','Ms','Addy','Hepsie','91 Faubourg Saint Honoré','+33-735-551-286','Manager','Female','1985-01-10',75000.00,'H02'),
('S12','Ms','Ariyah','Elma','94 rue du Clair Bocage','+33-700-555-920','Receptionist','Female','1990-05-15',35000.00,'H02'),
('S13','Ms','Drina','Laverne','23 rue des Dunes','+33-655-596-952','Housekeeper','Female','1995-03-12',30000.00,'H02'),
('S14','Ms','Jolie','Eleanora','83 rue Pierre De Coubertin','+33-785-556-022','Housekeeper','Female','1982-08-24',30000.00,'H02'),
('S15','Ms','Janine','Clarissa','87 avenue Ferdinand de Lesseps','+33-700-555-635','Chef','Female','1998-11-30',55000.00,'H02'),
('S16','Mr','Bryce','Napoleon','32 rue des Lacs','+33-655-559-708','Waiter','Male','1993-04-20',30000.00,'H02'),
('S17','Mr','Rodolph','Lauren','55 rue Jean Vilar','+33-655-543-661','Housekeeper','Male','1987-07-05',30000.00,'H02'),
('S18','Mr','Louis','Bronte','76 rue Reine Elisabeth','+33-755-556-354','Receptionist','Male','1991-12-14',35000.00,'H02'),
('S19','Ms','Kestrel','Magdalene','The Gables S.C. Dunshaughlin','+353-20-912-7916','Manager','Female','1980-05-10',75000.00,'H03'),
('S20','Ms','Ora','Erica','Letterbarrow Near Donegal Town','+353-20-917-7267','Receptionist','Female','1995-03-22',32000.00,'H03'),
('S21','Ms','Eulalia','Kyra','35 West St, Drogheda','+353-20-918-2448','Receptionist','Female','1997-08-15',32000.00,'H03'),
('S22','Ms','Haley','Tatiana','Priory Lane','+353-20-913-8915','Housekeeper','Female','1985-12-30',28000.00,'H03'),
('S23','Ms','Carol','Ally','3 Dublin St.','+353-20-918-5050','Housekeeper','Female','2000-01-05',28000.00,'H03'),
('S24','Ms','Ellis','Leola','Altamount St.','+353-20-916-5458','Housekeeper','Female','1992-06-18',28000.00,'H03'),
('S25','Mr','Lockie','Shaye','15 A Hebron Business Park','+353-01-910-5848','Chef','Male','1998-11-03',45000.00,'H03'),
('S26','Mr','Colten','Lawrence','15 Clareville Grove','+353-01-918-1940','Waiter','Male','1988-02-10',30000.00,'H03'),
('S27','Mr','Thad','Nelson','Claureen Lahinch rd Ennis','+353-01-914-8439','Bartender','Male','1990-07-25',35000.00,'H03'),
('S28','Mr','Braiden','Laird','Ballyanchor Lismore','+353-61-916-3356','Waiter','Male','1993-05-12',30000.00,'H03'),
('S29','Mr','Lloyd','Duke','Manor Kilbride Blessington','+353-61-916-9631','Chef','Male','1999-09-20',50000.00,'H03'),
('S30','Mr','Bret','Brenton','Cill Na Manach, Castlejane','+353-61-919-5998','Waiter','Male','1996-10-07',30000.00,'H03'),
('S31','Mr','Don','Max','61 Mayors Walk Waterford','+353-61-916-7662','Gardener','Male','1987-04-19',33000.00,'H03');

#Creating Room table and inserting data
CREATE TABLE Room(
RoomID VARCHAR(5) NOT NULL,
RoomNo VARCHAR(3) NOT NULL,
RoomType VARCHAR(10) NOT NULL,
RoomSize VARCHAR(10) NOT NULL,
Availability VARCHAR(10) NOT NULL,
RoomPrice DECIMAL(5,2) NOT NULL,
HotelID VARCHAR(3) NOT NULL,
#Creating connections and primary key
PRIMARY KEY (RoomID),
FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);
INSERT INTO Room VALUES 
('R1101','101','Single','Small','Available','80.00','H01'),
('R1102','102','Single','Medium','Available','100.00','H01'),
('R1103','103','Single','Large','Available','120.00','H01'),
('R1104','104','Double','Small','Available','130.00','H01'),
('R1105','105','Double','Medium','Available','150.00','H01'),
('R1201','201','Double','Large','Available','170.00','H01'),
('R1202','202','Triple','Small','Available','180.00','H01'),
('R1203','203','Triple','Medium','Available','200.00','H01'),
('R1204','204','Triple','Large','Available','220.00','H01'),
('R1205','205','Suite','Small','Available','250.00','H01'),
('R1301','301','Suite','Medium','Available','300.00','H01'),
('R1302','302','Suite','Large','Available','350.00','H01'),
('R1303','303','Deluxe','Small','Available','400.00','H01'),
('R1304','304','Deluxe','Medium','Available','450.00','H01'),
('R1305','305','Deluxe','Large','Available','500.00','H01'),
('R1306','306','Family','Medium','Available','600.00','H01'),
('R1307','307','Family','Medium','Available','600.00','H01'),
('R1308','308','Family','Medium','Available','600.00','H01'),
('R1309','309','Family','Medium','Available','600.00','H01'),
('R1310','310','Family','Medium','Available','600.00','H01'),
('R2101','101','Single','Small','Available','75.00','H02'),
('R2102','102','Single','Large','Available','95.00','H02'),
('R2103','103','Double','Small','Available','120.00','H02'),
('R2104','104','Double','Large','Available','150.00','H02'),
('R2105','105','Suite','Small','Available','200.00','H02'),
('R2106','106','Suite','Large','Available','300.00','H02'),
('R2107','107','Single','Small','Available','85.00','H02'),
('R2108','108','Single','Large','Available','100.00','H02'),
('R2201','201','Double','Small','Available','130.00','H02'),
('R2202','202','Double','Large','Available','160.00','H02'),
('R2203','203','Suite','Small','Available','210.00','H02'),
('R2204','204','Suite','Large','Available','310.00','H02'),
('R2205','205','Single','Small','Available','80.00','H02'),
('R2206','206','Single','Large','Available','110.00','H02'),
('R2207','207','Double','Small','Available','140.00','H02'),
('R3101','101','Single','Small','Available','100.00','H03'),
('R3102','102','Single','Large','Available','130.00','H03'),
('R3103','103','Double','Small','Available','150.00','H03'),
('R3104','104','Double','Small','Available','150.00','H03'),
('R3105','105','Suite','Large','Available','350.00','H03'),
('R3106','106','Suite','Large','Available','350.00','H03'),
('R3107','107','Single','Small','Available','100.00','H03'),
('R3108','108','Single','Small','Available','100.00','H03'),
('R3109','109','Suite','Medium','Available','300.00','H03'),
('R3110','110','Suite','Medium','Available','300.00','H03'),
('R3201','201','Single','Medium','Available','120.00','H03'),
('R3202','202','Deluxe','Small','Available','400.00','H03'),
('R3203','203','Deluxe','Small','Available','400.00','H03'),
('R3204','204','Deluxe','Small','Available','400.00','H03'),
('R3205','205','Deluxe','Medium','Available','500.00','H03'),
('R3206','206','Deluxe','Medium','Available','500.00','H03'),
('R3207','207','Deluxe','Medium','Available','500.00','H03'),
('R3208','208','Triple','Medium','Available','230.00','H03'),
('R3209','209','Triple','Medium','Available','230.00','H03'),
('R3210','210','Triple','Medium','Available','230.00','H03'),
('R3301','301','Triple','Medium','Available','230.00','H03'),
('R3302','302','Family','Small','Available','550.00','H03'),
('R3303','303','Family','Small','Available','550.00','H03'),
('R3304','304','Family','Medium','Available','600.00','H03'),
('R3305','305','Family','Medium','Available','600.00','H03');

#Creating Customer table and inserting data
CREATE TABLE Customer(
CustomerID VARCHAR(5) NOT NULL,
Title VARCHAR(3) NOT NULL,
FirstName VARCHAR (15) NOT NULL,
LastName VARCHAR (15) NOT NULL,
TelNo VARCHAR(20) NOT NULL,
Sex VARCHAR (10),
DOB DATE NOT NULL,
RoomID VARCHAR(5) NOT NULL,
#Creating connections and primary key
PRIMARY KEY (CustomerID),
FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);
INSERT INTO Customer VALUES 
('C01','Mr','Sundri','Simon','+1 202-555-0155','Male','1999-11-20','R1101'),
('C02','Mr','Boniface','Kumara','+44-20-7123-4567','Male','1987-03-12','R1103'),
('C03','Mr','Turan','Laios','+61-3-9123-4567','Male','2003-08-15','R1105'),
('C04','Ms','Lucija','Mojdeh','+33-1-23-45-67-89 ','Female','1994-06-07','R1201'),
('C05','Ms','Shachar','Sonam','+49-30-1234-5678','Female','1982-12-25','R1304'),
('C06','Ms','Alice','Rahma','+81-3-1234-5678','Female','2001-02-18','R1306'),
('C07','Mr','Philip','Crystalride','+91-98765-43210','Male','1997-09-30','R2101'),
('C08','Mr','Barakat','Andreas','+86-10-1234-5678','Male','1991-05-21','R2102'),
('C09','Mr','Cadogan','Andreas','+7-495-123-4567','Male','1985-01-04','R2103'),
('C10','Ms','Kiran','Esther','+55-21-1234-5678','Female','2002-10-13','R2201'),
('C11','Ms','Susanna','Jimmie','+31-20-123-4567 ','Female','1996-04-29','R2204'),
('C12','Mr','Admetus','Adebayo','+34-91-123-4567','Male','1989-07-23','R3104'),
('C13','Mr','Stylianos','Benignus','+27-11-123-4567','Male','1983-03-16','R3105'),
('C14','Mr','Wendelin','Ratna','+39-02-1234-5678','Male','1995-08-08','R3106'),
('C15','Mr','Joschka','Kajal','+46-8-123-456-78','Male','2000-12-31','R3201'),
('C16','Mr','Gustav','Gebahard','+47-21-12-34-56','Male','1988-06-22','R3202'),
('C17','Ms','Marianne','Wikolia','+64-4-123-4567','Female','1993-02-11','R3203'),
('C18','Ms','Caja','Fanny','+62-21-1234-5678 ','Female','1998-11-05','R3301'),
('C19','Ms','Elaine','Yvonne','+358-9-12345678','Female','1986-05-28','R3302'),
('C20','Ms','Emilia','Manola','+90-545-440-7204','Female','2004-04-14','R3303');

#Creating Reservation table
CREATE TABLE Reservation(
ReservationID VARCHAR(5) NOT NULL,
RoomID VARCHAR(5) NOT NULL,
CustomerID VARCHAR(5) NOT NULL,
CheckIn DATE NOT NULL,
CheckOut DATE NOT NULL,
#Creating connections and primary key
PRIMARY KEY (ReservationID),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

#Create trigger to update rooms availability after reservation is added
CREATE TRIGGER set_room_reserved
AFTER INSERT ON reservation
FOR EACH ROW
UPDATE room
SET availability = 'Reserved'
WHERE RoomID = NEW.RoomID;

#create trigger to update rooms availability after reservation is deleted
CREATE TRIGGER set_room_available
AFTER DELETE ON reservation
FOR EACH ROW
UPDATE room
SET availability = 'Available'
WHERE RoomID = OLD.RoomID;

#Inserting data to Reservation table
INSERT INTO Reservation VALUES 
('R01','R1101','C01','2023-05-10','2023-05-15'),
('R02','R1103','C02','2023-06-01','2023-06-05'),
('R03','R1105','C03','2023-07-22','2023-07-29'),
('R04','R1201','C04','2023-08-12','2023-08-18'),
('R05','R1304','C05','2023-09-02','2023-09-09'),
('R06','R1306','C06','2023-10-05','2023-10-12'),
('R07','R2101','C07','2023-11-15','2023-11-20'),
('R08','R2102','C08','2023-12-01','2023-12-08'),
('R09','R2103','C09','2023-12-22','2023-12-28'),
('R10','R2201','C10','2024-01-10','2024-01-17'),
('R11','R2204','C11','2024-02-07','2024-02-12'),
('R12','R3104','C12','2024-03-02','2024-03-10'),
('R13','R3105','C13','2024-04-15','2024-04-20'),
('R14','R3106','C14','2024-05-18','2024-05-24'),
('R15','R3201','C15','2024-06-04','2024-06-11'),
('R16','R3202','C16','2024-07-21','2024-07-27'),
('R17','R3203','C17','2024-08-14','2024-08-20'),
('R18','R3301','C18','2024-09-09','2024-09-15'),
('R19','R3302','C19','2024-10-02','2024-10-10'),
('R20','R3303','C20','2024-11-02','2024-11-9');

#Creating Bill table and inserting data
CREATE TABLE Bill(
BillNo VARCHAR(4) NOT NULL,
HotelName VARCHAR(20) NOT NULL,
RoomID VARCHAR(5) NOT NULL,
TotalPrice DECIMAL(8,2) NOT NULL,
CustomerID VARCHAR(5) NOT NULL,
StaffID VARCHAR(5) NOT NULL,
#Creating connections and primary key
PRIMARY KEY (BillNo),
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);
INSERT INTO Bill VALUES 
('B001','Hotel Sunset','R1101',400.00,'C01','S02'),
('B002','Hotel Sunset','R1103',480.00,'C02','S02'),
('B003','Hotel Sunset','R1105',1050.00,'C03','S02'),
('B004','Hotel Sunset','R1201',1020.00,'C04','S09'),
('B005','Hotel Sunset','R1304',3150.00,'C05','S09'),
('B006','Hotel Sunset','R1306',4200.00,'C06','S09'),
('B007','Hotel Ocean','R2101',375.00,'C07','S12'),
('B008','Hotel Ocean','R2102',665.00,'C08','S18'),
('B009','Hotel Ocean','R2103',720.00,'C09','S18'),
('B010','Hotel Ocean','R2201',910.00,'C10','S12'),
('B011','Hotel Ocean','R2204',1550.00,'C11','S12'),
('B012','Hotel Haven','R3104',1200.00,'C12','S20'),
('B013','Hotel Haven','R3105',1750.00,'C13','S20'),
('B014','Hotel Haven','R3106',2100.00,'C14','S20'),
('B015','Hotel Haven','R3201',840.00,'C15','S20'),
('B016','Hotel Haven','R3202',2400.00,'C16','S21'),
('B017','Hotel Haven','R3203',2400.00,'C17','S21'),
('B018','Hotel Haven','R3301',1380.00,'C18','S21'),
('B019','Hotel Haven','R3302',4400.00,'C19','S21'),
('B020','Hotel Haven','R3303',3850.00,'C20','S21');