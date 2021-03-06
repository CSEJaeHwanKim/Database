﻿
rem 특정 연령대 회원들이 추천한 제품을 추천수 순으로 검색

select DISTINCT 제품.제품번호, 제품.이름, 제품.제조사, 제품.추천수
from 회원, 제품, 제품추천하다
where 회원.회원ID = 제품추천하다.회원ID
and 제품.제품번호 = 제품추천하다.제품번호
and (SYSDATE-회원.생년월일)/365 BETWEEN &시작나이 AND &끝나이
and 추천여부='추천'
order by 추천수 desc;