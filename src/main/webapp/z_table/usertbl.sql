DROP TABLE USERTBL;
CREATE TABLE userTBL (
     userId VARCHAR2(30) PRIMARY KEY,
     userPwd VARCHAR2(50) NOT NULL,
     userName VARCHAR2(30) NOT NULL,
     userNickname VARCHAR2(20)NOT NULL,
     userPhone VARCHAR2(20) NOT NULL ,
     userZipcode VARCHAR2(6),
     userAddr1 VARCHAR2(100),
     userAddr2 VARCHAR2(100),
     userEmail VARCHAR2(50),
     userBirth DATE NOT NULL,
     userGender char(1) NOT NULL ,
     userGrade VARCHAR2(10) DEFAULT 'F',
     userBought NUMBER(10) DEFAULT '0',
     userRdate TIMESTAMP
);
alter table userTBL add userMileage number(10) default '0';

insert into userTBL(userId, userPwd,userName, userNickname, userPhone, userBirth, userGender) 
	values ('root','1234','admin','admin','010-0000-0000','1999/09/09','M');