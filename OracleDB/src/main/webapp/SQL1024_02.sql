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
'aaa','1111','ȫ�浿','010-1111-1111','M','game,golf,run'
);

insert into member values (
'bbb','2222','������','010-2222-2222','F','book,swim,cook'
);

insert into member values (
'ccc','3333','�̼���','010-3333-3333','M','sing,soccer,write'
);

insert into member values (
'ddd','4444','������','010-4444-4444','M','eat,speak,pray'
);

insert into member values (
'eee','5555','������','010-5555-5555','M','ride,play,smile'
);

commit;

select * from member;

delete member where id='ccc';

select * from member;

update member set phone='010-3333-3333' where id='ddd';

commit;

select * from tab; --��� ���̺� ������

desc employees;

select create_date from employees;

select * from member;

select id,name from member;

select * from employees;

select employee_id, emp_name, salary, commission_pct from employees order by salary desc;

desc employees;

select hire_date,sysdate,round(sysdate-hire_date) from employees;

select distinct department_id from employees order by department_id asc; -- distinct �� �ߺ� ����

select * from departments;

desc stuscore;

select emp_name from employees;

select emp_name from employees where emp_name = 'Donald OConnell'; -- ������ ���̺��, �÷��� ���� ��ҹ��� ���� ������ �����Ͱ������� ������.





