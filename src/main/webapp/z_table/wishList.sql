

drop table wishlist;


 create table wishlist(
	unq 		number,
 	wishuserId     	varchar2(400),
 	wishPunq   	varchar2(400),
    wishFilename	varchar2(400),
	wishpname	varchar2(400)	
 );

CREATE SEQUENCE wish_seq
START WITH 1
INCREMENT BY 1
maxvalue 999999;
