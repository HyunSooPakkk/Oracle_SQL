drop table member;

create table member (
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
phone varchar2(20),
gender varchar2(6),
hobby varchar2(80)
);

insert into member(id,pw,name,phone,gender,hobby) values (
'aaa','1111','홍길동','010-1111-1111','M','game,golf,run'
);

insert into member values (
'bbb','2222','유관순','010-2222-2222','F','book,swim,cook'
);

insert into member values (
'ccc','3333','이순신','010-3333-3333','M','sing,soccer,write'
);

insert into member values (
'ddd','4444','강감찬','010-4444-4444','M','eat,speak,pray'
);

insert into member values (
'eee','5555','김유신','010-5555-5555','M','ride,play,smile'
);

commit;

select * from member;

delete member where id='ccc';

select * from member;

update member set phone='010-3333-3333' where id='ddd';

commit;

select * from tab; --모든 테이블 보여줌

desc employees;

select create_date from employees;

select * from member;

select id,name from member;

select * from employees;

select employee_id, emp_name, salary, commission_pct from employees order by salary desc;

desc employees;

select hire_date,sysdate,round(sysdate-hire_date) from employees;

select distinct department_id from employees order by department_id asc; -- distinct ▶ 중복 방지

select * from departments;

desc stuscore;

select emp_name from employees;

select emp_name from employees where emp_name = 'Donald OConnell'; -- 변수와 테이블명, 컬럼은 영문 대소문자 구분 없으나 데이터값에서는 구분함.





