CREATE TABLE Book (
	Title VARCHAR(255) ,
	Year INT,
	Language VARCHAR(255),

	PRIMARY KEY (Title, Year),
);

CREATE TABLE Edition (
	ID INT,
	Date DATE,
	Quantity INT,
	Title VARCHAR(255),
	Year INT,
	PRIMARY KEY(ID),
	FOREIGN KEY (Title, Year) REFERENCES Book (Title, Year),
);


SELECT * FROM Book;
SELECT * FROM Edition;


