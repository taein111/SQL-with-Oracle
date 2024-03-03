--SQL*PLUS 명령어
--SQL*PLUS 편집 명령

--- LIST(L) : 버퍼에 저장된 모든 SQL 문 또는 검색한 라인의 SQL문을 나타낸다.
--- / : SQL문을 보여주지 않고 바로 실행한다
--- RUN(R) : 버퍼에 저장된 SQL문을 보여주고 실행한다.
--- HOST : DOS환경으로 나가도록 하는 명령
--- EXIT : SQL*PLUS로 돌아가기 위한 명령
--- EDIT(ED) : 파일의 내용을 메모장에서 편집하는 명령어
--- SAVE : 사용자가 현재 수행중인 쿼리문을 저장하는 SAVE

SELECT ENAME, SAL*12
FROM EMP;

SAVE A001

-- @ 명령어 : 확장자가 .SQL인 파일에 저장되어있는 쿼리문을 실행
-- SPOOL  : SQL문과 실행된 쿼리 결과를 파일로 기록

SPOOL B001
SELECT *FROM DEPT;
SELECT * FROM EMP;
SPOOL OFF

--저장한 SQL 명령어를 가져오는 GET

-- 시스템 변수 조작을 위한 SET 명령어
-- SET LINESIZE : 라인에 출력할 최대문자 수를 결정( 디폴트 80)
-- SET PAGESIZE : 한 페이지에 출력할 최대 라인 수 결정 (디폴트 14)
-- SET COLIMN FORMAT : 칼럼 데이터에 대한 출력 형식을 다양하게 지정
-- HEADING  : 컬럼 제목의 출력 여부 결정 (SET HEADING ON/OFF)


