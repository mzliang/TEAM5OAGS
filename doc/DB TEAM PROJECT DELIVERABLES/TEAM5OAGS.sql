]
/*
	Line 1:  Joel Loucks A2
     Line 2: COSC 3380   SPRING 2013   project 2
     Line 3: This is MY work
     Line 4: Will NOT disseminate
*/

--dropping customer table if it exists
DROP TABLE Customer CASCADE CONSTRAINTS;

--creating customer table
CREATE TABLE Customer(
	CustomerID INTEGER PRIMARY KEY,
	LastName CHAR(15) NOT NULL,
	FirstName CHAR(15) NOT NULL,
	Street CHAR(20) NOT NULL,
	City CHAR(25) NOT NULL,
	State CHAR(5) NOT NULL,
	Zip CHAR(15) NOT NULL,
	Country CHAR(10) NOT NULL,
	AreaCode CHAR(4) NOT NULL,
	PhoneNumber CHAR(10) NOT NULL,
	Email CHAR(40),
	UserName CHAR(30),
	Password CHAR(20) 	
	);

--droping Artist table if it exists
DROP TABLE Artist CASCADE CONSTRAINTS;

--creating Artist table
CREATE TABLE Artist(
	ArtistID INTEGER PRIMARY KEY,
	LastName CHAR(15) NOT NULL,
	FirstName CHAR(15) NOT NULL,
	Nationality CHAR(20) NOT NULL,
	DateOfBirth INTEGER NOT NULL,
	DateDeceased INTEGER
);

--droping table if it exists
DROP TABLE Customer_Artist_Int CASCADE CONSTRAINTS;

--creating table Customer_Artist_Int
CREATE TABLE Customer_Artist_Int(
	ArtistID INTEGER,
	CustomerID INTEGER,
	FOREIGN KEY(ArtistID) REFERENCES Artist(ArtistID),
	FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
	);


--droping work table if it exists
DROP TABLE Work CASCADE CONSTRAINTS;

--creating work table
CREATE TABLE Work(
	WorkID INTEGER PRIMARY KEY,
	Title CHAR(30) NOT NULL,
	Medium CHAR(30) NOT NULL,
	Description CHAR(50) NOT NULL,
	Copy CHAR(10) NOT NULL,
	ArtistID INTEGER,
	FOREIGN KEY(ArtistID) REFERENCES Artist(ArtistID)
	);


--dropping transaction table if it exists
DROP TABLE Transaction CASCADE CONSTRAINTS;

--creating transaction table
CREATE TABLE Transaction(
	TransactionID INTEGER PRIMARY KEY,
	DateAcquired DATE,
	AquisitionPrice REAL,
	AskingPrice REAL,
	DateSold DATE,
	SalesPrice REAL,
	CustomerID INTEGER,
	WorkID INTEGER,
	FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY(WorkID) REFERENCES Work(WorkID)
	);

-- if table exists, drop it
DROP TABLE Testimonial CASCADE CONSTRAINTS;

--creating Testimonial table
CREATE TABLE Testimonial(
	TestimonialID INTEGER PRIMARY KEY AUTO_INCREMENT,
	TestimonialContent CHAR(140),
	TestimonialEnteredDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CustomerID INTEGER,
	FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
	);

--if table exists, drop it
DROP TABLE Employee CASCADE CONSTRAINTS;

--creating Employee table
CREATE TABLE Employee(
	EmployeeID INTEGER PRIMARY KEY,
	LastName CHAR(20),
	FirstName CHAR(20),
	AccountType CHAR(3)
	);

DROP SEQUENCE test_increment;


/* inserting values into Customer table */
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1000,'Janes','Jeffrey','123 W. Elm St', 'Renton', 'WA','98055','USA','425','543-2345','Jeffrey.James@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1001,'Smith','David','813 Tumbleweed Lane', 'Durango', 'CO','81201','USA','970','654-9876','David.Smith@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1015,'Twilight','Tiffany','88 1st Avenue', 'Langley', 'WA','98260','USA','360','765-5566','Tiffany.Twilight@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1033, 'Smethers','Fred','100899 88th Ave','Bainbridge Island','WA','98110','USA','206','876-9911','Fred.Smathers@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1034,'Frederickson','Mary Beth','125 South Lafayette', 'Denver', 'CO','80201','USA','303','513-8822','MaryBeth.Frederickson@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1036,'Waming','Selma','205 Burnaby', 'Vancouver', 'BC','V6Z 1W2','Canada','604','988-0512','Selma.Waming@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1037,'Wu','Susan','105 Locust Ave', 'Atlanta', 'GA','30322','USA','404','653-3465','Suan.Wu@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1040,'Gray','Donald','55 Bodega Ave', 'Bodega Bay', 'CA','94923','USA','707','568-4839','Donald.Gray@somewhere.com');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber) VALUES(1041,'Johnson','Lynda','117 C Street', 'Washington', 'DC','20003','USA','202','438-5498');
INSERT INTO Customer(CustomerID,LastName,FirstName,Street,City,State,Zip,Country,AreaCode,PhoneNumber,Email) VALUES(1051,'Wilkens','Chris','87 Highland. Drive', 'Olympia', 'WA','98508','USA','360','765-7766','Chris.Wilkens@somewhere.com');

/* inserting values into Artist table */
INSERT INTO Artist VALUES(1,'Miro','Joan','Spanish',1893,1983);
INSERT INTO Artist VALUES(2,'Kandisky','Wassily','Russian',1866,1944);
INSERT INTO Artist VALUES(3,'Klee','Paul','German',1879,1940);
INSERT INTO Artist VALUES(4,'Matisse','Henri','French',1869,1954);
INSERT INTO Artist VALUES(5,'Chagall','Marc','French',1887,1985);
INSERT INTO Artist VALUES(11,'Sargent','John Singer','United States',1856,1925);
INSERT INTO Artist VALUES(17,'Tobey','Mark','United States',1890,1976);
INSERT INTO Artist VALUES(18,'Horiuchi','Paul','United States',1906,1999);
INSERT INTO Artist VALUES(19,'Graves','Morris','United States',1920,2001);

/* inserting values into Works table */
INSERT INTO Work VALUES(500,'Memories IV','Casein rice paper collage','31 x 24.8 in.','Unique',18);
INSERT INTO Work VALUES(511,'Surf and Bird','High Quality Limited Print','Northwest School Expressionist style','142/500',19);
INSERT INTO Work VALUES(521,'The Tilted Field','High Quality Limited Print','Early Surrealist style','788/1000',1);
INSERT INTO Work VALUES(522,'La Lacon de Ski','High Quality Limited Print','Surrealist style','363/500',1);
INSERT INTO Work VALUES(523,'On White II','High Quality Limited Print','Bauhaus style of Kandisnky','435/500',2);
INSERT INTO Work VALUES(524,'Woman with a Hat','High Quality Limited Print','A very colorful impressionist piece','596/750',4);
INSERT INTO Work VALUES(537,'The Woven World','Color lithograph','Signed','17/750',17);
INSERT INTO Work VALUES(548,'Night Bird','Watercolor on Paper','50 x 72.5 cm -- Signed','Unique',19);
INSERT INTO Work VALUES(551,'Der Blaue Relter','High Quality Limited Print','"The Blue Rider" -- Early pointillism influence','236/1000',2);
INSERT INTO Work VALUES(552,'Angelus Novus','High Quality Limited Print','Bauhaus style of Klee','659/750',3);
INSERT INTO Work VALUES(553,'The Dance','High Quality Limited Print','An Impressionist masterpiece','734/1000',4);
INSERT INTO Work VALUES(554,'I and the Village','High Quality Limited Print','Shows Belarusian folk-life themes and symbology','834/1000',5);
INSERT INTO Work VALUES(555,'Claude Monet Painting','High Quality Limited Print','Shows French Impressionist influence of Monet','684/1000',11);
INSERT INTO Work VALUES(561,'Sunflower','Watercolor and ink','33.3 x 16.1 cm -- Signed','Unique',19);
INSERT INTO Work VALUES(562,'The Fiddler','High Quality Limited Print','Shows Belarusian folk-life themese and symbology','251/1000',5);
INSERT INTO Work VALUES(563,'Spanish Dancer','High Quality Limited Print','American realist style -- From work in Spain','583/750',11);
INSERT INTO Work VALUES(564,'Frarmers Market #2','High Quality Limited Print','Northwest School Abstract Expressionist style','267/500',17);
INSERT INTO Work VALUES(565,'Frarmers Market #2','High Quality Limited Print','Northwest School Abstract Expressionist style','268/500',17);
INSERT INTO Work VALUES(566,'Into Time','High Quality Limited Print','Northwest School Abstract Expressionist style','323/500',18);
INSERT INTO Work VALUES(570,'Untitled Number 1','Monotype with tempera','4.3 x 6.1 in --Signed','Unique',17);
INSERT INTO Work VALUES(571,'Yellow covers blue','Oil and collage','71 x 78 in --Signed','Unique',18);
INSERT INTO Work VALUES(578,'Mid Century Hibernation','High Quality Limited Print','Northwest School Abstract Expressionist style','362/500',19);
INSERT INTO Work VALUES(580,'Forms in Progress I','Color aquatint','19.3 x 24.4 in --Signed','Unique',17);
INSERT INTO Work VALUES(581,'Forms in Progress II','Color aquatint','19.3 x 24.4 in --Signed','Unique',17);
INSERT INTO Work VALUES(585,'The Fiddler','High Quality Limited Print','Shows Belarusian folk-life themes and symbology','252/1000',5);
INSERT INTO Work VALUES(586,'Spanish Dancer','High Quality Limited Print','American Realist style -- From work in Spain','588/750',11);
INSERT INTO Work VALUES(587,'Broadway Boogie','High Quality Limited Print','Northwest School Abstract Expressionist Style','433/500',17);
INSERT INTO Work VALUES(588,'Universal Field','High Quality Limited Print','Northwest School Abstract Expressionist Style','114/500',17);
INSERT INTO Work VALUES(589,'Color Floating in Time','High Quality Limited Print','Northwest School Abstract Expressionist Style','487/500',18);
INSERT INTO Work VALUES(590,'Blue Interior','Tempera on card','43.9 x 29.75 in -- Signed','Unique',17);
INSERT INTO Work VALUES(593,'Surf and Bird','Gouache','26.5 x 29.75 in --Signed','Unique',19);
INSERT INTO Work VALUES(594,'Surf and Bird','High Quality Limited Print','Northwest School Abstract Expressionist Style','366/500',17);
INSERT INTO Work VALUES(595,'Surf and Bird','High Quality Limited Print','Northwest School Abstract Expressionist Style','366/500',17);
INSERT INTO Work VALUES(596,'Surf and Bird','High Quality Limited Print','Northwest School Abstract Expressionist Style','366/500',17);

/* inserting into customer interest table */
INSERT INTO Customer_Artist_Int VALUES(1,1001);
INSERT INTO Customer_Artist_Int VALUES(1,1034);
INSERT INTO Customer_Artist_Int VALUES(2,1001);
INSERT INTO Customer_Artist_Int VALUES(2,1034);
INSERT INTO Customer_Artist_Int VALUES(4,1001);
INSERT INTO Customer_Artist_Int VALUES(4,1034);
INSERT INTO Customer_Artist_Int VALUES(5,1001);
INSERT INTO Customer_Artist_Int VALUES(5,1034);
INSERT INTO Customer_Artist_Int VALUES(5,1036);
INSERT INTO Customer_Artist_Int VALUES(11,1001);
INSERT INTO Customer_Artist_Int VALUES(11,1015);
INSERT INTO Customer_Artist_Int VALUES(11,1036);
INSERT INTO Customer_Artist_Int VALUES(17,1000);
INSERT INTO Customer_Artist_Int VALUES(17,1015);
INSERT INTO Customer_Artist_Int VALUES(17,1033);
INSERT INTO Customer_Artist_Int VALUES(17,1040);
INSERT INTO Customer_Artist_Int VALUES(17,1051);
INSERT INTO Customer_Artist_Int VALUES(18,1000);
INSERT INTO Customer_Artist_Int VALUES(18,1015);
INSERT INTO Customer_Artist_Int VALUES(18,1033);
INSERT INTO Customer_Artist_Int VALUES(18,1040);
INSERT INTO Customer_Artist_Int VALUES(18,1051);
INSERT INTO Customer_Artist_Int VALUES(19,1000);
INSERT INTO Customer_Artist_Int VALUES(19,1015);
INSERT INTO Customer_Artist_Int VALUES(19,1033);
INSERT INTO Customer_Artist_Int VALUES(19,1036);
INSERT INTO Customer_Artist_Int VALUES(19,1040);
INSERT INTO Customer_Artist_Int VALUES(19,1051);


/* inserting into transaction table */
INSERT INTO Transaction VALUES(100,'2007-11-04',30000.00,45000.00,'2007-12-14',42500.00,1000,500);
INSERT INTO Transaction VALUES(101,'2007-11-07',250.00,500.00,'2007-12-19',500.00,1015,511);
INSERT INTO Transaction VALUES(102,'2007-11-17',125.00,250.00,'2008-01-18',200.00,1001,521);
INSERT INTO Transaction VALUES(103,'2007-11-17',250.00,500.00,'2008-12-12',400.00,1034,522);
INSERT INTO Transaction VALUES(104,'2007-11-17',250.00,250.00,'2008-01-18',200.00,1001,523);
INSERT INTO Transaction VALUES(105,'2007-11-17',200.00,500.00,'2008-12-12',400.00,1034,524);
INSERT INTO Transaction VALUES(115,'2008-03-03',1500.00,3000.00,'2008-06-07',2750.00,1033,537);
INSERT INTO Transaction VALUES(121,'2008-09-21',15000.00,30000.00,'2008-11-28',27500.00,1015,548);
INSERT INTO Transaction VALUES(125,'2008-11-21',125.00,250.00,'2008-12-18',200.00,1001,551);
INSERT INTO Transaction(TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(126,'2008-11-21',200.00,400.00,537);
INSERT INTO Transaction VALUES(127,'2008-11-21',125.00,500.00,'2008-12-22',400.00,1034,553);
INSERT INTO Transaction VALUES(128,'2008-11-21',125.00,250.00,'2009-03-18',225.00,1036,554);
INSERT INTO Transaction VALUES(129,'2008-11-21',125.00,250.00,'2009-03-16',225.00,1036,555);
INSERT INTO Transaction VALUES(151,'2009-05-07',10000.00,20000.00,'2009-06-28',17500.00,1036,561);
INSERT INTO Transaction VALUES(152,'2009-05-18',125.00,250.00,'2009-08-15',225.00,1001,562);
INSERT INTO Transaction VALUES(153,'2009-05-18',200.00,400.00,'2009-08-15',350.00,1001,563);
INSERT INTO Transaction VALUES(154,'2009-05-18',250.00,500.00,'2009-09-28',400.00,1040,564);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(155,'2009-05-18',250.00,500.00,565);
INSERT INTO Transaction VALUES(156,'2009-05-18',250.00,500.00,'2009-09-27',400.00,1040,566);
INSERT INTO Transaction VALUES(161,'2009-06-28',7500.00,15000.00,'2009-09-29',23750.00,1033,570);
INSERT INTO Transaction VALUES(171,'2009-08-23',35000.00,60000.00,'2009-09-29',55000.00,1000,571);
INSERT INTO Transaction VALUES(175,'2009-09-29',40000.00,75000.00,'2009-12-18',72500.00,1036,500);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(181,'10/11/2009',250.00,500.00,578);
INSERT INTO Transaction VALUES(201,'2010-02-28',2000.00,3500.00,'2010-04-26',3250.00,1040,580);
INSERT INTO Transaction VALUES(202,'2010-02-28',2000.00,3500.00,'2010-04-26',3250.00,1040,581);
INSERT INTO Transaction VALUES(225,'2010-06-08',125.00,250.00,'2010-09-27',225.00,1051,585);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(226,'2010-06-08',200.00,400.00,586);
INSERT INTO Transaction VALUES(227,'2010-06-08',200.00,400.00,'2010-09-27',225.00,1051,586);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(228,'2010-06-08',250.00,500.00,588);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(229,'2010-06-08',250.00,500.00,589);
INSERT INTO Transaction VALUES(241,'2010-08-29',2500.00,5000.00,'2010-09-27',4750.00,1015,590);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(251,'2010-10-25',25000.00,50000.00,593);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(252,'2010-10-27',250.00,500.00,594);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(253,'2010-10-27',250.00,500.00,595);
INSERT INTO Transaction (TransactionID, DateAcquired, AquisitionPrice,AskingPrice,WorkID) VALUES(254,'2010-10-27',250.00,500.00,596);

/* now writing queries for contents of database */

--Creating Procedure to search the contents of 
--the testimonials table
DELIMITER //
CREATE Procedure Search_Testimonials(findMe CHAR)  
BEGIN
DECLARE flag TINYINT DEFAULT 0;
DECLARE content CHAR(140);
DECLARE search_test CURSOR FOR
SELECT TestimonialContent
FROM TESTIMONIAL T
WHERE T.TestimonialContent LIKE CONCAT('%',findME,'%');
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag=1;
SET flag=0;
open search_test;
WHILE(NOT flag) DO
FETCH search_test INTO content;
IF NOT flag THEN SELECT content;
END IF;
END WHILE;
CLOSE search_test;
END //
DELIMITER ;

--AskingPriceInitialValue
-- Re-did the view from project 2
Drop view ArtistWorkNetView;
CREATE VIEW ArtistWorkNetView (WorkID, avgNetProfit) AS 
select T.WorkID, AVG(T.SalesPrice - T.AquisitionPrice) AS avgNetProfit
FROM Transaction T, Work W
WHERE T.WorkID = W.WorkID 
GROUP BY T.WorkID;

DELIMITER //
-- Procedure called from the trigger to perform the logic
CREATE PROCEDURE UpdateAskingPrice(wID INTEGER)
BEGIN

DECLARE rowCount INTEGER;
DECLARE avgprofit REAL;

SELECT avgnetprofit INTO avgprofit  
FROM ArtistWorkNetView A
WHERE WorkID = wID;

SELECT COUNT(*)	INTO rowCount
FROM TRANSACTION 
WHERE WORKID = wID;

IF rowCount <= 1 THEN
UPDATE TRANSACTION 
SET AskingPrice = (AquisitionPrice * 2)
WHERE WorkID = wID;
ELSE
UPDATE TRANSACTION 
SET AskingPrice = (AquisitionPrice + avgprofit)
WHERE WorkID = wID;
END IF;
END//
DELIMITER ;

-- declaration of trigger Transaction_AskingPriceInitialValue
-- had to shorten name of trigger to work with DBMS
DELIMITER //
CREATE TRIGGER AskingPriceInitialValue	
AFTER INSERT ON TRANSACTION 
FOR EACH ROW 
BEGIN 

CALL UpdateAskingPrice(NEW.WorkID);

END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER CheckSalesPrice
BEFORE INSERT ON TRANSACTION
FOR EACH ROW
BEGIN
DECLARE nation CHAR(20);

SELECT A.nationality into nation
FROM Artist A, Work W, Transaction T
WHERE T.WorkID = W.Workid AND W.ArtistID = A.ArtistID And T.Workid = New.Workid;

IF nation = 'Mexican' or nation = 'mexican' THEN
IF NEW.SalesPrice < New.AskingPrice THEN
NEW.SalesPrice := New.Askingprice;
END IF;
END IF;
END//
DELIMITER ;







































