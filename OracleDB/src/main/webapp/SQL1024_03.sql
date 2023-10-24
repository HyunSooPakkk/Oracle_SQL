select * from departments;

select * from departments order by manager_id asc;

select * from employees order by employee_id desc;

--조건절--
select * from employees where employee_id >= 200;
select * from employees where employee_id >= 190 and employee_id >= 205;

--월급 5,000 이상인 사원을 순차정렬 출력되도록 검색--
select * from employees where salary >= 5000 order by salary asc;

--사번/이름/직급/부서 출력--
select employee_id, emp_name, job_id, department_id, salary from employees;

--테이블의 데이터 복사--
create table emp2 as select * from employees;

select * from emp2;

--컬럼타입 보려면
desc emp2;

--컬럼이름 변경
alter table emp2 rename column emp_name to e_name;

--컬럼 데이터타입/길이 변경
--email안의 데이터가 숫자가 아니면 변경할 수 없음.
alter table emp2 modify email varchar2(50);

--컬럼 삭제
alter table emp2 drop column create_date;

--컬럼 추가
alter table emp2 add create_date date;

--컬럼 순서 변경
alter table emp2 modify update_date invisible;
alter table emp2 modify update_date visible;

select * from emp2;

--컬럼의 데이터만 복사
insert into emp2 select * from employees;

select * from emp2;

commit;

drop table emp2;

--이름/급여/부서 순차정렬 출력--
select  emp_name, salary, hire_date from emp2 order by emp_name asc;

--항목 순서 변경하기--
alter table emp2 modify salary invisible;
alter table emp2 modify manager_id invisible;
alter table emp2 modify commission_pct invisible;
alter table emp2 modify retire_date invisible;
alter table emp2 modify department_id invisible;
alter table emp2 modify job_id invisible;

alter table emp2 modify salary visible;
alter table emp2 modify manager_id visible;
alter table emp2 modify commission_pct visible;
alter table emp2 modify retire_date visible;
alter table emp2 modify department_id visible;
alter table emp2 modify job_id visible;

--변수명 별칭으로 변경하기(별칭선언)-- as는 생략이 가능하다.
select salary, salary*12 as y_salary, salary*12*1342 as k_salary from employees;

select * from employees;

--연봉+인센티브 계산-- nvl(변수,0) / null인 경우 0
select salary, salary*12, (salary*12)*commission_pct from employees;
select salary*12 as "연봉",
(salary*12)*nvl(commission_pct,0) as "인센티브", --null값 ▶ 없는 값이나 0이 아니라 무한대라고 생각하면 됨.
(salary*12)+(salary*12)*nvl(commission_pct,0) as "실제연봉" from employees;

select nvl(manager_id,0) from employees;

--사번/월급/직급/인센티브/연봉/연봉+커미션 출력--
select employee_id,salary as y_salary,nvl(commission_pct,0) as commission,
salary*12+(salary*12)*nvl(commission_pct,0) as yc_salary from employees;

--월급이 7000인 사람 검색--
select * from employees where salary=7000;

--인센티브가 null인 사람 검색-- ▶ null은 등호 말고 is로 검색해야 함.
select * from employees where commission_pct is null;

--영문 부서번호, 부서명을 한글이름으로 변경해서 출력--
select department_id as "부서번호", department_name as "부서명" from departments
where department_id >= 10 and department_id <= 40;

--문자타입을 붙여서 출력--
select emp_name || ' is a ' || job_id from employees;
select concat(concat(emp_name,' is a '),job_id) as con_name from employees;

select * from stuscore;

select kor,eng,math, kor+eng+math,(kor+eng+math)/3 from stuscore;

--중복제거 출력--
select distinct department_id from employees order by department_id asc;

select distinct job_id from employees order by job_id asc;

--월급 3000, 6000, 7000인 사원 출력--
select * from employees where salary=3000 or salary=6000 or salary=7000;
--월급 3000 이상 10000 이하인 사원 출력--
select * from employees where salary>=3000 and salary<=10000 order by salary desc;

--월급이 5000 이하인 사람에게 월급 +1000 인상해서 출력, 원화로 변환--
select salary+1000 as "월급+인센티브1000",
(salary+1000)*1342 as "원화" from employees where salary<=5000;

--부서번호 10,30,50인 사원번호/이름/부서번호/직급/월급/입사일 출력--
select employee_id,emp_name,department_id,job_id,salary,hire_date from employees
where department_id=10 or  department_id=30 or department_id=50
order by department_id asc, employee_id desc;

--입사일: 2003/09/01 이후이면서 월급이 4000이상 8000이하인 사원의 사원번호/이름/월급/입사일/부서번호 출력--
select employee_id,emp_name,salary,hire_date,department_id from employees
where hire_date>'2003/09/01' and salary>=4000 and salary<=8000 order by salary desc;

commit;



