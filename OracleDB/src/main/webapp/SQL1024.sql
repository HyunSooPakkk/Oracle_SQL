-- drop table customer -- ���̺� ����

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
1, 'ȫ�浿', 100,100,100,100+100+100,(100+100+100)/3,0
);

insert into stuscore values (
2, '������', 100,100,99,100+100+99,(100+100+99)/3,0
);

insert into stuscore values (
3, '�̼���', 100,100,99,100+100+99,(100+100+99)/3,0
);


update stuscore set kor=100,eng=100,math=100,total=100+100+100, avg=(100+100+100)/3.0;

select*from stuscore;

--delete stuscore where stunum=1; --����

commit;

select * from stuscore;

rollback;

select * from stuscore;

update stuscore set kor=100,eng=100,math=100,total=100+100+100, avg=(100+100+100)/3
where stunum=3; --3�� �׸� ����

rollback;

commit;

select * from tab; --���� �����Ǿ��ִ� ��� ���̺��� ������

desc stuscore; --���� ���̺��� �÷��� �÷� Ÿ���� ������

select * from member;

insert into member values (
'aaa','1111','ȫ�浿','M','20','1990-01-01','010-1111-1111',sysdate
);

drop table member;

create table member (  -- ���̺� �߰�
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

