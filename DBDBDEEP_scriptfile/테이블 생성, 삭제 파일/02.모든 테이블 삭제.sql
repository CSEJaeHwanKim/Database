
drop sequence 제품번호_seq;
drop sequence 협찬사번호_seq;
drop sequence 프로그램번호_seq;
drop sequence 댓글번호_seq;

drop index 제품이름_idx;
drop index 시청률_idx;
drop index 제품추천수_idx;

drop table 댓글추천하다;
drop table 제품추천하다;
drop table 등장하다;
drop table 제품;
drop table TV프로그램;
drop table 협찬사;
drop table 댓글;
drop table 관리자;
drop table 회원;

purge recyclebin;
select * from tab;