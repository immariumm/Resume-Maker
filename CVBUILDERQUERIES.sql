create database CV_Builder 

use CV_Builder

create table Users
(
	UserID int primary key identity(1,1),
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	EmailAddress varchar(100) not null unique,
	Password varchar(100) not null unique,
	ConfirmPassword varchar(100) not null ,
	Img varchar (MAX)
)


create table CVPersonalInfo
(
----personal info 
	UserID int foreign key references Users(UserID),  
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	EmailAddress varchar(100) not null unique,
	PhoneNo varchar(100) not null unique,
	Address varchar(100) not null unique,
	--it has limit of 140 to 250 words 
	About varchar(1000) not null unique,
	Role varchar(100) not null,
----social accounts 
	Linkeden varchar(600) unique,
	Website  varchar(600) unique,

	Primary key(UserID,Emailaddress)
)

create table CVExperiance
(
	ExpHeading varchar(100) not null,
	ExpTimespam varchar(100) not null,
	ExpDetail varchar(3000) not null,
	UserID int foreign key references Users(UserID),

	Primary key(UserID,ExpHeading,ExpTimespam)
	
)

create table CVLanguages
(
	Language varchar(100) not null,
	Percentage varchar(100) not null,

	UserID int foreign key references Users(UserID),

	Primary key(UserID,Language,percentage)

)

create table CVskill 
(
	SkillHeading varchar(100) not null,
	SkillPercent varchar(100) not null,
	SkillDetail varchar(3000) not null,

	UserID int foreign key references Users(UserID),

	Primary key(UserID,SkillHeading,SkillPercent)

)

create table CVEducation
(
		--for school education 
		SchoolName varchar(100)  not null,
		SchoolGrade varchar(10) not null,
		Schoolyear  varchar(10) not null,
		SchoolBoard varchar(10) not null,
		--for college education 
		CollegeName varchar(100)  not null,
		CollegeGrade varchar(10) not null,
		Collegeyear  varchar(10) not null,
		CollegeBoard varchar(10) not null,
		--for univesity 
		UniversityName varchar(100)  not null,
		CGPA  varchar(10) not null,
		Degree  varchar(10) not null,
	    Year varchar(10) not null,	
		
		UserID int foreign key references Users(UserID),
		Primary key(UserID,UniversityName,CGPA,Year)
) 

create table CVCertificates 
(
	InstituteName varchar (100),
	Certificate varchar (100),
	Duration varchar (100),

	UserID int foreign key references Users(UserID),

	Primary key(UserID,Duration,InstituteName,Certificate)
)

select * from Users
select * from  CVPersonalInfo
select * from  CVExperiance
select * from CVLanguages
select * from CVEducation
select * from CVskill







	
	

