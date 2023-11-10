insert into memm values(
'aaa','1111','홍길동','010-1111-1111','Male','game,golf,run'
)
;
insert into memm values(
'bbb','1111','유관순','010-2222-2222','Female','golf,run'
)
;
insert into memm values(
'ccc','1111','이순신','010-3333-3333','Male','cook,book'
)
;

--컬럼 추가
alter table memm add mdate date;
desc memm;
update memm
set mdate = sysdate;
select * from memm;

rollback;

commit;

delete mem where id='ddd';

select * from memm;