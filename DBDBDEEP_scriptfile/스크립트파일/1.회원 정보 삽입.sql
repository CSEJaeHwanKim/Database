﻿
rem 회원 정보 삽입
rem 성별은 '남' 또는 '여'로 입력해야 함
rem 생년월일은 '92/11/11' 같이 입력해야 함
rem 회원등급은 'A', 'B', 'C', 'D' 중 하나를 입력해야 함

INSERT INTO  회원 (회원ID, 비밀번호, 이름, 성별, 생년월일, 직업, 휴대폰번호, 이메일주소, 회원등급)
VALUES  ( '&회원ID', '&비밀번호', '&이름', '&성별', TO_DATE('&생년월일','YY/MM/DD'), '&직업', '&휴대폰번호', '&이메일주소', '&회원등급')
