---�ֹ����̺�
drop table ordertbl;
create table ordertbl  (
unq number,
orderId varchar2(40),
orderName varchar2(40),
orderPhone varchar2(40),
orderZipcode varchar2(6),
orderAddr1 varchar2(200),
orderAddr2 varchar2(200),
orderMemo varchar2(100),
orderPunq varchar2(400),
orderPcount varchar2(400),
orderPfile varchar2(400),
orderPrice number,
orderdate timestamp,
orderStatus varchar2(20) default 'n'

);


 create sequence order_seq
start with 1    
increment by 1 
maxvalue 999999;



alter table ordertbl add orderPname varchar2(400);
alter table ordertbl add orderPonePrice varchar2(400); 


