
select 관리자ID, 이름, 직책
from 관리자
where 직책 IN
      ( select 직책
        from 관리자
        where 이름 = '유승현');

