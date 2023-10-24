create table customer (
name varchar2(20) primary key,
age varchar2(3),
gender varchar2(1)
);

insert into customer(name,age,gender) values (
'홍길동','20','M');

insert into customer(name,age,gender) values (
'유관순','21','F');

insert into customer(name,age,gender) values (
'이순신','22','M');

commit;

select * from customer;

insert into customer values (
'강감찬','23','M');

commit;

select * from customer;

create table freeboard values (
bno number(4),
btitle varchar2(2000),
bcontent varchar2(3000),
bdate date,
buser varchar2(20),
bfile varchar2(300)
);

insert into freeboard values (
1,'게시글을 등록합니다.',
'게시판에서 내용을 입력하는 부분에 글자를 적는 것입니다.',
sysdate,'aaa','1.jpg');

commit;

insert into freeboard values (
2,'게시글02',
'내용 입력 부분',
sysdate,'bbb','2.jpg');

commit;

select * from freeboard;

insert into freeboard values (
3,'게시글03',
'내용 입력 부분입니다',
sysdate,'ccc','3.jpg');

commit;

select * from freeboard;

delete from freeboard where bno=1;

select * from freeboard;

rollback;

commit;

update freeboard set btitle = '게시글 제목 수정함' where bno=2;

select * from freeboard;

rollback;

commit;



