
CREATE TABLE 회원 ( 
 회원ID          VARCHAR2(16) 	NOT NULL,
 비밀번호         VARCHAR2(16) 	 NOT  NULL,
 이름           VARCHAR2(6) 	NOT NULL, 
 성별              CHAR(2) 	NOT NULL,
 생년월일              DATE	 NOT NULL,
 직업              VARCHAR2(16)	 	NOT NULL,
 휴대폰번호          VARCHAR2(25) 	NOT NULL,
 이메일주소          VARCHAR2(30)  	NOT  NULL,
 회원등급          CHAR(3)  	NOT  NULL,
 CONSTRAINT  회원_PK  PRIMARY KEY (회원ID),
 CONSTRAINT  CHECK_회원등급 CHECK(회원등급 IN('A', 'B', 'C', 'D'))
);

INSERT INTO 회원 VALUES ('mem01', 'pass1', '원주연', '여', TO_DATE('07/25/1994','MM/DD/YYYY'), '학생', '010-4116-5522', 'oeo198@kut.ac.kr', 'B');
INSERT INTO 회원 VALUES ('mem02', 'pass2', '장준영', '남', TO_DATE('01/02/1992','MM/DD/YYYY'), 'ceo', '010-1234-5678', 'jyk@kut.ac.kr', 'C');
INSERT INTO 회원 VALUES ('mem03', 'pass3', '이다솔', '여', TO_DATE('11/14/1982','MM/DD/YYYY'), '기자', '016-8872-3424', 'dasol@hanmail.net', 'D');
INSERT INTO 회원 VALUES ('mem04', 'pass4', '김재환', '남', TO_DATE('04/12/1992','MM/DD/YYYY'), '교수', '011-9727-3828', 'jh@hanmail.net', 'A');
INSERT INTO 회원 VALUES ('mem05', 'pass5', '김은빈', '여', TO_DATE('07/03/1996','MM/DD/YYYY'), '학생', '010-2939-2834', 'siljang@naver.com', 'B');
INSERT INTO 회원 VALUES ('mem06', 'pass6', '김은경', '여', TO_DATE('02/03/1996','MM/DD/YYYY'), '교수', '010-3423-8787', 'kimlab@naver.com', 'A');
INSERT INTO 회원 VALUES ('mem07', 'pass7', '김영진', '남', TO_DATE('03/18/1988','MM/DD/YYYY'), '대학원생', '010-8388-8213', 'oldjin@kut.ac.kr', 'D');
INSERT INTO 회원 VALUES ('mem08', 'pass8', '김승규', '남', TO_DATE('05/22/1983','MM/DD/YYYY'), '학생', '011-9823-4423', 'mas@kut.ac.kr', 'C');
INSERT INTO 회원 VALUES ('mem09', 'pass9', '김원준', '남', TO_DATE('12/30/1980','MM/DD/YYYY'), '학생', '010-9876-3234', 'atom@hanmail.net', 'C');
INSERT INTO 회원 VALUES ('mem10', 'pass10', '배수지', '여', TO_DATE('05/17/1994','MM/DD/YYYY'), '가수', '010-7777-2222', 'baesu@naver.com', 'B');
INSERT INTO 회원 VALUES ('mem11', 'pass11', '유승호', '남', TO_DATE('01/02/1993','MM/DD/YYYY'), '주부', '010-8829-2342', '2013136001@kut.ac.kr', 'C');
INSERT INTO 회원 VALUES ('mem12', 'pass12', '장범준', '남', TO_DATE('04/28/1991','MM/DD/YYYY'), 'ceo', '010-2313-2312', 'mouse@hanmail.net', 'A');
INSERT INTO 회원 VALUES ('mem13', 'pass13', '김혜민', '여', TO_DATE('12/01/1990','MM/DD/YYYY'), '교수', '011-9392-3232', 'os@hanmail.net', 'D');
INSERT INTO 회원 VALUES ('mem14', 'pass14', '요다영', '여', TO_DATE('02/01/1995','MM/DD/YYYY'), '학생', '011-2308-7813', 'adminnini@nate.com', 'A');
INSERT INTO 회원 VALUES ('mem15', 'pass15', '서예랑', '여', TO_DATE('07/07/1985','MM/DD/YYYY'), '의사', '010-2349-2938', 'char@nate.com', 'B');
INSERT INTO 회원 VALUES ('mem16', 'pass16', '한준민', '남', TO_DATE('11/07/1986','MM/DD/YYYY'), '판사', '010-4428-3928', 'doc@hanmail.net', 'A');
INSERT INTO 회원 VALUES ('mem17', 'pass17', '박준성', '남', TO_DATE('06/15/1987','MM/DD/YYYY'), '디자이너', '010-3820-5823', 'design@naver.com', 'B');
INSERT INTO 회원 VALUES ('mem18', 'pass18', '김남길', '여', TO_DATE('08/28/1988','MM/DD/YYYY'), '가수', '	010-2828-4753', 'ilovesing@hanmail.net', 'D');
INSERT INTO 회원 VALUES ('mem19', 'pass19', '안재환', '여', TO_DATE('12/23/1989','MM/DD/YYYY'), '운동선수', '010-8580-0832', 'waiting@kut.ac.kr', 'A');
INSERT INTO 회원 VALUES ('mem20', 'pass20', '이서준', '남', TO_DATE('07/03/1983','MM/DD/YYYY'), '학생', '	010-8820-3845', 'guyum@hanmail.net', 'D');

commit;

CREATE TABLE 관리자(
관리자ID      VARCHAR2(16) ,
비밀번호      VARCHAR2(16)  NOT  NULL,
이름      VARCHAR2(6)  NOT  NULL,
직책      VARCHAR2(20)  NOT  NULL,
CONSTRAINT  관리자_PK  PRIMARY KEY (관리자ID),
constraint check_직책 check( 직책 IN('TV프로그램관리자', '제품관리자', '협찬사관리자')));


INSERT INTO 관리자 VALUES ('admin01', 'apple', '유승현', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin02', 'banana', '이재헌', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin03', 'skyblue', '박연석', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin04', 'black', '조정환', '제품관리자');
INSERT INTO 관리자 VALUES ('admin05', 'white', '곽인규', '제품관리자');
INSERT INTO 관리자 VALUES ('admin06', 'database', '서승우', '협찬사관리자');
INSERT INTO 관리자 VALUES ('admin07', 'master', '최한슬', '협찬사관리자');
INSERT INTO 관리자 VALUES ('admin08', 'flower', '김건후', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin09', 'touch', '김경환', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin10', 'hand', '김명준', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin11', 'lotion', '김성은', 'TV프로그램관리자');
INSERT INTO 관리자 VALUES ('admin12', 'orchid', '고수희', '제품관리자');
INSERT INTO 관리자 VALUES ('admin13', 'remedy', '김대형', '제품관리자');
INSERT INTO 관리자 VALUES ('admin14', 'aqua', '김세용', '제품관리자');
INSERT INTO 관리자 VALUES ('admin15', 'peeling', '박의선', '제품관리자');
INSERT INTO 관리자 VALUES ('admin16', 'gel', '변대웅', '제품관리자');
INSERT INTO 관리자 VALUES ('admin17', 'youtube', '양준서', '협찬사관리자');
INSERT INTO 관리자 VALUES ('admin18', 'monkey', '이찬솔', '협찬사관리자');
INSERT INTO 관리자 VALUES ('admin19', 'tiger', '한은비', '협찬사관리자');
INSERT INTO 관리자 VALUES ('admin20', 'sheep', '김한나', '협찬사관리자');

commit;

CREATE TABLE 댓글(
댓글번호      NUMBER(6),
작성일시      DATE  NOT  NULL,
작성자      VARCHAR2(16)  NOT  NULL,
내용      VARCHAR2(160)  NOT  NULL,
추천수      NUMBER(6)  NOT  NULL,
비추천수      NUMBER(6)  NOT  NULL,
CONSTRAINT  댓글_PK  PRIMARY KEY (댓글번호),
CONSTRAINT  댓글_FK  FOREIGN KEY(작성자)
   REFERENCES  회원(회원ID));

CREATE SEQUENCE 댓글번호_seq
	INCREMENT BY 1
	START WITH 10001
	MAXVALUE 19999
	NOCYCLE
	NOCACHE;

INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/30/2014','MM/DD/YYYY'), 'mem01', '이거 정말 좋은 제품 같아요 꼭 추천해드리고 싶습니다.', '3', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('12/31/2014','MM/DD/YYYY'), 'mem02', '가격대비 정말 좋은제품 같아요!', '5', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('06/22/2014','MM/DD/YYYY'), 'mem03', '이거 사지마세요 별로 안 좋습니다.', '0', '11');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/27/2014','MM/DD/YYYY'), 'mem04', '배송이 빨라서 좋아요~', '8', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('07/05/2014','MM/DD/YYYY'), 'mem05', '와 진짜 대박~~ 꼭 사야되요', '11', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('09/11/2014','MM/DD/YYYY'), 'mem06', '굿굿굿굿굿굿굿굿굿', '1', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('07/14/2014','MM/DD/YYYY'), 'mem07', '올 여름에는 이거만 입어야 겠네요 ㅎㅎ', '4', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('08/03/2014','MM/DD/YYYY'), 'mem08', '재입고 언제되나요?', '5', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('08/09/2014','MM/DD/YYYY'), 'mem09', '사이즈가 정말 다양해서 좋은것 같습니다.', '8', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/04/2014','MM/DD/YYYY'), 'mem10', '총.알.배.송!', '10', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/05/2015','MM/DD/YYYY'), 'mem11', '교환하고 싶은데 어디로 전화해야되나요?', '1', '3');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/11/2015','MM/DD/YYYY'), 'mem12', '개좋음! 짱좋음! 무지좋음! 두번사세요!', '7', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/11/2015','MM/DD/YYYY'), 'mem13', '사고나닌까 너무 비싸다는걸 느꼈어요 ㅠㅠ', '3', '6');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/22/2015','MM/DD/YYYY'), 'mem14', '이거 사고 차라리 굶는게 나아요! 정말좋음', '3', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/01/2015','MM/DD/YYYY'), 'mem15', '추천수 높아서 들어와 구매했는데 역시 좋네요! ', '7', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/17/2015','MM/DD/YYYY'), 'mem16', '제가 추천수가 제일 높으면 치킨을 사겠습니다.', '6', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('04/08/2015','MM/DD/YYYY'), 'mem17', '환불해주세요 제품 상태가 매우 엉망으로 도착했습니다.', '0', '10');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('04/13/2015','MM/DD/YYYY'), 'mem18', '살까 말까 고민하다가 댓글보고 샀는데 정말 좋아요.', '3', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/09/2015','MM/DD/YYYY'), 'mem19', '드디어 수지도 이거 받았어요!! 상태굳굳', '4', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/10/2015','MM/DD/YYYY'), 'mem20', '배송 왜이렇게 느려요 ㅡㅡ', '3', '9');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/04/2014','MM/DD/YYYY'), 'mem01', '너무 좋네요', '1', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/07/2014','MM/DD/YYYY'), 'mem02', '추천합니다	', '1', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/14/2015','MM/DD/YYYY'), 'mem03', '실제 색깔이 정말 예뻐요', '7', '15');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/27/2015','MM/DD/YYYY'), 'mem04', '유용한물건입니다', '4', '3');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/29/2014','MM/DD/YYYY'), 'mem05', '이거 실물과 사진이 너무달라요', '3', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('04/04/2015','MM/DD/YYYY'), 'mem06', '향이 너무좋네요', '1', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/09/2014','MM/DD/YYYY'), 'mem07', '튼튼해보이는 가구입니다', '6', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/14/2015','MM/DD/YYYY'), 'mem08', '어제 산가방과 정말잘어울려요', '9', '4');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('07/30/2014','MM/DD/YYYY'), 'mem09', '가볍고 좋습니다', '11', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/27/2014','MM/DD/YYYY'), 'mem10', '화이트닝효과가 좋네요', '1', '5');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('12/25/2014','MM/DD/YYYY'), 'mem11', '추천합니다', '5', '14');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/27/2014','MM/DD/YYYY'), 'mem12', '생각보다 별로네요', '18', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/04/2015','MM/DD/YYYY'), 'mem13', '아주 맘에드네요', '11', '3');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('06/06/2014','MM/DD/YYYY'), 'mem14', '여자친구 선물해줬는데 아주 좋아합니다', '18', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/22/2014','MM/DD/YYYY'), 'mem15', '짱!!!!', '9', '3');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/28/2014','MM/DD/YYYY'), 'mem16', '기본적으로가지고있기좋네요', '20', '11');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/01/2015','MM/DD/YYYY'), 'mem17', '향이 정말 좋네요', '1', '5');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/09/2015','MM/DD/YYYY'), 'mem18', '가구에서 냄새가나요', '20', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/13/2014','MM/DD/YYYY'), 'mem19', '와 정말예쁘네요', '17', '11');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/25/2014','MM/DD/YYYY'), 'mem20', '이거 진짜추천!', '20', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/10/2015','MM/DD/YYYY'), 'mem01', '보기보다 별로임', '5', '4');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/02/2014','MM/DD/YYYY'), 'mem11', '좋아요', '3', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/28/2015','MM/DD/YYYY'), 'mem08', '사고싶은데....', '10', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/26/2015','MM/DD/YYYY'), 'mem13', 'TV에서랑 완전 똑같음', '8', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('12/25/2014','MM/DD/YYYY'), 'mem03', '또 가지고 싶어요', '6', '3');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/01/2015','MM/DD/YYYY'), 'mem19', '누구 나 저거 사주라', '0', '7');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('04/16/2015','MM/DD/YYYY'), 'mem17', '우아아아아앙', '2', '10');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/07/2015','MM/DD/YYYY'), 'mem15', '선물로 받고싶다', '4', '4');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/27/2015','MM/DD/YYYY'), 'mem05', '이런걸 왜 씀? 이해가 안감', '1', '8');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/12/2015','MM/DD/YYYY'), 'mem03', '짱짱맨ㅋㅋ', '1', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/03/2015','MM/DD/YYYY'), 'mem20', '너무 갖고싶어요 ㅜ', '0', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/04/2015','MM/DD/YYYY'), 'mem09', '너무 비싼거 아니야???', '3', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('11/11/2014','MM/DD/YYYY'), 'mem10', '밖에서 누가 저런걸 입고 댕기냐', '4', '4');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('10/30/2014','MM/DD/YYYY'), 'mem12', '한번 빨면 작아지던데', '2', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('03/14/2015','MM/DD/YYYY'), 'mem07', '여자친구한테 줘야겠다', '1', '1');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('02/04/2015','MM/DD/YYYY'), 'mem02', '난 집에 있지롱~', '3', '6');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('08/29/2014','MM/DD/YYYY'), 'mem10', '남친이 사줌', '7', '2');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('05/02/2015','MM/DD/YYYY'), 'mem06', '굿굿굿굿', '0', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('01/10/2015','MM/DD/YYYY'), 'mem14', 'TV에서는 완전 좋아보였는데...', '3', '0');
INSERT INTO 댓글 VALUES (댓글번호_seq.NEXTVAL, TO_DATE('12/31/2014','MM/DD/YYYY'), 'mem16', '사야지~~', '7', '5');

 commit;

CREATE TABLE 협찬사
	(협찬사번호	NUMBER(6)	NOT NULL,
	이름		VARCHAR2(15)	NOT NULL,
	대표자명	VARCHAR2(10)	NOT NULL,
	연락처		VARCHAR2(25)	NOT NULL,
	사이트주소	VARCHAR2(30),
	관리자ID	VARCHAR2(16),
	CONSTRAINT 협찬사_pk	PRIMARY KEY(협찬사번호),
	CONSTRAINT 협찬사_fk	FOREIGN KEY(관리자ID)
		REFERENCES 관리자(관리자ID));

CREATE SEQUENCE 협찬사번호_seq
	INCREMENT BY 1
	START WITH 30001
	MAXVALUE 39999
	NOCYCLE
	NOCACHE;

INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '네파', '박지현', '02-1231-2054', 'www.nepa.com', 'admin06');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '백팩', '우종하', '02-3418-1674', 'www.backpack.co.kr', 'admin18');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '아디다스', '김남수', '02-7539-8510', 'www.adidas.com', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '샤넬', '이성우', '070-8447-0041', 'www.chanel.com', 'admin20');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '이니스프리', '이경준', '070-9514-7248', 'www.innisfree.co.kr', 'admin06');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '나이키', '고상규', '080-8002-2009', 'www.nike.com', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '퍼시스', '유선우', '031-578-2641', 'www.fursis.co.kr', 'admin19');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '보루네오', '최재훈', '031-2844-3688', 'www.boruneo.co.kr', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '리바트', '허진영', '031-6856-9730', 'www.livart.com', 'admin06');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '더페이스샵', '장얼굴', '033-564-7520', 'www.thefaceshop.co.kr', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '샘소나이트', '최야간', '041-481-3722', 'www.samsonite.co.kr', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, 'K2', '케이윌', '042-233-2115', 'www.k2k.com', 'admin17');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '뉴발란스', '박균형', '051-8844-6622', 'www.newbalance.co.kr', 'admin06');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '아이튠즈', '이잡스', '054-6990-0027', 'www.itunes..com', 'admin07');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '제주산업', '김감귤', '064-7413-5824', 'www.jejugyule.co.kr', 'admin17');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '빈폴', '홍규진', '02-4283-9917', 'www.jejugyule.co.kr', 'admin18');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '루이까또즈', '윤용운', '061-5674-2101', 'www.jejugyule.co.kr', 'admin19');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '이케아', '고수희', '064-2666-8541', 'www.jejugyule.co.kr', 'admin20');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '토니모리', '김종하', '053-772-4003', 'www.jejugyule.co.kr', 'admin18');
INSERT INTO 협찬사 VALUES (협찬사번호_seq.NEXTVAL, '데상트', '권현교', '033-905-6136', 'www.jejugyule.co.kr', 'admin17');

commit;

CREATE TABLE TV프로그램(
	프로그램번호 NUMBER(6),
	방영여부 CHAR(4) NOT NULL,
	장르 VARCHAR2(10) NOT NULL,
	방송사 VARCHAR2(5) NOT NULL,
	이름 VARCHAR2(30) NOT NULL,
	시청률 NUMBER(5,2) NOT NULL,
	관리자ID VARCHAR2(16),
	CONSTRAINT TV프로그램_PK PRIMARY KEY (프로그램번호),
	CONSTRAINT TV프로그램_FK FOREIGN KEY (관리자ID) REFERENCES 관리자(관리자ID),
	constraint check_방영여부 check(방영여부 IN('방영','종영')),
	constraint check_장르 check(장르 IN('예능','드라마')),
	constraint check_방송사 check(방송사 IN('KBS','SBS','MBC','JTBC','Mnet','tvN'))
);

CREATE SEQUENCE 프로그램번호_seq
	INCREMENT BY 1
	START WITH 50001
	MAXVALUE 59999
	NOCYCLE
	NOCACHE;

INSERT INTO TV프로그램 VALUES (50001, '방영', '드라마', 'KBS', '후아유', '7.1', 'admin02');
INSERT INTO TV프로그램 VALUES (50002, '방영', '드라마', 'MBC', '이브의 사랑', '8.9', 'admin02');
INSERT INTO TV프로그램 VALUES (50003, '방영', '드라마', 'SBS', '풍문으로 들었소', '9.8', 'admin02');
INSERT INTO TV프로그램 VALUES (50004, '방영', '드라마', 'MBC', '딱 너 같은 딸', '10.8', 'admin02');
INSERT INTO TV프로그램 VALUES (50005, '방영', '드라마', 'KBS', 'TV소설 그래도 푸르른 날에', '9.6', 'admin02');
INSERT INTO TV프로그램 VALUES (50006, '방영', '드라마', 'MBC', '화정', '11.0', 'admin02');
INSERT INTO TV프로그램 VALUES (50007, '방영', '드라마', 'SBS', '달려라 장미', '11.7', 'admin02');
INSERT INTO TV프로그램 VALUES (50008, '방영', '드라마', 'SBS', '황홀한 이웃', '12.1', 'admin02');
INSERT INTO TV프로그램 VALUES (50009, '방영', '드라마', 'KBS', '오늘부터 사랑해', '14.0', 'admin02');
INSERT INTO TV프로그램 VALUES (50010, '방영', '드라마', 'KBS', '가족을 지켜라', '21.6', 'admin02');
INSERT INTO TV프로그램 VALUES (50011, '종영', '드라마', 'SBS', '냄새를 보는 소녀', '10.8', 'admin02');
INSERT INTO TV프로그램 VALUES (50012, '종영', '드라마', 'JTBC', '순정에 반하다', '1.5', 'admin02');
INSERT INTO TV프로그램 VALUES (50013, '종영', '드라마', 'tvN', '슈퍼대디 열', '1.5', 'admin02');
INSERT INTO TV프로그램 VALUES (50014, '종영', '드라마', 'tvN', '호구의사랑', '1.4', 'admin02');
INSERT INTO TV프로그램 VALUES (50015, '종영', '드라마', 'KBS', '선암여고 탐정단', '0.9', 'admin02');
INSERT INTO TV프로그램 VALUES (50016, '방영', '예능', 'MBC', '무한도전', '10.6', 'admin03');
INSERT INTO TV프로그램 VALUES (50017, '방영', '예능', 'KBS', '해피선데이', '12.5', 'admin03');
INSERT INTO TV프로그램 VALUES (50018, '방영', '예능', 'KBS', '개그콘서트', '11.8', 'admin03');
INSERT INTO TV프로그램 VALUES (50019, '방영', '예능', 'SBS', '정글의 법칙 in 인도차이나', '10.3', 'admin03');
INSERT INTO TV프로그램 VALUES (50020, '방영', '예능', 'KBS', '우리동네 예체능', '4.6', 'admin03');
INSERT INTO TV프로그램 VALUES (50021, '방영', '예능', 'SBS', '썸남썸녀', '3.1', 'admin03');
INSERT INTO TV프로그램 VALUES (50022, '방영', '예능', 'MBC', '기분 좋은 날', '3.1', 'admin03');
INSERT INTO TV프로그램 VALUES (50023, '방영', '예능', 'MBC', '일밤', '7.7', 'admin03');
INSERT INTO TV프로그램 VALUES (50024, '방영', '예능', 'MBC', '마이 리틀 텔레비전', '7.3', 'admin03');
INSERT INTO TV프로그램 VALUES (50025, '종영', '예능', 'tvN', '꽃보다 할배', '7.6', 'admin03');
INSERT INTO TV프로그램 VALUES (50026, '종영', '예능', 'Mnet', '원나잇 스터디', '3.1', 'admin03');
INSERT INTO TV프로그램 VALUES (50027, '종영', '예능', 'tvN', '엄마사람', '1.4', 'admin03');
INSERT INTO TV프로그램 VALUES (50028, '종영', '예능', 'Mnet', '너의 목소리가 보여', '0.9', 'admin03');
INSERT INTO TV프로그램 VALUES (50029, '종영', '예능', 'JTBC', '나홀로 연애중', '0.9', 'admin03');
INSERT INTO TV프로그램 VALUES (50030, '종영', '예능', 'Mnet', '언프리티 랩스타', '1.3', 'admin03');

commit;

create table 제품 (
   제품번호 number(6) ,
   카테고리 varchar2(8) not null ,
   가격 varchar2(15) ,
   이름 varchar2(30) not null ,
   제조사 varchar2(30) not null ,
   추천수 number(6) not null ,
   비추천수 number(6) not null ,
   협찬사번호 number(6) ,
   관리자ID varchar2(16) ,
   constraint 제품번호_PK PRIMARY KEY (제품번호), 
   constraint 협찬사번호_FK  FOREIGN KEY(협찬사번호)
                        REFERENCES 협찬사(협찬사번호),
   constraint 관리자번호_FK  FOREIGN KEY(관리자ID)
                        REFERENCES 관리자(관리자ID),
   constraint check_카테고리 check(카테고리 IN('옷','가방', '신발', '액세서리', '화장품', '가구') )
);

CREATE SEQUENCE 제품번호_seq
	INCREMENT BY 1
	START WITH 40001
	MAXVALUE 49999
	NOCYCLE
	NOCACHE;

CREATE INDEX 제품이름_idx
ON 제품(이름);

CREATE INDEX 제품추천수_idx
ON 제품(추천수);

INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '화장품', '134000', 'Anti Winkle 3 Set', 'ANDJ', 100, 20, 30005, 'admin04');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '옷', '74050', 'BA5S2-WTC030', 'adidas', 3, 10, 30001, 'admin05');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가방', '272350', '시드니 사첼 엔드 숄더백', 'Fossil', 20, 3, 30002, 'admin04');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가방', '465400', '22380ESHE 브라운', 'TUMI', 5, 5, 30011, 'admin12');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '화장품', 85000, 'Special Set 2', 'KHAN', 2, 3, 30010, 'admin04');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가구', 256000, '챌튼햄 철제침대 Q', 'LAURA ASHLEY', 1, 0, 30007, 'admin05');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '옷', 58600, 'JW3MB15S258', 'Jack Wolfskin', 130, 25, 30006, 'admin04');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '옷', 220400, 'Darti Lace Top', 'Clubmonaco', 3, 10, 30013, 'admin13');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '액세서리', 15000, '첨탑 팬던트 목걸이', 'Ultra Fashion', 250, 30, 30015, 'admin04');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '액세서리', 30000, 'Pearl Ribbon Necklace', 'Lan', 3, 10, 30014, 'admin13');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '신발', 34460, 'AB5SCS1', '아스브라운', 150, 38, 30003, 'admin14');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '신발', 84150, 'SS0WS15X051', '스케쳐스', 20, 150, 30013, 'admin05');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '화장품', 47500, 'Nordic Berry 82 Peeling Gel', 'simfeni', 250, 30, 30005, 'admin05');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '신발', 68460, 'FPSNE3U85WM', '포니', 45, 12, 30012, 'admin16');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가구', 1480000, '가렛 다크 커피 테이블', 'LAURA ASHLEY', 5, 3, 30008, 'admin05');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가구', 946000, '레이나 확장형 소파 아이보리', '버즈 소파', 15, 3, 30009, 'admin12');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '화장품', 150000, '압솔뤼 레스트레', '랑콤', 25, 3, 30004, 'admin13');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '액세서리', 3850000, '피오리 귀걸이', '미꼬', 190, 3, 30004, 'admin14');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '옷', 81370, 'DMK15B011BL', 'Daks', 50, 3, 30001, 'admin15');
INSERT INTO 제품 VALUES (제품번호_seq.NEXTVAL, '가방', 130900, '네이비 카무플라 백팩', '빈폴ACC', 20, 1, 30011, 'admin16');

commit;

CREATE TABLE 등장하다
(	프로그램번호	NUMBER(6)	NOT NULL,
	제품번호	NUMBER(6)	NOT NULL,
	방영회차	NUMBER(2)	NOT NULL,
	CONSTRAINT 등장하다_pk	PRIMARY KEY(프로그램번호, 제품번호),
	CONSTRAINT 등장하다_프로그램번호_fk	FOREIGN KEY(프로그램번호)
		REFERENCES TV프로그램(프로그램번호),
	CONSTRAINT 등장하다_제품번호_fk	FOREIGN KEY(제품번호)
		REFERENCES 제품(제품번호)

);

CREATE INDEX 시청률_idx
ON TV프로그램(시청률);

INSERT INTO 등장하다 VALUES(50002, 40003, 04);
INSERT INTO 등장하다 VALUES(50014, 40020, 13);
INSERT INTO 등장하다 VALUES(50030, 40017, 02);
INSERT INTO 등장하다 VALUES(50018, 40011, 06);
INSERT INTO 등장하다 VALUES(50025, 40008, 08);
INSERT INTO 등장하다 VALUES(50007, 40013, 12);
INSERT INTO 등장하다 VALUES(50001, 40006, 20);
INSERT INTO 등장하다 VALUES(50027, 40019, 01);
INSERT INTO 등장하다 VALUES(50019, 40004, 03);
INSERT INTO 등장하다 VALUES(50021, 40002, 18);
INSERT INTO 등장하다 VALUES(50012, 40015, 16);
INSERT INTO 등장하다 VALUES(50011, 40018, 11);
INSERT INTO 등장하다 VALUES(50024, 40012, 03);
INSERT INTO 등장하다 VALUES(50009, 40006, 09);
INSERT INTO 등장하다 VALUES(50008, 40003, 02);
INSERT INTO 등장하다 VALUES(50013, 40001, 10);
INSERT INTO 등장하다 VALUES(50001, 40010, 14);
INSERT INTO 등장하다 VALUES(50020, 40016, 17);
INSERT INTO 등장하다 VALUES(50021, 40005, 05);
INSERT INTO 등장하다 VALUES(50024, 40014, 19);

commit;


create table 제품추천하다 (
   회원ID varchar2(16) ,
   제품번호 number(6) ,
   추천여부 char(6) ,

   constraint 제품추천하다_PK PRIMARY KEY (회원ID, 제품번호), 
   constraint 제품추천하다_회원ID_FK  FOREIGN KEY(회원ID)
                                                 REFERENCES 회원(회원ID),
   constraint 제품추천하다_제품번호_FK  FOREIGN KEY(제품번호)
                                                 REFERENCES 제품(제품번호),
   constraint check_추천여부 check(추천여부 IN('추천','비추천'))
);

INSERT INTO 제품추천하다 VALUES ('mem01', 40011, '추천');
INSERT INTO 제품추천하다 VALUES ('mem14', 40004, '추천');
INSERT INTO 제품추천하다 VALUES ('mem01', 40001, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem12', 40003, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem13', 40019, '추천');
INSERT INTO 제품추천하다 VALUES ('mem10', 40010, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem14', 40005, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem12', 40009, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem11', 40001, '추천');
INSERT INTO 제품추천하다 VALUES ('mem01', 40017, '추천');
INSERT INTO 제품추천하다 VALUES ('mem12', 40008, '추천');
INSERT INTO 제품추천하다 VALUES ('mem19', 40011, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem11', 40002, '추천');
INSERT INTO 제품추천하다 VALUES ('mem19', 40005, '추천');
INSERT INTO 제품추천하다 VALUES ('mem19', 40009, '추천');
INSERT INTO 제품추천하다 VALUES ('mem10', 40002, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem11', 40008, '추천');
INSERT INTO 제품추천하다 VALUES ('mem07', 40002, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem07', 40009, '비추천');
INSERT INTO 제품추천하다 VALUES ('mem10', 40007, '추천');

commit;

CREATE TABLE 댓글추천하다 ( 
 댓글번호          NUMBER(6),
 회원ID          VARCHAR2(16)  NOT  NULL,
 추천여부            CHAR(6), 

 CONSTRAINT  댓글추천하다_PK  PRIMARY KEY (댓글번호, 회원ID),
 CONSTRAINT  댓글추천하다_댓글번호_FK FOREIGN KEY (댓글번호) 
                         REFERENCES 댓글(댓글번호),
 CONSTRAINT  댓글추천하다_회원ID_FK FOREIGN KEY(회원ID)
                       REFERENCES 회원(회원ID),
 constraint check_댓글추천여부 check(추천여부 IN('추천','비추천'))
);

INSERT INTO 댓글추천하다 VALUES (10001, 'mem01', '추천');
INSERT INTO 댓글추천하다 VALUES (10060, 'mem20', '추천');
INSERT INTO 댓글추천하다 VALUES (10025, 'mem01', '비추천');
INSERT INTO 댓글추천하다 VALUES (10001, 'mem02', '비추천');
INSERT INTO 댓글추천하다 VALUES (10002, 'mem02', '추천');
INSERT INTO 댓글추천하다 VALUES (10034, 'mem01', '비추천');
INSERT INTO 댓글추천하다 VALUES (10060, 'mem18', '비추천');
INSERT INTO 댓글추천하다 VALUES (10034, 'mem02', '비추천');
INSERT INTO 댓글추천하다 VALUES (10060, 'mem13', '추천');
INSERT INTO 댓글추천하다 VALUES (10034, 'mem19', '추천');
INSERT INTO 댓글추천하다 VALUES (10034, 'mem18', '추천');
INSERT INTO 댓글추천하다 VALUES (10025, 'mem03', '비추천');
INSERT INTO 댓글추천하다 VALUES (10034, 'mem10', '추천');
INSERT INTO 댓글추천하다 VALUES (10025, 'mem13', '추천');
INSERT INTO 댓글추천하다 VALUES (10001, 'mem13', '추천');
INSERT INTO 댓글추천하다 VALUES (10025, 'mem17', '비추천');
INSERT INTO 댓글추천하다 VALUES (10033, 'mem01', '추천');
INSERT INTO 댓글추천하다 VALUES (10033, 'mem09', '비추천');
INSERT INTO 댓글추천하다 VALUES (10001, 'mem11', '비추천');
INSERT INTO 댓글추천하다 VALUES (10001, 'mem09', '추천');
commit;