select a || b from dual;

select employee_id,emp_name,hire_date from employees
order by hire_date asc;

--00/01/01 이후 입사한 사원 출력--
--00/01/01, 00-01-01, 2000-01-01 전부 같음
select * from employees
where hire_date>'00/01/01' order by hire_date asc;

select * from employees order by salary desc;

--연봉이 가장 높은 사원 출력--
select max(salary) from employees;
select * from employees where salary=(select max(salary) from employees);

--커미션값이 null 아닌 사원 출력--
select * from employees where commission_pct is not null;

--부서번호 80번 이상인 사원 출력--
select * from employees where department_id>=80 order by department_id asc;

--부서번호 80번만 제외하고 출력--
select * from employees where not department_id=80 order by department_id asc;

--부서번호가 50번이면서 연봉이 6000 이상인 사원 출력--
select * from employees where department_id=50 and salary>=6000;

--연봉이 2000이상 3000이하인 사원 출력--
select * from employees where salary>=2000 and salary<=3000;

--Between A and B--
select * from employees where salary between 2000 and 3000;

--avg,count,max,min ▶ group function--
--연봉 평균--
select avg(salary) from employees;

--평균 연봉 이하인 사원 역순 정렬--
select * from employees where salary<=(select avg(salary) from employees) order by salary desc;

--월급 3000, 4000, 6000인 사원 출력--
select * from employees where salary=3000 or salary=4000 or salary=6000
order by salary asc;

select * from employees where salary in(3000,4000,6000);

--사원번호 101,151,200인 사원들과 그들의 급여 출력--
select * from employees where employee_id=101 or employee_id=151 or employee_id=200
order by employee_id asc, salary asc;

--월급 2000미만, 3000초과인 사원 출력--
select * from employees where salary>2000 or salary<3000;

select * from employees where salary not between 2000 and 3000;

--입사일이 00/01/01 ~ 00/12/31인 사원 출력--
select * from employees where hire_date between '2000-01-01' and '2000-12-31';

--이름이 영문대문자 S로 시작되는 사원 출력--
select emp_name from employees where emp_name like 'S%';

--이름이 영문소문자 n으로 끝나는 사원 출력--
select emp_name from employees where emp_name like '%n';

--이름에 영문소문자 e가 들어간 사원 출력--
select emp_name from employees where emp_name like '%e%';

select * from Board;

--drop table board;

select count(*) from Board;

select * from Board;

--bCont 컬럼에 'faucibus' 단어가 들어가 있는 게시글을 출력--
select * from Board where bCont like '%faucibus%';

--1. bCont 컬럼에 'ven' 단어가 들어가 있는 게시글
--2. bTitle 컬럼에 'ven' 단어가 들어가 있는 게시글
--3. bCont 또는 bTitle 컬럼에 'ven' 단어가 들어가 있는 게시글
--출력--
select * from Board where bCont like '%ven%';
select * from Board where bTitle like '%ven%';
select * from Board where bCont like '%ven%' or bTitle like '%ven%';

--bCont 컬럼에서 n으로 시작하는 4개의 문자가 있는 게시글 출력--
--ex)nibh navld uisque--
--%n___%
select bCont from Board where bCont like '%n___';

--emp_name 컬럼에서 P로 시작하는 3개 문자 이름 출력--
select emp_name from employees where emp_name like 'P__ %';

--emp_name 컬럼에서 Do로 시작하는 이름 출력--
select emp_name from employees where emp_name like 'Do%';

--emp_name 컬럼에서 D로 시작하는 이름 출력--
select emp_name from employees where emp_name like 'D%';

--emp_name 컬럼에서 소문자 a가 들어간 이름 출력--
select emp_name from employees where emp_name like '%a%';

--부서번호 순차정렬, 이름은 역순정렬
--사원번호, 사원명, 부서번호, 직급, 입사일, 월급 출력
select employee_id, emp_name, department_id, job_id, hire_date, salary from employees
order by department_id asc, emp_name desc; 

--월급으로 순차정렬, 입사일 역순정렬
--사원번호, 사원명, 부서번호, 직급, 입사일, 월급 출력
select employee_id, emp_name, department_id, job_id, hire_date, salary from employees
order by salary asc, hire_date desc;

--절대값: abs
select -10, abs(-10) "절대값" from dual;

--버림: floor
select 10.54378, floor(10.54378) from dual;

--trunc(값,버림위치): 특정자리 버림
select 10.54378, trunc(10.54378,2) from dual;

--round: 특정자리 반올림
select 10.54378, round(10.54378), round(10.54378,3) from dual;

select * from stuscore;
select stunum,name,math,eng,
kor+eng, floor(kor+eng)/2
from stuscore;

--월급을 원화로 환산(1342.32원), 소수점 셋째자리 반올림 출력--
--사번/사원명/월급/월급환산/월급환산 셋째자리 반올림
select employee_id, emp_name, salary, salary*1342.32, round(salary*1342.32,2) from employees;

--입사일부터 현재 날짜까지, 소수점 둘째자리까지 출력--
select sysdate-hire_date, round(sysdate-hire_date,2) from employees;

--입사일부터 현재 날짜까지, 소수점 자리는 반올림하고 일을 연으로 환산 출력--
select emp_name, floor(round(sysdate-hire_date)/365) sdate from employees
order by sdate asc;

select * from member;
select * from employees;

--나머지 함수--
select mod(27,2), mod(27,5), mod(27,7) from dual;

--employees에서 사번이 홀수인 사원 출력--
select * from employees where mod(employee_id,2)=1
order by employee_id asc;

--employees에서 관리자 아이디가 짝수인 사원 출력--
--사번, 사원명, 입사일, 월급, 관리자 아이디, 부서번호
select employee_id,emp_name,hire_date,salary,manager_id,department_id from employees
where mod(manager_id,2)=0 order by employee_id asc;

select bHit from Board;
select avg(bHit) from Board;
--소수점 둘째자리에서 반올림
select bHit, round(bHit,1) from Board;
--소수점 버림
select bHit, floor(avg(bHit)) from Board;
--평균보다 높은 조회수를 가진 게시글 출력
select * from Board where bHit >= (select avg(bHit) from Board);

select to_char(salary,'999,999'), to_char(round(salary*1342.32),'999,999,999') from employees;

--시퀀스--
create sequence member_seq
start with 1
increment by 1
minvalue 1
maxvalue 99999
nocycle
nocache;

create sequence board_seq
start with 1001
increment by 1
minvalue 1
maxvalue 99999
nocycle
nocache;

select * from Board order by bNo desc;

insert into Board values (
board_seq.nextval, '제목입니다.','내용입니다.',sysdate,'aaa',board_seq.currval,0,0,1,'1.jpg');

commit;

select board_seq.currval from dual;
select board_seq.nextval from dual;

select member_seq.nextval from dual;

--dept_seq 만들기. 시작 10, 증분 10, 나머지는 똑같이
create sequence dept_seq
start with 10
increment by 10
minvalue 1
maxvalue 99999
nocycle
nocache;

select dept_seq.nextval from dual;

desc stuscore;

select * from Stuscore;

--delete Stuscore;

commit;

select * from Stuscore order by total asc;

select stunum,rank() over (order by total desc) m_rank, rank
from Stuscore;

update Stuscore set rank=1
where stunum=1;

select * from Stuscore;

--합계 기준으로 역순정렬해 등수 출력--
select stunum,rank() over (order by total desc) from Stuscore;

select * from Stuscore a, member b;

--Table Join--
select employee_id,emp_name, employees.department_id,department_name,parent_id
from employees a, departments b
where a.department_id = b.department_id;

select department_id,department_name from departments;

select * from department; 

--EMP2--
--drop table emp2;
--Table copy--
create table emp2 as select * from employees;

select * from emp2;

update emp2 set manager_id = '';

commit;

select * from emp2;

--테이블 emp2/employees의 사원번호를 일치시킨 후
--emp2/employees의 관리자 번호를 검색
--employees의 관리자 번호를 emp2의 관리자 번호에 입력시킴
update (select a.manager_id a_m, b.manager_id b_m
from emp2 a, employees b
where a.employee_id = b.employee_id)
set a_m = b_m;

create table emp1 (
empNo number(4) primary key,
eName varchar(10),
hire_date date
);

insert into emp1
values(emp_seq.nextval, '홍길동', sysdate);
insert into emp1
values(emp_seq.nextval, '홍길자', sysdate);
insert into emp1
values(emp_seq.nextval, '홍길순', sysdate);
insert into emp1
values(emp_seq.nextval, '유관순', sysdate);
insert into emp1
values(emp_seq.nextval, '이순신', sysdate);

select * from emp1;

commit;

select * from employees
order by employee_id, emp_name, job_id, hire_date asc;
