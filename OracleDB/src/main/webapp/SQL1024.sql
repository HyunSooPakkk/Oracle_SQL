-- drop table customer -- 테이블 삭제

create table member (
id varchar2(20),
pw varchar2(20),
name varchar2(30),
gender varchar2(1),
age number,
birth varchar2(13),
phone varchar2(13),
rdate date
);

insert into stuscore values(
1, '홍길동', 100,100,100,100+100+100,(100+100+100)/3,0
);

insert into stuscore values (
2, '유관순', 100,100,99,100+100+99,(100+100+99)/3,0
);

insert into stuscore values (
3, '이순신', 100,100,99,100+100+99,(100+100+99)/3,0
);


update stuscore set kor=100,eng=100,math=100,total=100+100+100, avg=(100+100+100)/3.0;

select*from stuscore;

--delete stuscore where stunum=1; --삭제

commit;

select * from stuscore;

rollback;

select * from stuscore;

update stuscore set kor=100,eng=100,math=100,total=100+100+100, avg=(100+100+100)/3
where stunum=3; --3번 항목 수정

rollback;

commit;

select * from tab; --현재 생성되어있는 모든 테이블을 보여줌

desc stuscore; --현재 테이블의 컬럼과 컬럼 타입을 보여줌

select * from member;

insert into member values (
'aaa','1111','홍길동','M','20','1990-01-01','010-1111-1111',sysdate
);

drop table member;

create table member (  -- 테이블 추가
id varchar2(20),
pw varchar2(20),
name varchar2(30),
gender varchar2(1),
age number,
birth varchar2(13),
phone varchar2(13),
rdate date
);

select * from member;

