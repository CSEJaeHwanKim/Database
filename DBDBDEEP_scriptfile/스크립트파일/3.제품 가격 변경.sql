
rem 제품 가격 변경 
rem 제품번호는 40001~49999

UPDATE  제품
SET  가격 = '&변경가격'
WHERE   제품번호 = &제품번호 
