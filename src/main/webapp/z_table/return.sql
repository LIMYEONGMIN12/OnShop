drop table returntbl;
create table returntbl (
    unq number,
    selectreturn varchar2(100),
    returnpname varchar2(500),
    returnreason varchar2(4000),
    returnunq number,
    returnid varchar2(200)

 

);

CREATE SEQUENCE return_seq
START WITH 1
INCREMENT BY 1
maxvalue 999999;




alter table returntbl add returndate timestamp;