insert into memm values(
'aaa','1111','ȫ�浿','010-1111-1111','Male','game,golf,run'
)
;
insert into memm values(
'bbb','1111','������','010-2222-2222','Female','golf,run'
)
;
insert into memm values(
'ccc','1111','�̼���','010-3333-3333','Male','cook,book'
)
;

--�÷� �߰�
alter table memm add mdate date;
desc memm;
update memm
set mdate = sysdate;
select * from memm;

rollback;

commit;

delete mem where id='ddd';

select * from memm;