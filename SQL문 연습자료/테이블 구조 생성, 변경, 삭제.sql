
--ROWID란? 테이블에서 행의 위치를 지정하는 논리적인 주소값
SELECT ROWID, EMPNO, ENAME
FROM EMP;

INSERT INTO EMP
VALUES(8000,'MICHALE','ARTIST', 7839, TO_DATE('90-01-01','YY-MM-DD')
,4000, 600, 40);

SELECT ROWID, DEPTNO, DNAME
FROM DEPT;

--INTERVAL YEAR TO MONTH -> 년과 월을 사용하여 두 날짜사이의 기간을 저장
CREATE TABLE SAM02(
YEAR01 INTERVAL YEAR(4) TO MONTH);

DESC SAM02

INSERT INTO SAM02
VALUES(INTERVAL '48' MONTH(3));

SELECT YEAR01, SYSDATE, SYSDATE+YEAR01 FROM SAM02;

CREATE TABLE SAM03(
DAY01 INTERVAL DAY(3) TO SECOND);

INSERT INTO SAM03
VALUES(INTERVAL '100' DAY(3));
SELECT * FROM SAM03;
SELECT DAY01, SYSDATE, SYSDATE+DAY01 FROM SAM03;

--테이블 생성하기
CREATE TABLE EMP01(
EMPNO NUMBER(4),
ENAME VARCHAR2(20),
SAL NUMBER(7, 2));

--테이블 삭제하기
DROP TABLE DEPT01;


--서브쿼리로 테이블 생성하기
CREATE TABLE EMP02
AS
SELECT * FROM EMP;
DESC EMP02

CREATE TABLE EMP03
AS
SELECT EMPNO, ENAME FROM EMP;

CREATE TABLE EMP05
AS
SELECT EMPNO, ENAME, SAL FROM EMP
WHERE 1=0;


CREATE TABLE EMP06
AS
SELECT * FROM EMP
WHERE DEPTNO=10;
SELECT * FROM EMP06;

CREATE TABLE DEPT20
AS
SELECT EMPNO, ENAME, SAL*12 ANNSAL
FROM EMP
WHERE DEPTNO=20;

SELECT * FROM DEPT20;

CREATE TABLE EMP07
AS
SELECT * FROM EMP
WHERE 1=0;
SELECT * FROM EMP07;

// WHERE 1=0; 써서 껍데기만 가져오기
CREATE TABLE DEPT02
AS
SELECT * FROM DEPT
WHERE 1=0;

DESC DEPT02

--테이블 구조 변경하는 ALTER TABLE
--ADD : 새로운 칼럼 추가하기
ALTER TABLE EMP01
ADD(JOB VARCHAR2(9));

ALTER TABLE DEPT02
ADD(DNGR NUMBER(4));

DESC DEPT02

--MODIFY : 기존 칼럼의 속성 변경하기 
ALTER TABLE EMP01
MODIFY(JOB VARCHAR(30));

DESC EMP01

ALTER TABLE DEPT02
MODIFY(DNGR VARCHAR2(20));

DESC DEPT02

SELECT * FROM DEPT02;

INSERT INTO DEPT02
VALUES(10,'RESEARCH','PARIS','KIM');

--컬럼 삭제
ALTER TABLE EMP01
DROP COLUMN JOB;

--컬럼 사용 제한해보기  
SELECT * FROM EMP02;

ALTER TABLE EMP02
SET UNUSED(JOB);

DESC EMP02
-- 제한한 컬럼 드랍하기
ALTER TABLE EMP02
DROP UNUSED COLUMNS;

-- 테이블 구조 삭제
DELETE FROM EMP02
WHERE DEPTNO = 20;

--테이블의 모든 로우 제거
TRUNCATE TABLE EMP02;

--테이블의 이름 변경
RENAME EMP02 TO TEST;

SELECT * FROM TEST;

DESC USER_TABLES;


--데이터 딕셔너리
SHOW USER

DESC ALL_TABLES;

-- ALL 데이터 딕셔너리
SELECT TABLE_NAME FROM ALL_TABLES
ORDER BY OWNER DESC;

--DBA권한을 가진 계정으로 접속이 필요한 DBA TABLE
SELECT TABLE_NAME, OWNER
FROM DBA_TABLES;

--예제 
--1
CREATE TABLE DEPT00(
DNO NUMBER(2),
DNAME VARCHAR2(14),
LOC VARCHAR2(13));
--2
CREATE TABLE EMP00(
ENO NUMBER(4),
ENAME VARCHAR2(10),
DNO NUMBER(2));

--3 
ALTER TABLE EMP00
MODIFY(ENAME VARCHAR2(25));


--4 
CREATE TABLE EMP002
AS
SELECT EMPNO EMP_ID, ENAME NAME, SAL SAL, DEPTNO DEPT_ID FROM EMP;

--5
DROP TABLE EMP00;

--6
RENAME EMP002 TO EMP00;

--7
ALTER TABLE DEPT00
DROP COLUMN DNAME;

--8
ALTER TABLE DEPT00
DROP COLUMN DNO;

--9
ALTER TABLE EMP00
SET UNUSED(SAL);

--10
ALTER TABLE EMP00
DROP UNUSED COLUMNS;