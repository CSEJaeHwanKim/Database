rem 탈퇴 시 회원 정보를 삭제한다.

delete from 제품추천하다
where 회원ID = '&&입력회원ID';

delete from 댓글추천하다
where 회원ID = '&&입력회원ID';

delete from 댓글추천하다
where 댓글번호 IN (select distinct 댓글추천하다.댓글번호 from 댓글추천하다, 댓글
where 댓글추천하다.댓글번호 = 댓글.댓글번호
and 댓글.작성자 = '&&입력회원ID');

delete from 댓글
where 작성자 = '&&입력회원ID';

delete from 회원
where 회원ID = '&&입력회원ID';

UNDEFINE 입력회원ID;