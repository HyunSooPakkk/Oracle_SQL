create table customer (
name varchar2(20) primary key,
age varchar2(3),
gender varchar2(1)
);

insert into customer(name,age,gender) values (
'ȫ�浿','20','M');

insert into customer(name,age,gender) values (
'������','21','F');

insert into customer(name,age,gender) values (
'�̼���','22','M');

commit;

select * from customer;

insert into customer values (
'������','23','M');

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
1,'�Խñ��� ����մϴ�.',
'�Խ��ǿ��� ������ �Է��ϴ� �κп� ���ڸ� ���� ���Դϴ�.',
sysdate,'aaa','1.jpg');

commit;

insert into freeboard values (
2,'�Խñ�02',
'���� �Է� �κ�',
sysdate,'bbb','2.jpg');

commit;

select * from freeboard;

insert into freeboard values (
3,'�Խñ�03',
'���� �Է� �κ��Դϴ�',
sysdate,'ccc','3.jpg');

commit;

select * from freeboard;

delete from freeboard where bno=1;

select * from freeboard;

rollback;

commit;

update freeboard set btitle = '�Խñ� ���� ������' where bno=2;

select * from freeboard;

rollback;

commit;



