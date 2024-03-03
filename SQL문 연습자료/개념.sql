-- 데이터 베이스 1장. 개념과 오라클
--<<키워드>>
--- 1.유용한 데이터의 집합 /학사관리 도서관리 / 데이터베이스에 저장된 정보는 검색, 삭제에 용이
--- 2. 데이터 종속 /데이터 중복(일관성 , 보안성, 경제성, 무결성)
--- 3. 통합된 데이터 / 저장된 데이터 / 운영 데이터 / 공용 데이터
--- 4. 실시간 접근성 / 지속적인 변화 / 동시공유 / 내용에 대한 참조
--- 5. 관계형 데이터베이스 관리시스템 -> 테이블 형태로 저장 (로우-행 /칼럼 -열)
--- 6. 데이터 딕셔너리 - 객체정의 후 객체의  데이터 정보가 저장되는 곳 
--- 7. SQL - 사용자와 관계형 데이터베이스를 연결시켜주는 표준 검색 언어
--- 8. SQL*PLUS - SQL 명령문을 기능 제공 칼럼 및 데이터의 출력 형식 설정
--- 9. SQL 종류 ( DDL / DML / DCL)
--- 10. SQL 문의 종류 - (SELECT/INSERT/UPDATE/DELETE/CREATE
---                      ALTER/DROP/RENAME/TRUNCATE/
---                     COMMIT/ROLLBACK/SAVEPOINT/
---                     GRANT / REVOKE )

---SCOTT 계정 활성화 시키기
----ALTER USER SCOTT ACCOUNT UNLOCK

---SCOTT 계정에 CONNECT(접속),RESOURCE(리소스 사용),UNLIMITED TABLESPACE
---- GRANT CONNECT,RESOURCE, UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER
----ALTER USER SCOTT DEFAULT TABLESPACE USERS;
---ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

---- 대소문자 구분 안할때
---ALTER SYSTEM SET SEC_CASE_SENSITIVE_LOGON =FALSE;