-- ������ ���̽� 1��. ����� ����Ŭ
--<<Ű����>>
--- 1.������ �������� ���� /�л���� �������� / �����ͺ��̽��� ����� ������ �˻�, ������ ����
--- 2. ������ ���� /������ �ߺ�(�ϰ��� , ���ȼ�, ������, ���Ἲ)
--- 3. ���յ� ������ / ����� ������ / � ������ / ���� ������
--- 4. �ǽð� ���ټ� / �������� ��ȭ / ���ð��� / ���뿡 ���� ����
--- 5. ������ �����ͺ��̽� �����ý��� -> ���̺� ���·� ���� (�ο�-�� /Į�� -��)
--- 6. ������ ��ųʸ� - ��ü���� �� ��ü��  ������ ������ ����Ǵ� �� 
--- 7. SQL - ����ڿ� ������ �����ͺ��̽��� ��������ִ� ǥ�� �˻� ���
--- 8. SQL*PLUS - SQL ��ɹ��� ��� ���� Į�� �� �������� ��� ���� ����
--- 9. SQL ���� ( DDL / DML / DCL)
--- 10. SQL ���� ���� - (SELECT/INSERT/UPDATE/DELETE/CREATE
---                      ALTER/DROP/RENAME/TRUNCATE/
---                     COMMIT/ROLLBACK/SAVEPOINT/
---                     GRANT / REVOKE )

---SCOTT ���� Ȱ��ȭ ��Ű��
----ALTER USER SCOTT ACCOUNT UNLOCK

---SCOTT ������ CONNECT(����),RESOURCE(���ҽ� ���),UNLIMITED TABLESPACE
---- GRANT CONNECT,RESOURCE, UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER
----ALTER USER SCOTT DEFAULT TABLESPACE USERS;
---ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

---- ��ҹ��� ���� ���Ҷ�
---ALTER SYSTEM SET SEC_CASE_SENSITIVE_LOGON =FALSE;