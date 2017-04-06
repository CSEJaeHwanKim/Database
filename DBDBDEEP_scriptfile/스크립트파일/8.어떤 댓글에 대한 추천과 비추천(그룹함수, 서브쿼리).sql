
select DISTINCT 댓글번호, 
(SELECT COUNT(*) 
FROM 댓글추천하다
WHERE 추천여부 = '추천' AND 댓글번호 = &&입력댓글번호) AS 추천수,
(SELECT COUNT(*) 
FROM 댓글추천하다 
WHERE 추천여부 = '비추천' AND 댓글번호 = &&입력댓글번호) AS 비추천수
from 댓글추천하다
WHERE 댓글번호 = &&입력댓글번호;

UNDEFINE 입력댓글번호;