CREATE TABLE productTbl(
    productUnq number unique,               --unq
    productId varchar2(30) primary key,     --상품명 (직접지정) <adidasLB
    categoryCode varchar2(40) not null,     --OUTER, TOP BOTTOM, SHOES
    productName varchar2(55) not null,      --상품이름 : 아디다스 져지
    productSize varchar2(20) not null,       --상품사이즈 : L M S
    productColor varchar2(20) default 'N',      -- 색 : 
    productPrice number(20) not null,           --가격:30000
    productStock number(10) not null,           --재고: 30
    productExplain varchar2(400),               --상품설명
    productSale VARCHAR2(4) DEFAULT 'N',        --
    productWish number default '0' ,            --좋아요수
    productSell number default '0' ,            --판매량
    FileName varchar2(500),             
    FileSize varchar2(500),
    
    productRdate timestamp,
    productUdate timestamp
);

 create sequence productTbl_seq
start with 1    
increment by 1 
maxvalue 999999;

alter table producttbl add(gubun varchar2(40) default 'JUMPER');
					
				
		