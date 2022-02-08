create table mileageTBL(
    userId varchar2(30) not null,
    mileStatus varchar2(4) default 'p', 
    mileCost number(10) default '0', --??????
    mileContent varchar2(400),
    mileDate date,
    constraint mileStatus_ck check(mileStatus in ('p','m')), 
   constraint mileId_fk foreign key(userId) references userTBL(userId)
);