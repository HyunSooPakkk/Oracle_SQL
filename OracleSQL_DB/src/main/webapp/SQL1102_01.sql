--board
select * from board;
--sum이 들어간 글자 출력
select rownum,a.*
from 
(select * from board where bcont like '%sum%' order by bno) a
where rownum>=11 and rownum<=20
;

select * from
(
select row_number() over(order by bno desc) as rnum,bno,btitle,bcont,bdate
from board where bcont like '%sum%'
) a
where a.rnum>=11 and a.rnum<=20
;


select * from ( select row_number() over(order by bno desc) as rnum,bno,btitle,bcont,bdate from board ) a
where a.rnum>=61 and a.rnum<=70;

select * from board
where bno =1;

