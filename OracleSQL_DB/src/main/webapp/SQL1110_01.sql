select * from member
where id='aaa' and pw='1111';

select * from employees;

desc memm;

alter table member add mdate date
;

desc member;

update member set mdate=sysdate-1;

commit;

select * from member;

insert into member values (
'fff','1111','장영실','010-6666-6666','Male','game,golf',sysdate-1
);

rollback;

select * from member;

insert into member values (
'lll','1111','김영자','010-7777-7777','Female','book,golf',sysdate-1
);

rollback;

delete  member where id='ggg';

commit;

select * from member where id = 'bbb';

select * from member where id = 'ddd';
commit;
