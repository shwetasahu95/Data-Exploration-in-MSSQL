--1.Create a database called “LMT_University”.
	CREATE DATABASE LMT_University;

--2.Create an “enrol” schema under “LMT_University”.
	use LMT_University;
	CREATE SCHEMA enrol;--(This query should be executed alone)


--3.Use “enrol” Schema for creating the project.
/*4.Create an “Address” table under “enrol” schema with the following specifications-
	a.	Address table must have the following attributes-
		Column Name	Data Type	Description
		AddressID	Integer	Address Unique Identifier
		StreetAddress	Varchar	Street Address
		City	Varchar	City
		State	Varchar	State
		PostalCode	Varchar	Zip Code of a particular location
		Country	Varchar	Country
		InsertedOn	DateTime	Data Insertion Date

	b.	Add the following constraint.
		i.	AddressID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	StreetAddress: Null
		iii.	City: Not Null
		iv.	State: Null
		v.	PostalCode: Null
		vi.	Country: Not Null
		vii.	InsertedOn: Not Null*/


	CREATE TABLE enrol.Address (
		AddressID INT NOT NULL PRIMARY KEY CLUSTERED IDENTITY (1, 1),
		StreetAddress VARCHAR (50),
		City VARCHAR (50) NOT NULL,
		State VARCHAR (50),
		PostalCode VARCHAR(20),
		Country VARCHAR(50) NOT NULL,
		InsertedOn DATE NOT NULL default Format(GetDate(),'yyyy-mm-dd')
	);


/*5.c.Insert the following records based on the following specifications.
	i. AddressID: Address ID starting from 1 to 30 with step size 1.
	ii. StreetAddress: Insert the street Address mentioned in the table.
	iii. City: Insert the City mentioned in the table.
	iv. State: Insert the State mentioned in the table.
	v. PostalCode: Insert the PostalCode mentioned in the table.
	vi. Country: Insert the Country mentioned in the table.
	vii. InsertedOn: Insert as default date as system date.*/


	INSERT INTO enrol.Address VALUES 
	('5 Schurz Lane', 'Grybów',NULL, '33-330','Poland',cast(GETDATE() as date)),
                           
	('628 Waubesa Drive', 'Jinsheng',NULL, NULL,'China',cast(GETDATE() as date)),
                           
	('44135 Northfield Way', 'Nowy Dwór Mazowiecki',NULL,'051-60','Poland',cast(GETDATE() as date)),
                           
	('335 Bellgrove Road', 'Gaoqiao',NULL, NULL,'China',cast(GETDATE() as date)),
				           
	('28 Victoria Junction', 'Bukovec',NULL, '739 84','Czech Republic',cast(GETDATE() as date)),
                           
	('6 Stuart Road', 'Wushan',NULL, NULL,'China',cast(GETDATE() as date)),
                           
	('730 Barby Street', 'Zhengchang',NULL, NULL,'China',cast(GETDATE() as date)),
                           
	('22742 Schiller Street', 'Sumurwaru',NULL, NULL,'Indonesia',cast(GETDATE() as date)),
                           
	('31 Elka Junction', 'Cigembong',NULL, NULL,'Indonesia',cast(GETDATE() as date)),
                           
	('5 Kenwood Circle', 'Davao',NULL,'8000','Philippines',cast(GETDATE() as date)),
                           
	('99 Bunker Hill Crossing', 'Zarasai',NULL, '32001','Lithuania',cast(GETDATE() as date)),
                           
	('5 Farragut Center', 'Jaromerice',NULL, '569 44','Czech Republic',cast(GETDATE() as date)),
                           
	('25 Lerdahl Street', 'Nanshi',NULL,NULL,'China',cast(GETDATE() as date)),
                           
	('918 Bonner Way', 'Phayakkhaphum Phisai',NULL, '44110','Thailand',cast(GETDATE() as date)),
                           
	('9 West Alley', 'Sempu',NULL,NULL,'Indonesia',cast(GETDATE() as date)),
                           
	('234 Hagan Lane', 'Rennes','Bretagne','35033','France',cast(GETDATE() as date)),
                           
	('33942 Eagle Crest Trail', 'Oliveiras','Porto', '4745-235','Portugal',cast(GETDATE() as date)),
                           
	('20791 Hermina Way', 'B?o L?c',NULL, NULL,'Vietnam',cast(GETDATE() as date)),
                           
	('86 Lake View Way', 'Marsa Alam',NULL, NULL,'Egypt',cast(GETDATE() as date)),
                           
	('19732 Burning Wood Parkway', 'Piteå','Norrbotten', '944 73','Sweden',cast(GETDATE() as date)),
                           
	('9320 Oak Valley Road', 'Rathangani',NULL, 'A45','Ireland',cast(GETDATE() as date)),
                           
	('2638 Waubesa Circle', 'Honda',NULL, '732048','Colombia',cast(GETDATE() as date)),
                           
	('6999 Monument Center', 'Cortes',NULL, '6341','Philippines',cast(GETDATE() as date)),
                           
	('1 Warbler Hill', 'Proletar',NULL, NULL,'Tajikistan',cast(GETDATE() as date)),
                           
	('1311 Crowley Street', 'Baghlan',NULL, NULL,'Afghanistan',cast(GETDATE() as date)),
                           
	('19 Walton Way', 'Öldziyt',NULL, NULL,'Mongolia',cast(GETDATE() as date)),
                           
	('1 Glacier Hill', 'Cergy-Pontoise','Île-de-France', '95304','France',cast(GETDATE() as date)),
                           
	('5094 Gateway Way', 'Živinice',NULL,NULL,'Bosnia and Herzegovina',cast(GETDATE() as date)),
                           
	('2 Roth Pass', 'Tuatuka',NULL, NULL,'Indonesia',cast(GETDATE() as date)),
                           
	('89531 Northview Road', 'Ganyi',NULL, NULL,'China',cast(GETDATE() as date));

--5. d After Insertion, Table looks like as shown below-

	select * from enrol.Address


/*6.	Create a “Department” table under “enrol” schema with the following specifications-
	a.	Department table Must have the following attributes-
		Column Name	Data Type	Description
		DepartmentID	Integer	Department Unique Identifier
		DepartmentName	Lecturer 	Department Name
		DepartmentDescription	Varchar	Department Description
		DepartmentCapacity	Integer	Department Maximum Occupancy
		InsertedOn	DateTime	Data Insertion Date
	b.	Add the following constraints-
i.	DepartmentID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	DepartmentName: Not Null
		iii.DepartmentDescription: Null
		iv.	DepartmentCapacity: Not Null
		v.	InsertedOn: Not Null*/

	CREATE TYPE enrol.Lecturer FROM varchar(10) NOT NULL;


	CREATE TABLE enrol.Department
	(
		DepartmentID INT NOT NULL PRIMARY KEY CLUSTERED IDENTITY (1, 1),
		DepartmentName enrol.Lecturer NOT NULL,
		DepartmentDescription VARCHAR (100),
		DepartmentCapacity INT NOT NULL,
		InsertedOn DATE NOT NULL default Format(GetDate(),'yyyy-mm-dd')
	);

/*6c.	Insert the following records based on the following specifications.
	i.	DepartmentID: Department ID starting from 1 to 30 with step size 1.
	ii.	DepartmentName: Insert the Department Name mentioned in the table.
	iii.DepartmentDescription: Insert the Department Description mentioned in the table.
	iv.	DepartmentCapacity: Insert the Department Capacity mentioned in the table.
	v.	InsertedOn: Insert as default date as system date.*/

	INSERT INTO enrol.Department VALUES 
	('IT', 'Information Technology',60,cast(GETDATE() as date)),
	('EE', 'Electrical Engineering',120,cast(GETDATE() as date)),
	('CSE', 'Computer Science Engineering',140,cast(GETDATE() as date)),
	('ME', 'Mechanical Engineering',110,cast(GETDATE() as date)),
	('ECE', 'Electronic and Communication Engineering',80,cast(GETDATE() as date)),
	('AEIE', 'Applied Electronics and Instrumentation Engineering',50,cast(GETDATE() as date))

--6d.After Insertion, Table looks like as shown below-

	select * from enrol.Department;

/*7.Create a “Lecturer” table under “enrol” schema with the following specifications-
	a.Lecturer table Must have the following attributes-
		Column Name	Data Type	Description
		LecturerID	Integer	Lecturer Unique Identifier
		LecturerName	Varchar 	Lecturer Name
		LecturerHighestQualification	Varchar	Lecturer Highest Qualification
		LecturerAge	Varchar	Lecturer Joining Date
		DepartmentID	Integer	Department Unique Identifier
		InsertedOn	DateTime	Data Insertion Date

	b.Add the following constraints-
		i.	LecturerID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	LecturerName: Not Null
		iii.LecturerHighestQualification: Null
		iv.	LecturerAge: Not Null
		v.	DepartmentID: Not Null
		vi.	InsertedOn: Null*/

	CREATE TABLE enrol.Lecturer
	(
		LecturerID INT NOT NULL PRIMARY KEY CLUSTERED IDENTITY (1, 1),
		LecturerName VARCHAR (50) NOT NULL,
		LecturerHighestQualification VARCHAR (50),
		LecturerAge VARCHAR (20) NOT NULL,
		DepartmentID Int Not Null
		CONSTRAINT FK_DepartmentID FOREIGN KEY (DepartmentID)
		REFERENCES enrol.Department (DepartmentID),
		InsertedOn DATE NOT NULL default Format(GetDate(),'yyyy-mm-dd')
	);


/*c.	Insert the following records based on the following specifications.
i.	LecturerID: Lecturer ID starting from 1 to 30 with step size 1.
ii.	LecturerName: Insert the Lecturer Name mentioned in the table.
iii.	LecturerHighestQualification: Insert the Lecturer Highest Qualification mentioned in the table.
iv.	LecturerAge: Insert the Lecturer Age mentioned in the table. 
v.	DepartmentID: Foreign key, Not Null.
vi.	InsertedOn: Insert as default date as system date.*/

	INSERT INTO enrol.Lecturer VALUES 
	('Peder Bernaldez', 'M.Tech','2010-10-10',6,cast(GETDATE() as date)),
	('Emile Adolthine', 'PhD','2010-04-04',5,cast(GETDATE() as date)),
	('Titos Iorizzi','M.Tech','2012-04-09',4,cast(GETDATE() as date)),
	('Ferris Falck','MSC','2011-05-05',3,cast(GETDATE() as date)),
	('Georgie McIlwraith','M.Tech','2017-05-08',2,cast(GETDATE() as date)),
	('Karlen Kearn','MSC','2019-03-03',1,cast(GETDATE() as date)),
	('Axe Whistlecroft','MCA','2019-03-03',6,cast(GETDATE() as date)),
	('Drucie Bazek','PhD','2019-04-01',5,cast(GETDATE() as date)),
	('Antony Gamlin','M.Tech','2019-04-01',4,cast(GETDATE() as date)),
	('Alexina Moncaster',',MBA','2019-04-01',3,cast(GETDATE() as date)),
	('Milzie Kabos','MCA','2019-03-03',2,cast(GETDATE() as date)),
	('Arlene Glendza','MS','2019-03-03',1,cast(GETDATE() as date)),
	('Kirby Kabisch','M.Tech','2019-04-01',1,cast(GETDATE() as date)),
	('Selma Eliyahu','PhD','2019-04-01',2,cast(GETDATE() as date)),
	('Ilysa Chooter','M.Tech','2019-04-01',3,cast(GETDATE() as date)),
	('Rozalie Pennycord','MSC','2010-10-10',4,cast(GETDATE() as date)),
	('Dacey Glidder','M.Tech','2010-04-04',5,cast(GETDATE() as date)),
	('Claretta Diaper','MSC','2012-04-09',6,cast(GETDATE() as date)),
	('Kalil Pendleton','MCA','2011-05-05',6,cast(GETDATE() as date)),
	('Trudey Brech','PhD','2011-10-05',5,cast(GETDATE() as date)),
	('Gypsy Ambrosini','M.Tech','2011-03-30',4,cast(GETDATE() as date)),
	('Lauree Ribbon','MBA','2013-04-04',3,cast(GETDATE() as date)),
	('Hugo Valois','MCA','2012-04-29',2,cast(GETDATE() as date)),
	('Perren Chetter','MS','2018-05-03',1,cast(GETDATE() as date)),
	('Fawn Coffelt','M.Tech','2020-02-26',1,cast(GETDATE() as date)),
	('Terrie Golby','PhD','2020-02-26',2,cast(GETDATE() as date)),
	('Jeanette Ciraldo','M.Tech','2020-03-26',3,cast(GETDATE() as date)),
	('Elfrieda Elijahu','MSC','2020-03-26',4,cast(GETDATE() as date)),
	('Guthry Blaes','M.Tech','2020-03-26',5,cast(GETDATE() as date)),
	('Richy Saice','MSC','2020-02-26',6,cast(GETDATE() as date));

--d.	After Insertion, Table looks like as shown below-
	select * from enrol.Lecturer;

/*8.	Create a “Student” table under “enrol” schema with the following specifications-
		a.	Student table Must have the following attributes-
			Column Name	Data Type	Description
			StudentID	Integer	Student Unique Identifier
			StudentFirstName	Varchar 	Student First Name
			StudentLastName	Varchar	Student Last Name
			StudentDOB	Date	Student Date of Birth
			StudentMobile	Varchar	Department Unique Identifier
			StudentRollNo	Integer	Student Roll Number
			DepartmentID	Integer	Department Unique Identifier
			AddressID	Integer	Address Unique Identifier
			InsertedOn	DateTime	Data Insertion Date

		b.	Add the following constraints-
			i.	StudentID: Auto Increment, Primary Key, Not null, clustered index.
			ii.	StudentFirstName: Not Null
			iii.	StudentLastName: Null
			iv.	StudentDOB: Not Null
			v.	StudentMobile: Null
			vi.	StudentRollNo: Not Null
			vii.	DepartmentID: Foreign key, Not Null.
			viii.	AddressID: Foreign key, Not Null.
			vii.	InsertedOn: Not Null*/

	CREATE TABLE enrol.Student(
		StudentID INT NOT NULL Constraint PK_StudentID PRIMARY KEY CLUSTERED IDENTITY (1, 1),
		StudentFirstName VARCHAR (50) NOT NULL,
		StudentLastName VARCHAR (50),
		StudentDOB date NOT NULL,
		StudentMobile VARCHAR (20),
		StudentRollNo Int Not Null,
		DepartmentID Int Not Null
		CONSTRAINT FK_DepartmentID1 FOREIGN KEY (DepartmentID)
		REFERENCES enrol.Department (DepartmentID),
		AddressID Int Not Null
		CONSTRAINT FK_AddressID FOREIGN KEY (AddressID)
		REFERENCES enrol.Address(AddressID),
		InsertedOn DATE NOT NULL default Format(GetDate(),'yyyy-mm-dd')
	);


/*c.Insert the following records based on the following specifications.
	i.	StudentID: Student ID starting from 1 to 50 with step size 1.
	ii.	StudentFirstName: Insert the Student First Name mentioned in the table.
	iii.	StudentLastName: Insert the Student Last Name mentioned in the table.
	iv.	StudentDOB: Insert the Student DOB mentioned in the table.
	v.	StudentMobile: Insert the Student Mobile no mentioned in the table.
	vi.	StudentRollNo: Insert the Student Roll no mentioned in the table.
	vii.	DepartmentID: Insert the Department ID mentioned in the table.
	viii.	AddressID: Insert the Address ID mentioned in the table.
	ix.	InsertedOn: Insert as default date as system date.*/

	INSERT INTO enrol.Student VALUES 
	('Joey','Ironside','1995-11-22','1276234258',1,3,1,cast(GETDATE() as date)),
	('Karlotta','Garraway','1997-07-06','2192431615',2,3,24,cast(GETDATE() as date)),
	('Jerry','Stutte','1996-12-18','4125425783',3,1,17,cast(GETDATE() as date)),
	('Yehudit','Rahill','1995-01-15','9939485406',4,2,29,cast(GETDATE() as date)),
	('Cele','Crosetto','1998-11-24','3622733725',5,3,16,cast(GETDATE() as date)),
	('Hazlett','Mowsdale','1995-04-09','1482883476',6,4,23,cast(GETDATE() as date)),
	('Carlyn','Marks','1996-12-27','6129154080',7,5,20,cast(GETDATE() as date)),
	('Ellis','Boatman','1997-04-29','8269707118',8,6,7,cast(GETDATE() as date)),
	('Florina','Boyack','1997-08-03','9623352863',9,3,14,cast(GETDATE() as date)),
	('Borg','Innett','1997-09-03','5256034960',10,1,19,cast(GETDATE() as date)),
	('Sayres','Jennings','1996-05-12','8675076454',11,4,27,cast(GETDATE() as date)),
	('Jarid','Sprull','1998-11-02','1391270091',12,2,6,cast(GETDATE() as date)),
	('Elvera','Bannard','1996-09-07','7897232539',13,4,24,cast(GETDATE() as date)),
	('Ody','Inggall','1995-03-05','6094734260',14,5,25,cast(GETDATE() as date)),
	('Curcio','McWhan','1996-07-29','2394865847',15,6,11,cast(GETDATE() as date)),
	('Connie','Sinnie','1995-07-19','1473936221',16,6,23,cast(GETDATE() as date)),
	('Auroora','Nel','1996-09-05','2216400391',17,3,14,cast(GETDATE() as date)),
	('Wendall','Rosendale','1999-12-30','1818120249',18,3,28,cast(GETDATE() as date)),
	('Hadley','Bradbury','1996-08-16','6518067697',19,1,10,cast(GETDATE() as date)),
	('Celine','Smales','1999-07-11','7106508130',20,2,10,cast(GETDATE() as date)),
	('Jesselyn','Stevenson','1998-05-16',9231672206,21,2,22,cast(GETDATE() as date)),
	('Corinna','Pinkney','1998-01-16','8323630067',22,5,29,cast(GETDATE() as date)),
	('Orelle','Adamthwaite','1997-07-26','2539126766',23,3,17,cast(GETDATE() as date)),
	('Howie','Seaman','1997-12-01','9888259627',24,2,4,cast(GETDATE() as date)),
	('Sibyl','Corey','1996-07-18','4493239590',25,5,11,cast(GETDATE() as date)),
	('Ruperta','Peaker','1999-05-22','5124781263',26,5,4,cast(GETDATE() as date)),
	('Delmer','Roughey','1995-04-21','4175314364',27,3,22,cast(GETDATE() as date)),
	('Gifford','O''Scannill','1996-10-31','3134783726',28,4,22,cast(GETDATE() as date)),
	('Hedy','O''Hone','1998-03-29','7316228047',29,2,17,cast(GETDATE() as date)),
	('Shalna','Hyde-Chambers','1999-11-23','7455116160',30,5,6,cast(GETDATE() as date)),
	('Ferdie','Di Napoli','1995-01-17','1905908693',31,4,30,cast(GETDATE() as date)),
	('Piper','Giacomuzzo','1998-09-14','5499340503',32,6,4,cast(GETDATE() as date)),
	('Gerhardt','Schruurs','1999-11-18','8197494894',33,3,1,cast(GETDATE() as date)),
	('Mellicent','Buncher','1996-10-03','4584525312',34,5,28,cast(GETDATE() as date)),
	('Corette','Demead','1997-09-17','4909862137',35,5,17,cast(GETDATE() as date)),
	('Jorgan','Barson','1997-05-01','6022309183',36,1,21,cast(GETDATE() as date)),
	('Koral','Bowen','1998-05-12','4198817454',37,4,3,cast(GETDATE() as date)),
	('Allissa','Kitter','1998-08-17','7328676920',38,5,7,cast(GETDATE() as date)),
	('Townsend','Doughtery','1998-04-13','2639777958',39,4,7,cast(GETDATE() as date)),
	('Yolane','Geratt','1998-06-10','2069585951',40,6,17,cast(GETDATE() as date)),
	('Chrystel','Allwood','1996-09-07','6958461692',41,3,25,cast(GETDATE() as date)),
	('Dyana','Clutterbuck','1997-09-22','5842483886',42,1,1,cast(GETDATE() as date)),
	('Nikki','Edy','1999-01-10','5096155315',43,6,25,cast(GETDATE() as date)),
	('Hendrik','Surr','1997-04-05','2021255732',44,5,11,cast(GETDATE() as date)),
	('Marta','Bosch','1998-09-28','4075136713',45,6,5,cast(GETDATE() as date)),
	('Garrik','Pell','1999-04-14','3071057649',46,6,7,cast(GETDATE() as date)),
	('Stormi','Colbron','1998-10-21','9968113654',47,3,28,cast(GETDATE() as date)),
	('Angelique','Iacivelli','1995-06-07','9518365081',48,5,7,cast(GETDATE() as date)),
	('Zack','Hefforde','1999-07-25','5455693035',49,1,29,cast(GETDATE() as date)),
	('Gusella','Pettiford','1999-08-23','2425172721',50,4,3,cast(GETDATE() as date));

--d.After Insertion, Table looks like as shown below-

	select * from enrol.Student;



--9.Write the following Query based on the above datasets.
	--a. List all the Student information from the Student table.
		select * from enrol.Student;

	--b. List all the Department information from the Department table.
		select * from enrol.Department;

	--c.List all the Lecturer information from the Lecturer table.
		select * from enrol.Lecturer;

--d.List all the Address information from the Address table.
		select * from enrol.Address;

/*e.List the StudentFullName, StudentDOB, StudentMobile from Student 
	[StudentFullName=StudentFirstName + ‘  ‘ + StudentLastName]*/

		select StudentFirstName+' '+StudentLastName as StudentFullName,StudentDOB,
		StudentMobile from enrol.Student;

/*f.List the StudentID, StudentFirstName, StudentLastName, StudentDOB, 
StudentMobile from Student StudentRollNo in AddressID 7.*/
		
		Select StudentID, StudentFirstName, StudentLastName, StudentDOB,
		StudentMobile,StudentRollNo from enrol.Student where AddressID=7;

--g.List all the student information whose first name is start with 'B'

		Select * from enrol.Student where StudentFirstName like 'B%';

--h.List all the student information whose first name is start and end with 'A'
		
		Select * from enrol.Student where StudentFirstName like 'A%A';
	
--i.Count the number of Student from Student table whose DepartmentID 6.
	
		Select count(*) from enrol.Student where DepartmentID=6;

/*j.List all the StudentFullName, StudentAge, StudentMobile from Student 
[StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
[StudentAge= Current date – DOB (in Years)]*/

		Select StudentFirstName + '  ' + StudentLastName as StudentFullName,
		DATEDIFF(year, StudentDOB,GetDate()) as StudentAge, 
		StudentMobile from enrol.Student;

/*k.List all the StudentFullName, StudentAge, StudentMobile
whose Age>23 from Student 
[StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
[StudentAge= Current date – DOB (in Years)]*/

		Select StudentFirstName + '  ' + StudentLastName AS StudentFullName,
		DATEDIFF(year, StudentDOB,GetDate()) as StudentAge,
		StudentMobile from enrol.Student where DATEDIFF(year,StudentDOB,GetDate())>23;	

/*l.List all the StudentFullName, StudentAge, StudentMobile
whose Age is either 21 or 23
from Student [StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
[StudentAge= Current date – DOB (in Years)]*/

		Select StudentFirstName + '  ' + StudentLastName AS StudentFullName,
		DATEDIFF(year, StudentDOB,GetDate()) as StudentAge, 
		StudentMobile from enrol.Student where
		DATEDIFF(year,StudentDOB,GetDate())=21
		OR DATEDIFF(year, StudentDOB,GetDate())=23;
	
/*m.List all the LecturerID, LecturerName, LecturerHighestQualification, 
LecturerAge from Lecturer.*/

		Select LecturerID, LecturerName, LecturerHighestQualification, 
		LecturerAge from enrol.Lecturer;

/*n.	List all the LecturerID, LecturerName, LecturerHighestQualification,
LecturerAge from Lecturer whose HighestQualification is either “MS” or “PhD”.*/

		Select LecturerID, LecturerName, LecturerHighestQualification, 
		LecturerAge from enrol.Lecturer where LecturerHighestQualification = 'MS'
		or LecturerHighestQualification = 'PhD';

--o.List all the lecturer information who belongs to DepartmentID 2.

		Select * from enrol.Lecturer where DepartmentID=2;

--p.List all the lecturer information whose name end with “R”.

		Select * from enrol.Lecturer where LecturerName like '%R';

--q.List all the lecturer information whose name either start or end with “E”.

		Select * from enrol.Lecturer where LecturerName like '%E' OR LecturerName like 'E%';

--r.List all the lecturer name is in capital letter.

		Select UPPER([LecturerName]) as LecturerName from enrol.Lecturer;

/*s.Display 5 character from the lecturer name along with 
LecturerID and LecturerHighestQualification.*/

		Select LEFT(LecturerName,5) AS LecturerName,LecturerID,LecturerHighestQualification
		from enrol.Lecturer ;

/*t.List LecturerID, LecturerName, LecturerHighestQualification,LecturerAge(in year) 
		[LecturerAge= Current Date – LecturerAge)] (in year).*/

		Select LecturerID, LecturerName, LecturerHighestQualification,
		DATEDIFF(year, LecturerAge,GetDate()) As LecturerAge
		from enrol.Lecturer ;

/*u.List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity
		from Department.*/

		Select DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity
		from enrol.Department;

--v.List all the Department information who’s DepartmentName is “ECE”.

		Select * from enrol.Department where DepartmentName = 'ECE';

/*w.List all DepartmentName, DepartmentDescription, DepartmentCapacity
from Department whose capacity is greater than 60.*/
		
		Select DepartmentName, DepartmentDescription, DepartmentCapacity
		from enrol.Department where DepartmentCapacity > 60;

--x.List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.

		select AddressID, StreetAddress, City, State, PostalCode, Country from enrol.Address;

/*y.List all AddressID, StreetAddress, City, State, PostalCode, Country
	from Address who belongs to “Poland” country.*/

		select AddressID, StreetAddress, City, State, PostalCode, Country from enrol.Address
		where Country = 'Poland';

--z.List all the Address information whose state is null.
		
		select * from enrol.Address where State is NULL;

--aa.List all the Address information whose PostalCode is not null.

		select * from enrol.Address where State is not NULL;
	
--bb.List all the Address information whose City name is "Honda" and Country name is "Colombia"
	
		select * from enrol.Address where City = 'Honda' and Country = 'Colombia';


--10.Write the following Query based on the above datasets.
--a.List unique DOB from Student.

		select distinct(StudentDOB) from enrol.Student;

--b.List unique DepartmentName from Department.

		select distinct(DepartmentName) from enrol.Department;

--c.List unique Country name from Address.

		select distinct(Country) from enrol.Address;

--d.List unique State name from Address.

		select distinct(State) from enrol.Address;

--e.List unique City name from Address.

		select distinct(City) from enrol.Address;

/*f.List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService
 from Lecturer [LecturerYearService= Current Date – LecturerAge] (in year).*/

	   Select LecturerID,LecturerName,LecturerHighestQualification,
	   DATEDIFF(year,LecturerAge,GetDate()) As LecturerYearService from enrol.Lecturer;

/*g.List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType
from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" 
else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" 
else "Experienced".*/

	Select LecturerID,LecturerName,LecturerHighestQualification,
	Case When DATEDIFF(year,LecturerAge,GetDate())<5 then 'Beginning Level Experience'
		 When DATEDIFF(year,LecturerAge,GetDate())>=5 AND DATEDIFF(year,LecturerAge,GetDate())<10
		 then 'Mid Level experience'
		 Else 'Experienced'
	End as 'LecturerType'
	from enrol.Lecturer
		
/*11.Write the following Query based on the above datasets.
a.	Display all Student and their Department Information based on the relationship.*/

	SELECT * from enrol.Student S
	Left join enrol.Department D on S.DepartmentID=D.DepartmentID;

--b.Display all Student and their Address Information based on the relationship.

	SELECT * from enrol.Student S
	Left join enrol.Address A on S.AddressID=A.AddressID;

--c.Display all Department and their Lecturer Information based on the relationship.

	SELECT * from  enrol.Department D
	Left join enrol.Lecturer L on  D.DepartmentID=L.DepartmentID;

 /*d.Display all Student with their Department with Lecturer Information 
 based on the relationship.*/

	SELECT * from enrol.Student S
	Left Join enrol.Department D on S.DepartmentID=D.DepartmentID
	Left Join enrol.Lecturer L on  S.DepartmentID=L.DepartmentID;

--e.Display all Student with their Address and Department Information based on the relationship.

	SELECT * from enrol.Student S
	Join enrol.Address A on S.AddressID=A.AddressID
	Join enrol.Department D on S.DepartmentID=D.DepartmentID;

/*f.Display all Student with Address, Department and Lecturer Information 
	based on the relationship.*/

	SELECT * from enrol.Student S
	Join enrol.Address A on S.AddressID=A.AddressID
	Join enrol.Department D on S.DepartmentID=D.DepartmentID
	Join enrol.Lecturer L on  S.DepartmentID=L.DepartmentID;

/*g.Display all Student with Address, Department and Lecturer Information
	who belongs to either “ME” or “ECE” department.*/

	SELECT * from enrol.Student S
	Join enrol.Address A on S.AddressID=A.AddressID
	Join enrol.Department D on S.DepartmentID=D.DepartmentID
	Join enrol.Lecturer L on  S.DepartmentID=L.DepartmentID 
	where D.DepartmentName = 'ECE' or D.DepartmentName = 'ME';

/*h.Display Student with Department and their Lecturer information 
	based on the LecturerHighestQualification either “MS” or “PhD”.*/
	
	SELECT * from enrol.Student S
	Join enrol.Department D on S.DepartmentID=D.DepartmentID
	Join enrol.Lecturer L on  S.DepartmentID=L.DepartmentID 
	where L.LecturerHighestQualification = 'MS' or L.LecturerHighestQualification = 'PhD';

/*i.Display Student with Department and Address Information, 
	where student belongs to “Thailand” country.*/

	SELECT * from enrol.Student S
	Join enrol.Department D on S.DepartmentID=D.DepartmentID
	Join enrol.Address A on S.AddressID=A.AddressID 
	where A.Country='Thailand';

--j.Display Count of Student, Department wise.
	
	select DepartmentName, count(*) as "Number of Students" 
	from enrol.Student S Left join enrol.Department D on S.DepartmentID=D.DepartmentID 
	group by D.DepartmentName;

--k.Display Count of Lecturer, Department wise.

	select DepartmentName, count(*) as "Number of Lecturers" from enrol.Lecturer L
	Left join enrol.Department D on L.DepartmentID=D.DepartmentID group by D.DepartmentName;

--l.Display Count of Student, Country wise.

	select Country, count(*) as "Number of Students" from enrol.Student S
	Left join enrol.Address A on S.AddressID=A.AddressID group by A.Country;

--12.Write the following Query based on the above datasets.
--a.Create new table StudCopy and copy all records from Student table.
	
	SELECT * INTO enrol.StudCopy FROM enrol.Student;

--b.Create a new table DeptCopy and copy only the schema from Department table.

	SELECT * INTO enrol.DeptCopy FROM enrol.Department where 1=0;


--c.Create a new table DepartmentCopy and copy all records from Department table.

	SELECT * INTO enrol.DepartmentCopy FROM enrol.Department;

--d.Create a new table AddrCopy and copy only the schema from Address table.

	SELECT * INTO enrol.AddrCopy FROM enrol.Address where 1=0;

--e.Create a new table AddrCopy and copy all the records from Address table.

	Insert INTO enrol.AddrCopy Select StreetAddress,City,State,PostalCode,Country,InsertedOn 
	FROM enrol.Address;

--f.Create a new table LecturerCopy and copy all the records from Lecturer table.

	SELECT * INTO enrol.LecturerCopy FROM enrol.Lecturer;

--13.Write the following Query based on the above datasets.
--a.Delete all the records from LecturerCopy table.

		delete from enrol.LecturerCopy;
		
--b.Delete all the student information for the students who belong to “IT” department.

		Delete S from enrol.Student S 
		Join enrol.Department D on S.DepartmentID=D.DepartmentID 
		where D.DepartmentName='IT' ;
		
--c.Delete all the student information for the students who belong to “Indonesia” country.
	 
		Delete S from enrol.Student S 
		Join enrol.Address A on S.AddressID=A.AddressID 
		where A.Country='Indonesia' ;

--d.Delete all the student information for the student who belongs to “Nanshi” city.
		
		Delete S from enrol.Student S 
		Join enrol.Address A on S.AddressID=A.AddressID 
		where A.City='Nanshi';
		
--e.Delete all the student information for the student who belongs to “Bretagne” state.

		Delete S from enrol.Student S 
		Join enrol.Address A on S.AddressID=A.AddressID 
		where A.State='Bretagne';



--14.Write the following Query based on the above datasets.
--a.Update StudentMobile for those students who belongs to Department “ME”.

		UPDATE enrol.Student
		SET enrol.Student.StudentMobile = 111111111
		FROM enrol.Student S
		JOIN enrol.Department D
        ON S.DepartmentId = D.DepartmentId 
		where D.DepartmentName='ME';
		
--b.Update Student DepartmentID as 3, for the StudentID=42.

		UPDATE enrol.Student SET DepartmentID=3 where StudentID=42;
		
--c.Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.

		UPDATE enrol.Lecturer SET LecturerHighestQualification = 'PHd' 
		where LecturerHighestQualification= 'PhD';

--d.Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.

		UPDATE enrol.Address SET PostalCode = '00000' 
		where PostalCode is Null;

--e.Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.

		UPDATE enrol.Student SET StudentLastName='Paul' where StudentFirstName ='Jerry';




