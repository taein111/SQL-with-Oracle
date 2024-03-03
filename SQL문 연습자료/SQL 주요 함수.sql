--<�ֿ� �Լ�>

--DUAL ���̺�� SQL �Լ� �з�
DESC DUAL

--���밪 ���ϴ� ABS �Լ�
SELECT -10, ABS(-10)
FROM DUAL;

--�Ҽ��� �Ʒ��� ������ FLOOR �Լ�
SELECT 34.5678, FLOOR(34.5678)
FROM DUAL;

-- Ư�� �ڸ������� �ݿø��ϴ� ROUND �Լ�
SELECT 34.5678, ROUND(34.5678)
FROM DUAL;

SELECT 34.5678, ROUND(34.5678, 2)
FROM DUAL;

SELECT 34.5678, ROUND(34.5678, -1)
FROM DUAL;

-- Ư���� �ڸ������� �߶󳻴� TRUNC �Լ�
SELECT TRUNC(34.5678, 2), TRUNC(34.5678, -1), TRUNC(34.5678)
FROM DUAL;

--�������� ���ϴ� MOD�Լ�
SELECT MOD(27,2), MOD(27,5), MOD(27,7)
FROM DUAL;

--����� Ȧ���� ����� �˻�
SELECT * FROM EMP
WHERE MOD(EMPNO, 2)=1;

-- <���� ó�� �Լ�>
-- �빮�� ��ȯ UPPER
-- �ҹ��� ��ȯ LOWER
-- �̴ϼȸ� �빮��� ��ȯ INITCAP

-- ���� ���̸� ���ϴ� LENGTG
SELECT LENGTH('Oracle'), LENGTH('����Ŭ')
FROM DUAL;

-- ����Ʈ ���� �˷��ִ� LENGTHB �Լ�
SELECT LENGTHB('ORACLE'), LENGTHB('����Ŭ')
FROM DUAL;

-- ���ڿ� �Ϻθ� �����ϴ� SUBSTR  �Լ�(���, ������ġ, ���� �� ����(����Ʈ))
SELECT SUBSTR('WELCOME TO ORACLE', 4, 3)
FROM DUAL;

-- Ư�� ������ ��ġ�� ���ϴ� INSTR �Լ����, ã�� ����, ������ġ, ���° �߰�)
SELECT INSTR('WELCOME TO OREACLE', 'O')
FROM DUAL;

SELECT INSTR('WELCOME TO ORACLE', 'O' , 6, 2)
FROM DUAL;

--Ư�� ��ȣ�� ä��� LPAD/RPAD
SELECT LPAD('ORACLE', 20, '#')
FROM DUAL;

SELECT RPAD('ORACLE', 20, '#')
FROM DUAL;

--���ʿ��� ���� ���ڸ� �����ϴ� LTRIM �Լ�
SELECT LTRIM('   ORACLE   ')
FROM DUAL;

--�����ʿ��� ���� ���ڸ� �����ϴ� RTRIM �Լ�
SELECT RTRIM('   ORACLE   ')
FROM DUAL;

-- Ư�� ���ڸ� �߶󳻴� TRIM �Լ�
SELECT TRIM(' ORACLE  ')
FROM DUAL;

-- <��¥ �Լ�>

--���� ��¥�� ��ȯ�ϴ� SYSDATE �Լ�
SELECT SYSDATE
FROM DUAL;

SELECT SYSDATE-1 "����", SYSDATE "����", SYSDATE+1 "����"
FROM DUAL;

-- ��¥���� ��¥ ���⵵ ����, �� ������� ��������� �ٹ� �� �� ?
SELECT TRUNC(SYSDATE-HIREDATE) "�ٹ��ϼ�"
FROM EMP;

-- Ư�� �������� �ݿø� �ϴ� ROUND �Լ� - ���� ��������
SELECT HIREDATE, ROUND(HIREDATE, 'MONTH')
FROM EMP;

-- Ư�� �������� ������ TRUNC �Լ�
SELECT HIREDATE, ROUND(HIREDATE, 'MONTH')
FROM EMP;

-- �� ��¥������ ������ ��Ÿ���� MONTHS_BETWEEN �Լ�
SELECT ENAME, SYSDATE, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE))
FROM EMP;

--6 ���� ���� ���ϴ� ADD_MONTHS �Լ�
SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6)
FROM EMP;

-- �ش� ������ ���� ����� ��¥�� ��ȯ�ϴ� NEXT_DAY�Լ�
SELECT SYSDATE, NEXT_DAY(SYSDATE, '������')
FROM DUAL;

-- �ش� ���� ������ ��¥�� ��ȯ�ϴ� LAST_DAY �Լ�
SELECT HIREDATE, LAST_DAY(HIREDATE)
FROM EMP;

-- <����ȯ �Լ�>
-- ���������� ��ȯ�ϴ� TO_CHAR �Լ� , ��¥���� ���������� ��ȯ�ϱ�
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM DUAL;

SELECT HIREDATE, TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM EMP;
SELECT HIREDATE, TO_CHAR(HIREDATE, 'YYYY/MON/DD DY')
FROM EMP;

--���� ��¥�� �ð��� ����ϴ� ����
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM DUAL;

-- ��¥������ ��ȯ�ϴ� TO_DATE�Լ� TO_DATE('����', 'FORMAT')
SELECT ENAME, HIREDATE 
FROM EMP
WHERE HIREDATE=TO_DATE(19810220, 'YYYYMMDD');

SELECT TRUNC(SYSDATE-TO_DATE('2008/01/01', 'YYYY/MM/DD'))
FROM DUAL;

--���������� ��ȯ�ϴ� TO_NUMBER �Լ�
SELECT TO_NUMBER('20,000', '99,999') - TO_NUMBER('10,000' , '99,999')
FROM DUAL;

--NULL ���� �ٸ� ������ ��ȯ�ϴ� NVL �Լ�
SELECT ENAME, SAL, COMM, SAL*12+COMM,NVL(COMM, 0), SAL*12+NVL(COMM, 0)
FROM EMP;

SELECT EMPNO, ENAME, NVL(TO_CHAR(MGR, '9999'),'CEO') "MANAGER"
FROM EMP
WHERE MGR IS NULL;

SELECT NVL2(COMM, SAL*12+COMM, SAL*12)
FROM EMP;

-- ������ ���� DECODE �Լ�
SELECT ENAME, DEPTNO,
DECODE(DEPTNO, 10, 'ACCOUNTNG',
                20, 'RESEARCH',
                30,'SALES',
                40, 'OPERATIONS')
                AS DNAME
FROM EMP;

SELECT EMPNO, JOB, SAL, 
DECODE(JOB, 'ANALYST', SAL*1.05,
            'SALESMAN', SAL*1.1,
            'MANAGER', SAL*1.15,
            'CLERK', SAL*1.2) "UPSAL"
FROM EMP;

-- ���ǿ� ���� ���� �ٸ� ó���� ������ CASE �Լ�, ���� ������ �����ϴ�
SELECT ENAME, DEPTNO,
CASE WHEN DEPTNO=10 THEN'ACCOUNTING'
    WHEN DEPTNO=20 THEN 'RESEARCH'
    WHEN DEPTNO=30 THEN 'SALES'
    WHEN DEPTNO=40 THEN 'OPERATIONS'
    END "DNAME"
    FROM EMP;