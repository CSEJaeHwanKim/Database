
REM 특정 카테고리에서 가장 가격이 낮은 제품의 정보를 출력

SELECT * FROM 제품
WHERE 가격 = (SELECT MIN(가격) FROM 제품 WHERE 카테고리 = '&입력카테고리')


