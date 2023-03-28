CREATE DATABASE w1869873_BoilHeater

CREATE TABLE w1869873_Customer (
	w1869873_custNo INT NOT NULL,
	w1869873_custName VARCHAR(50),
	w1869873_custSurname VARCHAR(50),
	w1869873_custEmail VARCHAR(50),
	w1869873_custMobileNo VARCHAR(20),
	PRIMARY KEY(w1869873_custNo)
);
INSERT INTO w1869873_Customer (w1869873_custNo, w1869873_custName, w1869873_custSurname, w1869873_custEmail, w1869873_custMobileNo) 
VALUES 
(1001, 'Harbert Patterson', 'Patterson', 'hpatterson0@psu.edu', '+92 289 355 7613'),
(1002, 'Wolfy Alvarez', 'Alvarez', 'walvarez1@xinhuanet.com', '+30 266 321 5484'),
(1003, 'Armando Rubinov', 'Rubinov', 'arubinov2@istockphoto.com', '+62 461 194 6126'),
(1004, 'Aloysia Pattinson', 'Pattinson', 'apattinson3@marriott.com', '+55 139 575 1177'),
(1005, 'Eugenia Rozalski', 'Rozalski', 'erozalski4@dell.com', '+62 612 977 9059'),
(1006, 'Peirce Patherman', 'Patherman', 'ppatherman5@seesaa.net', '+62 164 970 9434'),
(1007, 'Tallulah Soff', 'Soff', 'tsoff6@360.cn', '+963 944 851 1779'),
(1008, 'Coop Storek', 'Storek', 'cstorek7@npr.org', '+48 387 300 8907'),
(1009, 'Electra Patkin', 'Patkin', 'epatkin8@patch.com', '+81 619 845 3857'),
(1010, 'Michail Girardini', 'Girardini', 'mgirardini9@cbc.ca', '+86 882 457 2740'),
(1011, 'Florrie Waterhowse', 'Waterhowse', 'fwaterhowsea@symantec.com', '+86 904 308 5868'),
(1012, 'Nye State', 'State', 'nstateb@cnn.com', '+351 157 261 9240'),
(1013, 'Cordula Patnam', 'Patnam', 'cpatnamc@shareasale.com', '+86 108 222 7581'),
(1014, 'Thalia Spaice', 'Spaice', 'tspaiced@cnbc.com', '+260 752 557 1699'),
(1015, 'Sibbie Bowmer', 'Bowmer', 'sbowmere@utexas.edu', '+389 232 758 8531');



CREATE TABLE w1869873_OneOff_Payment (
	w1869873_paymentRefNo INT,
	w1869873_paymentDate DATE,
	w1869873_paymentAmount INT,
	w1869873_custNo INT,
	CONSTRAINT PK_One_Off PRIMARY KEY(w1869873_paymentRefNo),
	FOREIGN KEY (w1869873_custNo) REFERENCES w1869873_customer(w1869873_custNo)
);
INSERT INTO w1869873_OneOff_Payment (w1869873_paymentRefNo, w1869873_paymentDate, w1869873_paymentAmount, w1869873_custNo) 
VALUES 
(1231, '2022-10-16', 84, 1001),(1452, '2022-10-25', 87, 1002),
(1243, '2022-10-17', 55, 1003),(1244, '2022-11-09', 52, 1004),
(5725, '2022-10-25', 84, 1005),(2546, '2022-11-09', 77, 1006),
(1177, '2022-10-29', 63, 1007),(1148, '2022-11-08', 64, 1008),
(1129, '2022-10-22', 51, 1009),(1110, '2022-11-10', 59, 1010),
(1111, '2022-10-21', 53, 1011),(1612, '2022-10-24', 82, 1012),
(1113, '2022-10-25', 67, 1013),(1214, '2022-10-20', 89, 1014),
(1115, '2022-11-08', 51, 1015);



SELECT C.w1869873_custSurname, C.w1869873_custEmail , P.w1869873_paymentRefNo, P.w1869873_paymentDate, P.w1869873_paymentAmount
FROM w1869873_Customer C JOIN w1869873_OneOff_Payment P
ON C.w1869873_custNo = P.w1869873_custNo
WHERE P.w1869873_paymentAmount <= 80 AND C.w1869873_custSurname LIKE "Pat%"