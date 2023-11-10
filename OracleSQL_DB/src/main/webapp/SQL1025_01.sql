select a || b from dual;

select employee_id,emp_name,hire_date from employees
order by hire_date asc;

--00/01/01 ���� �Ի��� ��� ���--
--00/01/01, 00-01-01, 2000-01-01 ���� ����
select * from employees
where hire_date>'00/01/01' order by hire_date asc;

select * from employees order by salary desc;

--������ ���� ���� ��� ���--
select max(salary) from employees;
select * from employees where salary=(select max(salary) from employees);

--Ŀ�̼ǰ��� null �ƴ� ��� ���--
select * from employees where commission_pct is not null;

--�μ���ȣ 80�� �̻��� ��� ���--
select * from employees where department_id>=80 order by department_id asc;

--�μ���ȣ 80���� �����ϰ� ���--
select * from employees where not department_id=80 order by department_id asc;

--�μ���ȣ�� 50���̸鼭 ������ 6000 �̻��� ��� ���--
select * from employees where department_id=50 and salary>=6000;

--������ 2000�̻� 3000������ ��� ���--
select * from employees where salary>=2000 and salary<=3000;

--Between A and B--
select * from employees where salary between 2000 and 3000;

--avg,count,max,min �� group function--
--���� ���--
select avg(salary) from employees;

--��� ���� ������ ��� ���� ����--
select * from employees where salary<=(select avg(salary) from employees) order by salary desc;

--���� 3000, 4000, 6000�� ��� ���--
select * from employees where salary=3000 or salary=4000 or salary=6000
order by salary asc;

select * from employees where salary in(3000,4000,6000);

--�����ȣ 101,151,200�� ������ �׵��� �޿� ���--
select * from employees where employee_id=101 or employee_id=151 or employee_id=200
order by employee_id asc, salary asc;

--���� 2000�̸�, 3000�ʰ��� ��� ���--
select * from employees where salary>2000 or salary<3000;

select * from employees where salary not between 2000 and 3000;

--�Ի����� 00/01/01 ~ 00/12/31�� ��� ���--
select * from employees where hire_date between '2000-01-01' and '2000-12-31';

--�̸��� �����빮�� S�� ���۵Ǵ� ��� ���--
select emp_name from employees where emp_name like 'S%';

--�̸��� �����ҹ��� n���� ������ ��� ���--
select emp_name from employees where emp_name like '%n';

--�̸��� �����ҹ��� e�� �� ��� ���--
select emp_name from employees where emp_name like '%e%';

select * from Board;

--drop table board;

select count(*) from Board;

select * from Board;

--bCont �÷��� 'faucibus' �ܾ �� �ִ� �Խñ��� ���--
select * from Board where bCont like '%faucibus%';

--1. bCont �÷��� 'ven' �ܾ �� �ִ� �Խñ�
--2. bTitle �÷��� 'ven' �ܾ �� �ִ� �Խñ�
--3. bCont �Ǵ� bTitle �÷��� 'ven' �ܾ �� �ִ� �Խñ�
--���--
select * from Board where bCont like '%ven%';
select * from Board where bTitle like '%ven%';
select * from Board where bCont like '%ven%' or bTitle like '%ven%';

--bCont �÷����� n���� �����ϴ� 4���� ���ڰ� �ִ� �Խñ� ���--
--ex)nibh navld uisque--
--%n___%
select bCont from Board where bCont like '%n___';

--emp_name �÷����� P�� �����ϴ� 3�� ���� �̸� ���--
select emp_name from employees where emp_name like 'P__ %';

--emp_name �÷����� Do�� �����ϴ� �̸� ���--
select emp_name from employees where emp_name like 'Do%';

--emp_name �÷����� D�� �����ϴ� �̸� ���--
select emp_name from employees where emp_name like 'D%';

--emp_name �÷����� �ҹ��� a�� �� �̸� ���--
select emp_name from employees where emp_name like '%a%';

--�μ���ȣ ��������, �̸��� ��������
--�����ȣ, �����, �μ���ȣ, ����, �Ի���, ���� ���
select employee_id, emp_name, department_id, job_id, hire_date, salary from employees
order by department_id asc, emp_name desc; 

--�������� ��������, �Ի��� ��������
--�����ȣ, �����, �μ���ȣ, ����, �Ի���, ���� ���
select employee_id, emp_name, department_id, job_id, hire_date, salary from employees
order by salary asc, hire_date desc;

--���밪: abs
select -10, abs(-10) "���밪" from dual;

--����: floor
select 10.54378, floor(10.54378) from dual;

--trunc(��,������ġ): Ư���ڸ� ����
select 10.54378, trunc(10.54378,2) from dual;

--round: Ư���ڸ� �ݿø�
select 10.54378, round(10.54378), round(10.54378,3) from dual;

select * from stuscore;
select stunum,name,math,eng,
kor+eng, floor(kor+eng)/2
from stuscore;

--������ ��ȭ�� ȯ��(1342.32��), �Ҽ��� ��°�ڸ� �ݿø� ���--
--���/�����/����/����ȯ��/����ȯ�� ��°�ڸ� �ݿø�
select employee_id, emp_name, salary, salary*1342.32, round(salary*1342.32,2) from employees;

--�Ի��Ϻ��� ���� ��¥����, �Ҽ��� ��°�ڸ����� ���--
select sysdate-hire_date, round(sysdate-hire_date,2) from employees;

--�Ի��Ϻ��� ���� ��¥����, �Ҽ��� �ڸ��� �ݿø��ϰ� ���� ������ ȯ�� ���--
select emp_name, floor(round(sysdate-hire_date)/365) sdate from employees
order by sdate asc;

select * from member;
select * from employees;

--������ �Լ�--
select mod(27,2), mod(27,5), mod(27,7) from dual;

--employees���� ����� Ȧ���� ��� ���--
select * from employees where mod(employee_id,2)=1
order by employee_id asc;

--employees���� ������ ���̵� ¦���� ��� ���--
--���, �����, �Ի���, ����, ������ ���̵�, �μ���ȣ
select employee_id,emp_name,hire_date,salary,manager_id,department_id from employees
where mod(manager_id,2)=0 order by employee_id asc;

select bHit from Board;
select avg(bHit) from Board;
--�Ҽ��� ��°�ڸ����� �ݿø�
select bHit, round(bHit,1) from Board;
--�Ҽ��� ����
select bHit, floor(avg(bHit)) from Board;
--��պ��� ���� ��ȸ���� ���� �Խñ� ���
select * from Board where bHit >= (select avg(bHit) from Board);

select to_char(salary,'999,999'), to_char(round(salary*1342.32),'999,999,999') from employees;

--������--
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
board_seq.nextval, '�����Դϴ�.','�����Դϴ�.',sysdate,'aaa',board_seq.currval,0,0,1,'1.jpg');

commit;

select board_seq.currval from dual;
select board_seq.nextval from dual;

select member_seq.nextval from dual;

--dept_seq �����. ���� 10, ���� 10, �������� �Ȱ���
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

--�հ� �������� ���������� ��� ���--
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

--���̺� emp2/employees�� �����ȣ�� ��ġ��Ų ��
--emp2/employees�� ������ ��ȣ�� �˻�
--employees�� ������ ��ȣ�� emp2�� ������ ��ȣ�� �Է½�Ŵ
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
values(emp_seq.nextval, 'ȫ�浿', sysdate);
insert into emp1
values(emp_seq.nextval, 'ȫ����', sysdate);
insert into emp1
values(emp_seq.nextval, 'ȫ���', sysdate);
insert into emp1
values(emp_seq.nextval, '������', sysdate);
insert into emp1
values(emp_seq.nextval, '�̼���', sysdate);

select * from emp1;

commit;

select * from employees
order by employee_id, emp_name, job_id, hire_date asc;
