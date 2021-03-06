--------------------------------------------------------
--  파일이 생성됨 - 목요일-2월-13-2020   
--------------------------------------------------------
DROP SEQUENCE "AC_CODE_SEQ";
DROP SEQUENCE "AM_SEQ";
DROP SEQUENCE "CP_CODE_SEQ";
DROP SEQUENCE "CS_GRADE_SEQ";
DROP SEQUENCE "CT_SEQ";
DROP SEQUENCE "EMP_GRADE_SEQ";
DROP SEQUENCE "EMP_SEQ";
DROP SEQUENCE "ITEM_CODE_SEQ";
DROP SEQUENCE "MEM_SEQ";
DROP SEQUENCE "PC_CODE_SEQ";
DROP SEQUENCE "PC_SEQ";
DROP SEQUENCE "PT_SEQ";
DROP SEQUENCE "RV_SEQ";
DROP SEQUENCE "SALE_SEQ";
DROP SEQUENCE "SC_SEQ";
DROP SEQUENCE "ST_SEQ";
DROP TABLE "ACCOUNT_CODE" cascade constraints;
DROP TABLE "ATTENDANCE_MANAGE" cascade constraints;
DROP TABLE "AT_TYPE" cascade constraints;
DROP TABLE "BOOKS" cascade constraints;
DROP TABLE "COMMON_CODE" cascade constraints;
DROP TABLE "COMPANY_CODE" cascade constraints;
DROP TABLE "CUSTOMER" cascade constraints;
DROP TABLE "CUSTOMER_GRADE" cascade constraints;
DROP TABLE "EMPLOYEE" cascade constraints;
DROP TABLE "EMPLOYEE_GRADE" cascade constraints;
DROP TABLE "ITEM_CODE" cascade constraints;
DROP TABLE "ITEM_GROPU_CODE" cascade constraints;
DROP TABLE "MEMBER" cascade constraints;
DROP TABLE "MENU" cascade constraints;
DROP TABLE "POINT" cascade constraints;
DROP TABLE "PROCEDURE" cascade constraints;
DROP TABLE "PROCEDURE_CODE" cascade constraints;
DROP TABLE "RELEASE" cascade constraints;
DROP TABLE "RESERVATION" cascade constraints;
DROP TABLE "SALE" cascade constraints;
DROP TABLE "SCHEDULE" cascade constraints;
DROP TABLE "STOCK" cascade constraints;
DROP TABLE "WAREHOUSING" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence AC_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AC_CODE_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999 INCREMENT BY 1 START WITH 12 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence AM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AM_SEQ"  MINVALUE 1 MAXVALUE 999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CP_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CP_CODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CS_GRADE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS_GRADE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 68 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMP_GRADE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMP_GRADE_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999 INCREMENT BY 1 START WITH 46 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMP_SEQ"  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEM_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEM_CODE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999 INCREMENT BY 1 START WITH 62 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEM_SEQ"  MINVALUE 1 MAXVALUE 9899999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PC_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PC_CODE_SEQ"  MINVALUE 1 MAXVALUE 99999999999999 INCREMENT BY 1 START WITH 36 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PC_SEQ"  MINVALUE 1 MAXVALUE 99999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SALE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SALE_SEQ"  MINVALUE 1 MAXVALUE 99999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACCOUNT_CODE
--------------------------------------------------------

  CREATE TABLE "ACCOUNT_CODE" 
   (	"AC_NO" NUMBER, 
	"AC_TYPE" VARCHAR2(50), 
	"AC_NM" VARCHAR2(50)
   ) ;

   COMMENT ON COLUMN "ACCOUNT_CODE"."AC_NO" IS '계정코드번호';
   COMMENT ON COLUMN "ACCOUNT_CODE"."AC_TYPE" IS '계정구분';
   COMMENT ON COLUMN "ACCOUNT_CODE"."AC_NM" IS '계정이름';
--------------------------------------------------------
--  DDL for Table ATTENDANCE_MANAGE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE_MANAGE" 
   (	"AM_NO" NUMBER, 
	"AM_ATT_DATE" DATE, 
	"EMP_NO" NUMBER, 
	"AM_LW_TIME" VARCHAR2(20), 
	"AM_MEMO" VARCHAR2(200), 
	"PCC_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."AM_NO" IS '근태번호';
   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."AM_ATT_DATE" IS '출근일자';
   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."EMP_NO" IS '직원번호';
   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."AM_LW_TIME" IS '퇴근시간';
   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."AM_MEMO" IS '비고';
   COMMENT ON COLUMN "ATTENDANCE_MANAGE"."PCC_NO" IS '근무상태번호';
--------------------------------------------------------
--  DDL for Table AT_TYPE
--------------------------------------------------------

  CREATE TABLE "AT_TYPE" 
   (	"PCC_NO" NUMBER, 
	"PCC_GROUP_NM" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "AT_TYPE"."PCC_NO" IS '근무상태 번호';
   COMMENT ON COLUMN "AT_TYPE"."PCC_GROUP_NM" IS '근무상태 이름';
--------------------------------------------------------
--  DDL for Table BOOKS
--------------------------------------------------------

  CREATE TABLE "BOOKS" 
   (	"BK_NO" NUMBER, 
	"BK_DATE" DATE, 
	"ACC_NO" NUMBER, 
	"CP_NO" NUMBER, 
	"BK_CON" VARCHAR2(200), 
	"BK_CNT" NUMBER, 
	"BK_U_PRICE" NUMBER, 
	"BK_AMT" NUMBER, 
	"BK_SP" NUMBER, 
	"BK_VAT" NUMBER, 
	"BK_REM" VARCHAR2(20), 
	"BK_MEMO" VARCHAR2(200)
   ) ;

   COMMENT ON COLUMN "BOOKS"."BK_NO" IS '장부번호';
   COMMENT ON COLUMN "BOOKS"."BK_DATE" IS '거래일자';
   COMMENT ON COLUMN "BOOKS"."ACC_NO" IS '계정코드';
   COMMENT ON COLUMN "BOOKS"."CP_NO" IS '거래처';
   COMMENT ON COLUMN "BOOKS"."BK_CON" IS '거래내용';
   COMMENT ON COLUMN "BOOKS"."BK_CNT" IS '수량';
   COMMENT ON COLUMN "BOOKS"."BK_U_PRICE" IS '단가';
   COMMENT ON COLUMN "BOOKS"."BK_AMT" IS '금액';
   COMMENT ON COLUMN "BOOKS"."BK_SP" IS '공급가';
   COMMENT ON COLUMN "BOOKS"."BK_VAT" IS '부가세';
   COMMENT ON COLUMN "BOOKS"."BK_REM" IS '비고';
   COMMENT ON COLUMN "BOOKS"."BK_MEMO" IS '메모';
--------------------------------------------------------
--  DDL for Table COMMON_CODE
--------------------------------------------------------

  CREATE TABLE "COMMON_CODE" 
   (	"CODE_L_CATE" NUMBER, 
	"CODE_M_CATE" NUMBER, 
	"CODE_S_CATE" NUMBER, 
	"CODE_NAME" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "COMMON_CODE"."CODE_L_CATE" IS '대코드번호';
   COMMENT ON COLUMN "COMMON_CODE"."CODE_M_CATE" IS '중코드번호';
   COMMENT ON COLUMN "COMMON_CODE"."CODE_S_CATE" IS '소코드번호';
   COMMENT ON COLUMN "COMMON_CODE"."CODE_NAME" IS '코드이름';
--------------------------------------------------------
--  DDL for Table COMPANY_CODE
--------------------------------------------------------

  CREATE TABLE "COMPANY_CODE" 
   (	"CP_NO" NUMBER, 
	"CP_TYPE" VARCHAR2(20), 
	"CP_NM" VARCHAR2(50), 
	"CP_BIZ_NO" VARCHAR2(20), 
	"CP_BIZ_NM" VARCHAR2(20), 
	"CP_BIZ" VARCHAR2(200), 
	"CP_EVENT" VARCHAR2(200), 
	"CP_ADD_NO" VARCHAR2(20), 
	"CP_ADD" VARCHAR2(100), 
	"CP_ADD_DETAIL" VARCHAR2(100), 
	"CP_PH1" VARCHAR2(20), 
	"CP_PH2" VARCHAR2(20), 
	"CP_PH" VARCHAR2(20), 
	"CP_FAX" VARCHAR2(20), 
	"CP_EMAIL" VARCHAR2(50), 
	"CP_WEBSITE" VARCHAR2(50), 
	"EMP_NO" NUMBER, 
	"CP_MEMO" VARCHAR2(200), 
	"CP_DATE" DATE DEFAULT SYSDATE
   ) ;

   COMMENT ON COLUMN "COMPANY_CODE"."CP_NO" IS '거래처번호';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_TYPE" IS '거래처구분';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_NM" IS '거래처명';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_BIZ_NO" IS '사업자번호';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_BIZ_NM" IS '대표자명';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_BIZ" IS '업태';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_EVENT" IS '종목';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_ADD_NO" IS '우편번호';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_ADD" IS '주소';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_ADD_DETAIL" IS '상세주소';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_PH1" IS '전화1';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_PH2" IS '전화2';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_PH" IS '핸드폰';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_FAX" IS '팩스';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_EMAIL" IS '이메일';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_WEBSITE" IS '사이트';
   COMMENT ON COLUMN "COMPANY_CODE"."EMP_NO" IS '담당자';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_MEMO" IS '메모';
   COMMENT ON COLUMN "COMPANY_CODE"."CP_DATE" IS '등록일';
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CUSTOMER" 
   (	"CT_NO" NUMBER DEFAULT NULL, 
	"CT_NM" VARCHAR2(100), 
	"CT_GRADE_NO" NUMBER, 
	"EMP_NO" NUMBER, 
	"SAL_NO" NUMBER, 
	"PROC_NO" NUMBER, 
	"CT_SEX" VARCHAR2(50), 
	"CT_BIR" DATE, 
	"CT_NUM" VARCHAR2(20), 
	"CT_PH" VARCHAR2(20), 
	"CT_REG_DATE" DATE, 
	"CT_VISIT_DATE" DATE DEFAULT SYSDATE, 
	"CT_ANN" DATE, 
	"CT_ADD" VARCHAR2(100), 
	"CT_EMAIL" VARCHAR2(100), 
	"CT_MEMO" VARCHAR2(200), 
	"DEL_YN" NUMBER DEFAULT 1, 
	"PT_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "CUSTOMER"."CT_NO" IS '고객 번호';
   COMMENT ON COLUMN "CUSTOMER"."CT_NM" IS '고객 이름';
   COMMENT ON COLUMN "CUSTOMER"."CT_GRADE_NO" IS '고객등급 번호';
   COMMENT ON COLUMN "CUSTOMER"."EMP_NO" IS '담당자 번호';
   COMMENT ON COLUMN "CUSTOMER"."SAL_NO" IS '판매 번호';
   COMMENT ON COLUMN "CUSTOMER"."PROC_NO" IS '시술 번호';
   COMMENT ON COLUMN "CUSTOMER"."CT_SEX" IS '성별';
   COMMENT ON COLUMN "CUSTOMER"."CT_BIR" IS '생일';
   COMMENT ON COLUMN "CUSTOMER"."CT_NUM" IS '전화번호';
   COMMENT ON COLUMN "CUSTOMER"."CT_PH" IS '핸드폰';
   COMMENT ON COLUMN "CUSTOMER"."CT_REG_DATE" IS '등록일';
   COMMENT ON COLUMN "CUSTOMER"."CT_VISIT_DATE" IS '방문일';
   COMMENT ON COLUMN "CUSTOMER"."CT_ANN" IS '기념일';
   COMMENT ON COLUMN "CUSTOMER"."CT_ADD" IS '주소';
   COMMENT ON COLUMN "CUSTOMER"."CT_EMAIL" IS '이메일';
   COMMENT ON COLUMN "CUSTOMER"."CT_MEMO" IS '메모';
   COMMENT ON COLUMN "CUSTOMER"."DEL_YN" IS '탈퇴여부';
   COMMENT ON COLUMN "CUSTOMER"."PT_NO" IS '포인트번호';
--------------------------------------------------------
--  DDL for Table CUSTOMER_GRADE
--------------------------------------------------------

  CREATE TABLE "CUSTOMER_GRADE" 
   (	"GRADE_NO" NUMBER, 
	"GRADE_LEVEL" NUMBER, 
	"GRADE_NM" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "CUSTOMER_GRADE"."GRADE_NO" IS '등급코드번호';
   COMMENT ON COLUMN "CUSTOMER_GRADE"."GRADE_LEVEL" IS '등급번호';
   COMMENT ON COLUMN "CUSTOMER_GRADE"."GRADE_NM" IS '등급명';
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMP_NO" NUMBER, 
	"EMP_NM" VARCHAR2(20), 
	"GRADE_NO" NUMBER, 
	"EMP_PH" VARCHAR2(20), 
	"EMP_BIR_DATE" DATE, 
	"EMP_SEX" VARCHAR2(20), 
	"EMP_EMAIL" VARCHAR2(50), 
	"EMP_ADD_NO" VARCHAR2(20), 
	"EMP_ADD" VARCHAR2(100), 
	"EMP_ADD_DETAIL" VARCHAR2(100), 
	"EMP_JOIN" DATE, 
	"EMP_SALARY_DATE" VARCHAR2(20), 
	"EMP_RRN" VARCHAR2(20), 
	"EMP_MEMO" VARCHAR2(400), 
	"EMP_BANK_NM" VARCHAR2(20), 
	"EMP_BANK_NO" VARCHAR2(20), 
	"EMP_BANK_DNM" VARCHAR2(20), 
	"EMP_HW" VARCHAR2(20), 
	"DEL_YN" NUMBER DEFAULT 1
   ) ;

   COMMENT ON COLUMN "EMPLOYEE"."EMP_NO" IS '직원번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_NM" IS '직원명';
   COMMENT ON COLUMN "EMPLOYEE"."GRADE_NO" IS '직원등급';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_PH" IS '휴대폰';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_BIR_DATE" IS '직원생일';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_SEX" IS '성별';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_EMAIL" IS '이메일';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_ADD_NO" IS '우편번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_ADD" IS '주소';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_ADD_DETAIL" IS '상세주소';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_JOIN" IS '입사일';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_SALARY_DATE" IS '월급일';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_RRN" IS '주민번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_MEMO" IS '메모';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_BANK_NM" IS '은행명';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_BANK_NO" IS '계좌번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_BANK_DNM" IS '예금주';
   COMMENT ON COLUMN "EMPLOYEE"."EMP_HW" IS '시급';
   COMMENT ON COLUMN "EMPLOYEE"."DEL_YN" IS '근무여부';
--------------------------------------------------------
--  DDL for Table EMPLOYEE_GRADE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE_GRADE" 
   (	"GRADE_NO" NUMBER, 
	"GRADE_LEVEL" NUMBER, 
	"GRADE_NM" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "EMPLOYEE_GRADE"."GRADE_NO" IS '등급코드번호';
   COMMENT ON COLUMN "EMPLOYEE_GRADE"."GRADE_LEVEL" IS '등급번호';
   COMMENT ON COLUMN "EMPLOYEE_GRADE"."GRADE_NM" IS '등급명';
--------------------------------------------------------
--  DDL for Table ITEM_CODE
--------------------------------------------------------

  CREATE TABLE "ITEM_CODE" 
   (	"IT_NO" NUMBER, 
	"IT_NM" VARCHAR2(50), 
	"CP_NO" NUMBER, 
	"IT_STD" VARCHAR2(100), 
	"IT_UNIT" VARCHAR2(100), 
	"IT_VAT_CK" VARCHAR2(20), 
	"IT_SAL_U_PRICE" NUMBER, 
	"IT_MONEY_PT" NUMBER, 
	"IT_CARD_PT" NUMBER, 
	"IT_DATE" DATE DEFAULT SYSDATE, 
	"IT_M_GROUP_NO" NUMBER, 
	"IT_S_GROUP_NO" NUMBER, 
	"IT_SAL_W_PRICE" NUMBER
   ) ;

   COMMENT ON COLUMN "ITEM_CODE"."IT_NO" IS '상품번호';
   COMMENT ON COLUMN "ITEM_CODE"."IT_NM" IS '상품명';
   COMMENT ON COLUMN "ITEM_CODE"."CP_NO" IS '매입처';
   COMMENT ON COLUMN "ITEM_CODE"."IT_STD" IS '상품규격';
   COMMENT ON COLUMN "ITEM_CODE"."IT_UNIT" IS '상품단위';
   COMMENT ON COLUMN "ITEM_CODE"."IT_VAT_CK" IS 'VAT포함여부';
   COMMENT ON COLUMN "ITEM_CODE"."IT_SAL_U_PRICE" IS '판매단가';
   COMMENT ON COLUMN "ITEM_CODE"."IT_MONEY_PT" IS '현금적립포인트';
   COMMENT ON COLUMN "ITEM_CODE"."IT_CARD_PT" IS '카드적립포인트';
   COMMENT ON COLUMN "ITEM_CODE"."IT_DATE" IS '등록일';
   COMMENT ON COLUMN "ITEM_CODE"."IT_M_GROUP_NO" IS '상품 대그룹 번호';
   COMMENT ON COLUMN "ITEM_CODE"."IT_S_GROUP_NO" IS '상품 소그룹 번호';
   COMMENT ON COLUMN "ITEM_CODE"."IT_SAL_W_PRICE" IS '매입단가';
--------------------------------------------------------
--  DDL for Table ITEM_GROPU_CODE
--------------------------------------------------------

  CREATE TABLE "ITEM_GROPU_CODE" 
   (	"IGC_DNO" NUMBER, 
	"IGC_NO" NUMBER, 
	"IGC_NAME" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "ITEM_GROPU_CODE"."IGC_DNO" IS '대그룹 분류번호';
   COMMENT ON COLUMN "ITEM_GROPU_CODE"."IGC_NO" IS '소그룹 분류번호';
   COMMENT ON COLUMN "ITEM_GROPU_CODE"."IGC_NAME" IS '분류이름';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEM_NO" NUMBER, 
	"MEM_ID" VARCHAR2(20), 
	"MEM_PW" VARCHAR2(200), 
	"MEM_2PW" VARCHAR2(200), 
	"MEM_ADD_NO" NUMBER, 
	"MEM_ADD" VARCHAR2(70), 
	"MEM_ADD_DETAIL" VARCHAR2(70), 
	"MEM_JOIN" DATE DEFAULT SYSDATE, 
	"DEL_YN" NUMBER DEFAULT 0
   ) ;

   COMMENT ON COLUMN "MEMBER"."MEM_NO" IS '회원번호';
   COMMENT ON COLUMN "MEMBER"."MEM_ID" IS '아이디';
   COMMENT ON COLUMN "MEMBER"."MEM_PW" IS '비밀번호';
   COMMENT ON COLUMN "MEMBER"."MEM_2PW" IS '2차비밀번호';
   COMMENT ON COLUMN "MEMBER"."MEM_ADD_NO" IS '우편번호';
   COMMENT ON COLUMN "MEMBER"."MEM_ADD" IS '주소';
   COMMENT ON COLUMN "MEMBER"."MEM_ADD_DETAIL" IS '상세주소';
   COMMENT ON COLUMN "MEMBER"."MEM_JOIN" IS '가입날짜';
   COMMENT ON COLUMN "MEMBER"."DEL_YN" IS '탈퇴번호';
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "MENU" 
   (	"MENU_NO" NUMBER, 
	"TOP_MENU_NO" NUMBER, 
	"MENU_NAME" VARCHAR2(100), 
	"MENU_ADDR" VARCHAR2(200), 
	"MENU_DIV" NUMBER, 
	"MENU_DEPTH" NUMBER
   ) ;

   COMMENT ON COLUMN "MENU"."MENU_NO" IS '메뉴번호';
   COMMENT ON COLUMN "MENU"."TOP_MENU_NO" IS '상위 메뉴번호';
   COMMENT ON COLUMN "MENU"."MENU_NAME" IS '메뉴명';
   COMMENT ON COLUMN "MENU"."MENU_ADDR" IS '메뉴 주소';
   COMMENT ON COLUMN "MENU"."MENU_DIV" IS '메뉴 구분';
   COMMENT ON COLUMN "MENU"."MENU_DEPTH" IS '메뉴 깊이';
--------------------------------------------------------
--  DDL for Table POINT
--------------------------------------------------------

  CREATE TABLE "POINT" 
   (	"PT_NO" NUMBER, 
	"CT_NO" NUMBER, 
	"PT_DATE" DATE DEFAULT SYSDATE, 
	"PT_BRD" VARCHAR2(200), 
	"PT_SAVE" NUMBER, 
	"PT_DD" NUMBER, 
	"DEL_YN" NUMBER DEFAULT 1
   ) ;

   COMMENT ON COLUMN "POINT"."PT_NO" IS '포인트번호';
   COMMENT ON COLUMN "POINT"."CT_NO" IS '고객번호';
   COMMENT ON COLUMN "POINT"."PT_DATE" IS '일시';
   COMMENT ON COLUMN "POINT"."PT_BRD" IS '내역';
   COMMENT ON COLUMN "POINT"."PT_SAVE" IS '적립금액';
   COMMENT ON COLUMN "POINT"."PT_DD" IS '차감금액';
   COMMENT ON COLUMN "POINT"."DEL_YN" IS '삭제여부';
--------------------------------------------------------
--  DDL for Table PROCEDURE
--------------------------------------------------------

  CREATE TABLE "PROCEDURE" 
   (	"PROC_NO" NUMBER, 
	"PROC_DATE" DATE, 
	"CT_NO" NUMBER, 
	"EMP_NO" NUMBER, 
	"PROC_BG_NO" NUMBER, 
	"PROC_SG_NO" NUMBER, 
	"PROC_MONEY_TYPE" VARCHAR2(20), 
	"PROC_MONEY" NUMBER, 
	"PT_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "PROCEDURE"."PROC_NO" IS '시술번호';
   COMMENT ON COLUMN "PROCEDURE"."PROC_DATE" IS '시술날짜';
   COMMENT ON COLUMN "PROCEDURE"."CT_NO" IS '고객번호';
   COMMENT ON COLUMN "PROCEDURE"."EMP_NO" IS '직원번호';
   COMMENT ON COLUMN "PROCEDURE"."PROC_BG_NO" IS '대분류코드';
   COMMENT ON COLUMN "PROCEDURE"."PROC_SG_NO" IS '소분류코드';
   COMMENT ON COLUMN "PROCEDURE"."PROC_MONEY_TYPE" IS '요금구분';
   COMMENT ON COLUMN "PROCEDURE"."PROC_MONEY" IS '요금';
   COMMENT ON COLUMN "PROCEDURE"."PT_NO" IS '포인트번호';
--------------------------------------------------------
--  DDL for Table PROCEDURE_CODE
--------------------------------------------------------

  CREATE TABLE "PROCEDURE_CODE" 
   (	"PCC_L_CATE" NUMBER, 
	"PCC_S_CATE" NUMBER, 
	"PCC_NAME" VARCHAR2(40), 
	"PCC_PRICE" NUMBER, 
	"PCC_CARD_PT" NUMBER DEFAULT 0, 
	"PCC_CASH_PT" NUMBER DEFAULT 0
   ) ;

   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_L_CATE" IS '시술대분류';
   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_S_CATE" IS '시술소분류';
   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_NAME" IS '시술명';
   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_PRICE" IS '시술가격';
   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_CARD_PT" IS '카드적립포인트';
   COMMENT ON COLUMN "PROCEDURE_CODE"."PCC_CASH_PT" IS '현금적립포인트';
--------------------------------------------------------
--  DDL for Table RELEASE
--------------------------------------------------------

  CREATE TABLE "RELEASE" 
   (	"RE_NO" NUMBER, 
	"IT_NO" NUMBER, 
	"RE_AMT" NUMBER, 
	"CP_NO" NUMBER, 
	"RE_MEMO" VARCHAR2(200), 
	"RE_DATE" DATE, 
	"RE_CNT" NUMBER
   ) ;

   COMMENT ON COLUMN "RELEASE"."RE_NO" IS '출고번호';
   COMMENT ON COLUMN "RELEASE"."IT_NO" IS '상품명';
   COMMENT ON COLUMN "RELEASE"."RE_AMT" IS '금액';
   COMMENT ON COLUMN "RELEASE"."CP_NO" IS '출고처';
   COMMENT ON COLUMN "RELEASE"."RE_MEMO" IS '메모';
   COMMENT ON COLUMN "RELEASE"."RE_DATE" IS '출고일';
   COMMENT ON COLUMN "RELEASE"."RE_CNT" IS '출고수량';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" 
   (	"RV_NO" NUMBER, 
	"RV_DATE" DATE, 
	"CT_NO" NUMBER, 
	"RV_PH" VARCHAR2(20), 
	"EMP_NO" NUMBER, 
	"RV_COLOR" VARCHAR2(20), 
	"RV_CON" VARCHAR2(200)
   ) ;

   COMMENT ON COLUMN "RESERVATION"."RV_NO" IS '예약번호';
   COMMENT ON COLUMN "RESERVATION"."RV_DATE" IS '예약일';
   COMMENT ON COLUMN "RESERVATION"."CT_NO" IS '고객번호';
   COMMENT ON COLUMN "RESERVATION"."RV_PH" IS '연락처';
   COMMENT ON COLUMN "RESERVATION"."EMP_NO" IS '담당자번호';
   COMMENT ON COLUMN "RESERVATION"."RV_COLOR" IS '색상
';
   COMMENT ON COLUMN "RESERVATION"."RV_CON" IS '예약내용';
--------------------------------------------------------
--  DDL for Table SALE
--------------------------------------------------------

  CREATE TABLE "SALE" 
   (	"SAL_NO" NUMBER, 
	"SAL_DATE" DATE DEFAULT SYSDATE, 
	"CT_NO" NUMBER, 
	"EMP_NO" NUMBER, 
	"IT_NO" NUMBER, 
	"SAL_CNT" NUMBER, 
	"SAL_MONEY_TYPE" VARCHAR2(20), 
	"SAL_AMT" NUMBER, 
	"SAL_MEMO" VARCHAR2(200), 
	"PT_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "SALE"."SAL_NO" IS '판매번호';
   COMMENT ON COLUMN "SALE"."SAL_DATE" IS '판매일시';
   COMMENT ON COLUMN "SALE"."CT_NO" IS '고객명';
   COMMENT ON COLUMN "SALE"."EMP_NO" IS '담당자';
   COMMENT ON COLUMN "SALE"."IT_NO" IS '상품코드';
   COMMENT ON COLUMN "SALE"."SAL_CNT" IS '수량';
   COMMENT ON COLUMN "SALE"."SAL_MONEY_TYPE" IS '요금분류';
   COMMENT ON COLUMN "SALE"."SAL_AMT" IS '금액';
   COMMENT ON COLUMN "SALE"."SAL_MEMO" IS '메모';
   COMMENT ON COLUMN "SALE"."PT_NO" IS '포인트번호';
--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------

  CREATE TABLE "SCHEDULE" 
   (	"SCD_NO" NUMBER, 
	"SCD_SDATE" DATE, 
	"SCD_EDATE" DATE, 
	"EMP_NO" NUMBER, 
	"SCD_COLOR" VARCHAR2(20), 
	"SCD_CON" VARCHAR2(200)
   ) ;

   COMMENT ON COLUMN "SCHEDULE"."SCD_NO" IS '일정번호';
   COMMENT ON COLUMN "SCHEDULE"."SCD_SDATE" IS '일정시작일';
   COMMENT ON COLUMN "SCHEDULE"."SCD_EDATE" IS '일정종료일';
   COMMENT ON COLUMN "SCHEDULE"."EMP_NO" IS '직원번호';
   COMMENT ON COLUMN "SCHEDULE"."SCD_COLOR" IS '색깔';
   COMMENT ON COLUMN "SCHEDULE"."SCD_CON" IS '일정내용';
--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "STOCK" 
   (	"ST_NO" NUMBER, 
	"IT_NO" NUMBER, 
	"CP_NO" NUMBER, 
	"ST_PS_CNT" NUMBER, 
	"ST_MEMO" VARCHAR2(200)
   ) ;

   COMMENT ON COLUMN "STOCK"."ST_NO" IS '재고번호';
   COMMENT ON COLUMN "STOCK"."IT_NO" IS '상품번호';
   COMMENT ON COLUMN "STOCK"."CP_NO" IS '매입처';
   COMMENT ON COLUMN "STOCK"."ST_PS_CNT" IS '현재수량';
   COMMENT ON COLUMN "STOCK"."ST_MEMO" IS '메모';
--------------------------------------------------------
--  DDL for Table WAREHOUSING
--------------------------------------------------------

  CREATE TABLE "WAREHOUSING" 
   (	"WH_NO" NUMBER, 
	"WH_DATE" DATE DEFAULT NULL, 
	"IT_NO" NUMBER, 
	"WH_PRICE" NUMBER, 
	"CP_NO" NUMBER, 
	"WH_MEMO" VARCHAR2(200), 
	"WH_CNT" NUMBER, 
	"WH_GROUP_NM" VARCHAR2(50), 
	"WH_UNIT" NUMBER DEFAULT 1
   ) ;

   COMMENT ON COLUMN "WAREHOUSING"."WH_NO" IS '입고번호';
   COMMENT ON COLUMN "WAREHOUSING"."WH_DATE" IS '입고일';
   COMMENT ON COLUMN "WAREHOUSING"."IT_NO" IS '상품번호';
   COMMENT ON COLUMN "WAREHOUSING"."WH_PRICE" IS '금액';
   COMMENT ON COLUMN "WAREHOUSING"."CP_NO" IS '입고처';
   COMMENT ON COLUMN "WAREHOUSING"."WH_MEMO" IS '메모';
   COMMENT ON COLUMN "WAREHOUSING"."WH_CNT" IS '입고 수량';
   COMMENT ON COLUMN "WAREHOUSING"."WH_GROUP_NM" IS '입고그룹명';
   COMMENT ON COLUMN "WAREHOUSING"."WH_UNIT" IS '단위
';
REM INSERTING into ACCOUNT_CODE
SET DEFINE OFF;
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (1,'매출','시술매출');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (2,'매출','상품매출');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (3,'매출','기타매출');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (4,'매입','상품매입');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (5,'매입','식비');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (6,'매입','급료');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (7,'매입','임차료');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (8,'매입','기타잡비');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (9,'매입','기타경비');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (10,'매매','자산매입');
Insert into ACCOUNT_CODE (AC_NO,AC_TYPE,AC_NM) values (11,'매매','자산매각');
REM INSERTING into ATTENDANCE_MANAGE
SET DEFINE OFF;
REM INSERTING into AT_TYPE
SET DEFINE OFF;
REM INSERTING into BOOKS
SET DEFINE OFF;
REM INSERTING into COMMON_CODE
SET DEFINE OFF;
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,1,2,'테스트');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,0,0,'코드대분류');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,0,1,'상품그룹');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,0,3,'장부');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,1,0,'도구/기구');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,1,1,'약품');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,3,0,'매출');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,3,1,'매입');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (0,3,2,'매매');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (1,0,0,'빗');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (1,0,1,'매직기');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (1,1,0,'샴푸');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (1,1,1,'린스');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (1,1,2,'염색약');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,0,0,'시술매출');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,0,1,'상품매출');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,0,2,'기타매출');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,0,'상품매입');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,1,'식비');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,2,'급료');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,3,'임차료');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,4,'기타잡비');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,1,5,'기타경비');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,2,0,'자산매입');
Insert into COMMON_CODE (CODE_L_CATE,CODE_M_CATE,CODE_S_CATE,CODE_NAME) values (3,2,1,'자산매각');
REM INSERTING into COMPANY_CODE
SET DEFINE OFF;
Insert into COMPANY_CODE (CP_NO,CP_TYPE,CP_NM,CP_BIZ_NO,CP_BIZ_NM,CP_BIZ,CP_EVENT,CP_ADD_NO,CP_ADD,CP_ADD_DETAIL,CP_PH1,CP_PH2,CP_PH,CP_FAX,CP_EMAIL,CP_WEBSITE,EMP_NO,CP_MEMO,CP_DATE) values (1,'매출처','거래처명','110-52-41234','홍길동','생산업','종목1','11100','서울특별시 금천구','구디아카데미','010-1234-1234','010-1234-1234','010-1234-1234','02-1234-1234','GMAIL@GMAIL.COM','GMAIL.COM',1,'메모',to_date('20/02/06','RR/MM/DD'));
Insert into COMPANY_CODE (CP_NO,CP_TYPE,CP_NM,CP_BIZ_NO,CP_BIZ_NM,CP_BIZ,CP_EVENT,CP_ADD_NO,CP_ADD,CP_ADD_DETAIL,CP_PH1,CP_PH2,CP_PH,CP_FAX,CP_EMAIL,CP_WEBSITE,EMP_NO,CP_MEMO,CP_DATE) values (3,'매출처','거래처명테스','110-52-15082','이성준','IT업태명','IT업태명','08500','서울특별시 금천구 서부샛길 714','하우스디어반 ','010-1111-1111','010-1111-1112','010-1234-4321','010-1111-1113','email@email.com','home@page.com',1,'memo',to_date('20/02/09','RR/MM/DD'));
Insert into COMPANY_CODE (CP_NO,CP_TYPE,CP_NM,CP_BIZ_NO,CP_BIZ_NM,CP_BIZ,CP_EVENT,CP_ADD_NO,CP_ADD,CP_ADD_DETAIL,CP_PH1,CP_PH2,CP_PH,CP_FAX,CP_EMAIL,CP_WEBSITE,EMP_NO,CP_MEMO,CP_DATE) values (8,'매입처','SJCOM','110-52-10581','이성준','유통','종목도유통','06500','서울특별시 서초구 올림픽대로 2085-18','올림픽대로',null,null,'010-4564-5645',null,'email@asdf.com',null,1,null,to_date('20/02/10','RR/MM/DD'));
REM INSERTING into CUSTOMER
SET DEFINE OFF;
Insert into CUSTOMER (CT_NO,CT_NM,CT_GRADE_NO,EMP_NO,SAL_NO,PROC_NO,CT_SEX,CT_BIR,CT_NUM,CT_PH,CT_REG_DATE,CT_VISIT_DATE,CT_ANN,CT_ADD,CT_EMAIL,CT_MEMO,DEL_YN,PT_NO) values (3,'EX',1,1,null,null,'남자',to_date('20/02/04','RR/MM/DD'),'010-0000-0000','010-1111-1111',to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),'서울특별시 238-73','ㅁㅁ@GOOGLE.COM','WARNING',1,1);
Insert into CUSTOMER (CT_NO,CT_NM,CT_GRADE_NO,EMP_NO,SAL_NO,PROC_NO,CT_SEX,CT_BIR,CT_NUM,CT_PH,CT_REG_DATE,CT_VISIT_DATE,CT_ANN,CT_ADD,CT_EMAIL,CT_MEMO,DEL_YN,PT_NO) values (4,'ZZZ',1,1,null,null,'남자',to_date('20/02/04','RR/MM/DD'),'010-0000-0000','010-1111-1111',to_date('20/02/07','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),'서울특별시 238-73','ㅁㅁ@GOOGLE.COM','WARNING',1,1);
Insert into CUSTOMER (CT_NO,CT_NM,CT_GRADE_NO,EMP_NO,SAL_NO,PROC_NO,CT_SEX,CT_BIR,CT_NUM,CT_PH,CT_REG_DATE,CT_VISIT_DATE,CT_ANN,CT_ADD,CT_EMAIL,CT_MEMO,DEL_YN,PT_NO) values (2,'TEST2',1,1,null,null,'남자',to_date('20/02/04','RR/MM/DD'),'010-0000-0000','010-0000-0000',to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),'서울특별시 238-73','ㅁㅁ@GOOGLE.COM','WARNING',1,1);
Insert into CUSTOMER (CT_NO,CT_NM,CT_GRADE_NO,EMP_NO,SAL_NO,PROC_NO,CT_SEX,CT_BIR,CT_NUM,CT_PH,CT_REG_DATE,CT_VISIT_DATE,CT_ANN,CT_ADD,CT_EMAIL,CT_MEMO,DEL_YN,PT_NO) values (1,'TEST',1,1,null,null,'남자',to_date('20/02/04','RR/MM/DD'),'010-0000-0000','010-0000-0000',to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),to_date('20/02/04','RR/MM/DD'),'서울특별시 238-73','ㅁㅁ@GOOGLE.COM','WARNING',1,1);
REM INSERTING into CUSTOMER_GRADE
SET DEFINE OFF;
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (1,1,'Bronze');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (2,2,'Silver');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (3,3,'Gold');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (4,4,'Platinum');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (5,5,'Diamond');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (6,6,'Master');
Insert into CUSTOMER_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (7,7,'Challenger');
REM INSERTING into EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (EMP_NO,EMP_NM,GRADE_NO,EMP_PH,EMP_BIR_DATE,EMP_SEX,EMP_EMAIL,EMP_ADD_NO,EMP_ADD,EMP_ADD_DETAIL,EMP_JOIN,EMP_SALARY_DATE,EMP_RRN,EMP_MEMO,EMP_BANK_NM,EMP_BANK_NO,EMP_BANK_DNM,EMP_HW,DEL_YN) values (1,'SYSADMIN',1,'010-1111-1111',null,null,null,null,null,null,null,null,null,null,null,null,null,null,1);
REM INSERTING into EMPLOYEE_GRADE
SET DEFINE OFF;
Insert into EMPLOYEE_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (1,1,'대표');
Insert into EMPLOYEE_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (2,2,'실장');
Insert into EMPLOYEE_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (3,3,'디자이너');
Insert into EMPLOYEE_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (4,4,'스탭');
Insert into EMPLOYEE_GRADE (GRADE_NO,GRADE_LEVEL,GRADE_NM) values (5,5,'아르바이트');
REM INSERTING into ITEM_CODE
SET DEFINE OFF;
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (24,'상품명테스트',3,null,null,'VAT포함',null,null,null,to_date('20/02/10','RR/MM/DD'),-1,-1,null);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (25,'테스트요수정빗',8,'10X10','1','VAT포함',25000,2500,1250,to_date('20/02/10','RR/MM/DD'),0,0,20000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (42,'샴푸3',3,null,null,'VAT포함',30000,null,null,to_date('20/02/11','RR/MM/DD'),1,0,20000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (1,'샴푸',1,'500','2','VAT포함',10000,3000,0,to_date('20/02/06','RR/MM/DD'),1,0,null);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (8,'매직기',8,'10cm','2','VAT포함',50000,5000,2500,to_date('20/02/10','RR/MM/DD'),1,0,30000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (2,'린스',1,'1','1','VAT포함',20000,2000,1000,to_date('20/02/09','RR/MM/DD'),1,1,8000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (5,'린스1',1,'1','1','VAT포함',20000,2000,1000,to_date('20/02/09','RR/MM/DD'),1,1,8000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (6,'빗',3,'10cm','1','VAT미포함',20000,2000,1000,to_date('20/02/10','RR/MM/DD'),0,0,15000);
Insert into ITEM_CODE (IT_NO,IT_NM,CP_NO,IT_STD,IT_UNIT,IT_VAT_CK,IT_SAL_U_PRICE,IT_MONEY_PT,IT_CARD_PT,IT_DATE,IT_M_GROUP_NO,IT_S_GROUP_NO,IT_SAL_W_PRICE) values (7,'염색약',1,'1L','1','VAT미포함',20000,2000,1000,to_date('20/02/10','RR/MM/DD'),1,2,1500);
REM INSERTING into ITEM_GROPU_CODE
SET DEFINE OFF;
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEM_NO,MEM_ID,MEM_PW,MEM_2PW,MEM_ADD_NO,MEM_ADD,MEM_ADD_DETAIL,MEM_JOIN,DEL_YN) values (1,'admin','m/RvEY2EIPPWJOafzDHF3Q==','m/RvEY2EIPPWJOafzDHF3Q==',null,null,null,to_date('20/01/30','RR/MM/DD'),0);
REM INSERTING into MENU
SET DEFINE OFF;
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (21,2,'근태관리','dlManage',0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (1,null,'고객','customerList',0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (2,null,'직원',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (3,2,'직원관리','emlManage',0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (4,null,'시술','proc_admin_list',0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (5,null,'판매','product_sell_list',0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (6,null,'포인트','point_list',0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (7,null,'재고',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (8,null,'입고',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (9,null,'출고',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (10,null,'일정관리',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (11,10,'예약 & 일정','schedule_fullcalendar3',0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (12,10,'월간 예약 목록','reservation_list',0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (13,10,'월간 일정 목록','calendar_list',0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (14,null,'기초코드관리',null,0,1);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (15,14,'고객등급코드관리',null,0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (16,14,'시술코드관리',null,0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (17,14,'직원등급코드관리',null,0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (18,14,'상품코드관리',null,0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (19,14,'계정코드관리',null,0,2);
Insert into MENU (MENU_NO,TOP_MENU_NO,MENU_NAME,MENU_ADDR,MENU_DIV,MENU_DEPTH) values (20,14,'거래처코드관리',null,0,2);
REM INSERTING into POINT
SET DEFINE OFF;
Insert into POINT (PT_NO,CT_NO,PT_DATE,PT_BRD,PT_SAVE,PT_DD,DEL_YN) values (2,1,to_date('20/02/04','RR/MM/DD'),'아무거나',5000,1000,1);
Insert into POINT (PT_NO,CT_NO,PT_DATE,PT_BRD,PT_SAVE,PT_DD,DEL_YN) values (3,1,to_date('20/02/04','RR/MM/DD'),'아무거나',5000,1000,1);
Insert into POINT (PT_NO,CT_NO,PT_DATE,PT_BRD,PT_SAVE,PT_DD,DEL_YN) values (4,1,to_date('20/02/04','RR/MM/DD'),'아무거나',5000,1000,1);
Insert into POINT (PT_NO,CT_NO,PT_DATE,PT_BRD,PT_SAVE,PT_DD,DEL_YN) values (5,2,to_date('20/02/04','RR/MM/DD'),'아무거나',5000,1000,1);
Insert into POINT (PT_NO,CT_NO,PT_DATE,PT_BRD,PT_SAVE,PT_DD,DEL_YN) values (1,1,to_date('20/02/04','RR/MM/DD'),'아무거나',5000,1000,1);
REM INSERTING into PROCEDURE
SET DEFINE OFF;
Insert into PROCEDURE (PROC_NO,PROC_DATE,CT_NO,EMP_NO,PROC_BG_NO,PROC_SG_NO,PROC_MONEY_TYPE,PROC_MONEY,PT_NO) values (1,to_date('20/02/04','RR/MM/DD'),1,1,2,0,'현금',10000,1);
REM INSERTING into PROCEDURE_CODE
SET DEFINE OFF;
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,1,'기타',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,2,'드라이',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,3,'염색',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,4,'커트',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,5,'클리닉',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (0,6,'펌',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (1,0,'기타',null,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (1,1,'붙임머리',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (1,2,'올림머리',9000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (2,0,'드라이',9000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (2,1,'매직드라이',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (2,2,'웨이브드라이',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (3,0,'일반(염색)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (3,1,'일반(탈색)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (3,2,'뿌리(염색)',9000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (3,3,'일반코팅',9000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (4,0,'남자컷트',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (4,1,'앞머리컷트',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (4,2,'여자컷트',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (5,0,'두피크리닉',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (5,1,'세라마이드 크리닉',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (5,2,'아쿠아 크리닉',50000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (5,3,'엠플 크리닉',50000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (5,4,'일반 크리닉',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,0,'디지털(펌)',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,1,'롤스트레이트(펌)',50000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,2,'매직스트레이트(펌)',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,3,'볼륨매직(펌)',50000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,4,'세라마이드(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,5,'셋팅(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,6,'스트레이트(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,7,'아이롱(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,8,'웨이브트위스트(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,9,'일반(펌)',8000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,10,'직(펌)',50000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,11,'텍스쳐(펌)',10000,0,0);
Insert into PROCEDURE_CODE (PCC_L_CATE,PCC_S_CATE,PCC_NAME,PCC_PRICE,PCC_CARD_PT,PCC_CASH_PT) values (6,12,'호일(펌)',8000,0,0);
REM INSERTING into RELEASE
SET DEFINE OFF;
REM INSERTING into RESERVATION
SET DEFINE OFF;
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (1,to_date('20/01/31','RR/MM/DD'),1,'010-1234-1234',1,'#D25565','테스트');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (2,to_date('20/02/01','RR/MM/DD'),1,'010-1234-4321',1,'#e5e5e5','테스트2');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (3,to_date('20/01/29','RR/MM/DD'),1,'010-1234-4321',1,'RED','테스트3');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (4,to_date('20/01/28','RR/MM/DD'),1,'010-1234-4321',1,'RED','테스트3');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (5,to_date('20/02/04','RR/MM/DD'),1,'010-9999-9999',1,'#74c0fc','test21');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (7,to_date('20/02/06','RR/MM/DD'),1,'010-9999-9999',1,'#4d638c','ㅌㅅㅇ');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (13,to_date('20/02/03','RR/MM/DD'),1,'010-5555-5555',1,'#a9e34b','테스트입니다');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (6,to_date('20/01/30','RR/MM/DD'),1,'010-1234-1234',1,'#63e6be','테스트');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (8,to_date('20/02/10','RR/MM/DD'),1,'01012341234',1,'#63e6be','체크');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (9,to_date('20/02/06','RR/MM/DD'),1,'010-9999-9999',1,'#a9e34b','수정이요');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (12,to_date('20/02/02','RR/MM/DD'),1,'010-9879-8798',1,'#9775fa','테스트');
Insert into RESERVATION (RV_NO,RV_DATE,CT_NO,RV_PH,EMP_NO,RV_COLOR,RV_CON) values (11,to_date('20/02/07','RR/MM/DD'),1,'1123',1,'#D25565','체크');
REM INSERTING into SALE
SET DEFINE OFF;
Insert into SALE (SAL_NO,SAL_DATE,CT_NO,EMP_NO,IT_NO,SAL_CNT,SAL_MONEY_TYPE,SAL_AMT,SAL_MEMO,PT_NO) values (1,to_date('20/02/07','RR/MM/DD'),1,1,1,2,'현금',20000,null,1);
REM INSERTING into SCHEDULE
SET DEFINE OFF;
Insert into SCHEDULE (SCD_NO,SCD_SDATE,SCD_EDATE,EMP_NO,SCD_COLOR,SCD_CON) values (5,to_date('20/01/26','RR/MM/DD'),to_date('20/01/27','RR/MM/DD'),1,'#a9e34b','초록');
Insert into SCHEDULE (SCD_NO,SCD_SDATE,SCD_EDATE,EMP_NO,SCD_COLOR,SCD_CON) values (1,to_date('20/01/29','RR/MM/DD'),to_date('20/01/31','RR/MM/DD'),1,'BLUE','테스트');
Insert into SCHEDULE (SCD_NO,SCD_SDATE,SCD_EDATE,EMP_NO,SCD_COLOR,SCD_CON) values (8,to_date('20/02/06','RR/MM/DD'),to_date('20/02/07','RR/MM/DD'),1,'#D25565','1214');
Insert into SCHEDULE (SCD_NO,SCD_SDATE,SCD_EDATE,EMP_NO,SCD_COLOR,SCD_CON) values (3,to_date('20/02/04','RR/MM/DD'),to_date('20/02/07','RR/MM/DD'),1,'#D25565','테스트1');
REM INSERTING into STOCK
SET DEFINE OFF;
REM INSERTING into WAREHOUSING
SET DEFINE OFF;
Insert into WAREHOUSING (WH_NO,WH_DATE,IT_NO,WH_PRICE,CP_NO,WH_MEMO,WH_CNT,WH_GROUP_NM,WH_UNIT) values (1,to_date('20/02/01','RR/MM/DD'),null,200000,1,null,1,null,1);
Insert into WAREHOUSING (WH_NO,WH_DATE,IT_NO,WH_PRICE,CP_NO,WH_MEMO,WH_CNT,WH_GROUP_NM,WH_UNIT) values (2,to_date('20/02/02','RR/MM/DD'),null,50000,1,null,2,null,1);
--------------------------------------------------------
--  DDL for Index ACCOUNT_CODE_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCOUNT_CODE_PK1" ON "ACCOUNT_CODE" ("AC_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ATTENDANCE_MANAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATTENDANCE_MANAGE_PK" ON "ATTENDANCE_MANAGE" ("AM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index AT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AT_TYPE_PK" ON "AT_TYPE" ("PCC_NO") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKS_PK" ON "BOOKS" ("BK_NO") 
  ;
--------------------------------------------------------
--  DDL for Index COMPANY_CODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMPANY_CODE_PK" ON "COMPANY_CODE" ("CP_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_GRADE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMER_GRADE_PK" ON "CUSTOMER_GRADE" ("GRADE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMER_PK" ON "CUSTOMER" ("CT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_GRADE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEE_GRADE_PK" ON "EMPLOYEE_GRADE" ("GRADE_NO", "GRADE_LEVEL") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_GRADE_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEE_GRADE_PK1" ON "EMPLOYEE_GRADE" ("GRADE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEE_PK" ON "EMPLOYEE" ("EMP_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ITEM_CODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ITEM_CODE_PK" ON "ITEM_CODE" ("IT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ITEM_GROPU_CODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ITEM_GROPU_CODE_PK" ON "ITEM_GROPU_CODE" ("IGC_DNO") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBERS_PK" ON "MEMBER" ("MEM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MENU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MENU_PK" ON "MENU" ("MENU_NO") 
  ;
--------------------------------------------------------
--  DDL for Index POINT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "POINT_PK" ON "POINT" ("PT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PROCEDURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROCEDURE_PK" ON "PROCEDURE" ("PROC_NO") 
  ;
--------------------------------------------------------
--  DDL for Index RELEASE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RELEASE_PK" ON "RELEASE" ("RE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("RV_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SALE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SALE_PK" ON "SALE" ("SAL_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SCHEDULE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCHEDULE_PK" ON "SCHEDULE" ("SCD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK_PK" ON "STOCK" ("ST_NO") 
  ;
--------------------------------------------------------
--  DDL for Index WAREHOUSING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WAREHOUSING_PK" ON "WAREHOUSING" ("WH_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT_CODE
--------------------------------------------------------

  ALTER TABLE "ACCOUNT_CODE" ADD CONSTRAINT "ACCOUNT_CODE_PK" PRIMARY KEY ("AC_NO") ENABLE;
  ALTER TABLE "ACCOUNT_CODE" MODIFY ("AC_NO" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT_CODE" MODIFY ("AC_TYPE" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT_CODE" MODIFY ("AC_NM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTENDANCE_MANAGE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE_MANAGE" ADD CONSTRAINT "ATTENDANCE_MANAGE_PK" PRIMARY KEY ("AM_NO") ENABLE;
  ALTER TABLE "ATTENDANCE_MANAGE" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE_MANAGE" MODIFY ("AM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AT_TYPE
--------------------------------------------------------

  ALTER TABLE "AT_TYPE" MODIFY ("PCC_NO" NOT NULL ENABLE);
  ALTER TABLE "AT_TYPE" ADD CONSTRAINT "AT_TYPE_PK" PRIMARY KEY ("PCC_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS" MODIFY ("BK_REM" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_VAT" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_NO" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_DATE" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("ACC_NO" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_SP" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_CON" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_CNT" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" MODIFY ("BK_AMT" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" ADD CONSTRAINT "BOOKS_PK" PRIMARY KEY ("BK_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMON_CODE
--------------------------------------------------------

  ALTER TABLE "COMMON_CODE" MODIFY ("CODE_M_CATE" NOT NULL ENABLE);
  ALTER TABLE "COMMON_CODE" MODIFY ("CODE_S_CATE" NOT NULL ENABLE);
  ALTER TABLE "COMMON_CODE" MODIFY ("CODE_NAME" NOT NULL ENABLE);
  ALTER TABLE "COMMON_CODE" MODIFY ("CODE_L_CATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY_CODE
--------------------------------------------------------

  ALTER TABLE "COMPANY_CODE" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "COMPANY_CODE" MODIFY ("CP_NO" NOT NULL ENABLE);
  ALTER TABLE "COMPANY_CODE" ADD CONSTRAINT "COMPANY_CODE_PK" PRIMARY KEY ("CP_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" MODIFY ("CT_NO" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" MODIFY ("CT_NM" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" MODIFY ("CT_GRADE_NO" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("CT_NO") ENABLE;
  ALTER TABLE "CUSTOMER" MODIFY ("PT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER_GRADE
--------------------------------------------------------

  ALTER TABLE "CUSTOMER_GRADE" MODIFY ("GRADE_NM" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_GRADE" MODIFY ("GRADE_NO" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_GRADE" MODIFY ("GRADE_LEVEL" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMER_GRADE" ADD CONSTRAINT "CUSTOMER_GRADE_PK" PRIMARY KEY ("GRADE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" MODIFY ("DEL_YN" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("GRADE_NO" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMP_NM" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_PK" PRIMARY KEY ("EMP_NO") ENABLE;
  ALTER TABLE "EMPLOYEE" MODIFY ("EMP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE_GRADE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE_GRADE" ADD CONSTRAINT "EMPLOYEE_GRADE_PK" PRIMARY KEY ("GRADE_NO") ENABLE;
  ALTER TABLE "EMPLOYEE_GRADE" MODIFY ("GRADE_NO" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE_GRADE" MODIFY ("GRADE_LEVEL" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE_GRADE" MODIFY ("GRADE_NM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEM_CODE
--------------------------------------------------------

  ALTER TABLE "ITEM_CODE" ADD CONSTRAINT "ITEM_CODE_PK" PRIMARY KEY ("IT_NO") ENABLE;
  ALTER TABLE "ITEM_CODE" MODIFY ("IT_DATE" NOT NULL ENABLE);
  ALTER TABLE "ITEM_CODE" MODIFY ("IT_NM" NOT NULL ENABLE);
  ALTER TABLE "ITEM_CODE" MODIFY ("IT_NO" NOT NULL ENABLE);
  ALTER TABLE "ITEM_CODE" MODIFY ("CP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEM_GROPU_CODE
--------------------------------------------------------

  ALTER TABLE "ITEM_GROPU_CODE" ADD CONSTRAINT "ITEM_GROPU_CODE_PK" PRIMARY KEY ("IGC_DNO") ENABLE;
  ALTER TABLE "ITEM_GROPU_CODE" MODIFY ("IGC_DNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("MEM_NO" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MEM_PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBERS_PK" PRIMARY KEY ("MEM_NO") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("MEM_2PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "MENU" MODIFY ("MENU_DIV" NOT NULL ENABLE);
  ALTER TABLE "MENU" ADD CONSTRAINT "MENU_PK" PRIMARY KEY ("MENU_NO") ENABLE;
  ALTER TABLE "MENU" MODIFY ("MENU_DEPTH" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("MENU_NAME" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("MENU_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POINT
--------------------------------------------------------

  ALTER TABLE "POINT" MODIFY ("DEL_YN" NOT NULL ENABLE);
  ALTER TABLE "POINT" ADD CONSTRAINT "POINT_PK" PRIMARY KEY ("PT_NO") ENABLE;
  ALTER TABLE "POINT" MODIFY ("CT_NO" NOT NULL ENABLE);
  ALTER TABLE "POINT" MODIFY ("PT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROCEDURE
--------------------------------------------------------

  ALTER TABLE "PROCEDURE" MODIFY ("PT_NO" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE" ADD CONSTRAINT "PROCEDURE_PK" PRIMARY KEY ("PROC_NO") ENABLE;
  ALTER TABLE "PROCEDURE" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE" MODIFY ("CT_NO" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE" MODIFY ("PROC_DATE" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE" MODIFY ("PROC_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROCEDURE_CODE
--------------------------------------------------------

  ALTER TABLE "PROCEDURE_CODE" MODIFY ("PCC_CASH_PT" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE_CODE" MODIFY ("PCC_CARD_PT" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE_CODE" MODIFY ("PCC_L_CATE" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE_CODE" MODIFY ("PCC_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROCEDURE_CODE" MODIFY ("PCC_S_CATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RELEASE
--------------------------------------------------------

  ALTER TABLE "RELEASE" ADD CONSTRAINT "RELEASE_PK" PRIMARY KEY ("RE_NO") ENABLE;
  ALTER TABLE "RELEASE" MODIFY ("CP_NO" NOT NULL ENABLE);
  ALTER TABLE "RELEASE" MODIFY ("IT_NO" NOT NULL ENABLE);
  ALTER TABLE "RELEASE" MODIFY ("RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" MODIFY ("RV_CON" NOT NULL ENABLE);
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RV_NO") ENABLE;
  ALTER TABLE "RESERVATION" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "RESERVATION" MODIFY ("CT_NO" NOT NULL ENABLE);
  ALTER TABLE "RESERVATION" MODIFY ("RV_DATE" NOT NULL ENABLE);
  ALTER TABLE "RESERVATION" MODIFY ("RV_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "SALE" MODIFY ("PT_NO" NOT NULL ENABLE);
  ALTER TABLE "SALE" ADD CONSTRAINT "SALE_PK" PRIMARY KEY ("SAL_NO") ENABLE;
  ALTER TABLE "SALE" MODIFY ("SAL_AMT" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("SAL_MONEY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("SAL_CNT" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("IT_NO" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("CT_NO" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("SAL_DATE" NOT NULL ENABLE);
  ALTER TABLE "SALE" MODIFY ("SAL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "SCHEDULE_PK" PRIMARY KEY ("SCD_NO") ENABLE;
  ALTER TABLE "SCHEDULE" MODIFY ("SCD_CON" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCD_COLOR" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("EMP_NO" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCD_SDATE" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("ST_NO") ENABLE;
  ALTER TABLE "STOCK" MODIFY ("CP_NO" NOT NULL ENABLE);
  ALTER TABLE "STOCK" MODIFY ("IT_NO" NOT NULL ENABLE);
  ALTER TABLE "STOCK" MODIFY ("ST_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WAREHOUSING
--------------------------------------------------------

  ALTER TABLE "WAREHOUSING" MODIFY ("WH_CNT" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSING" MODIFY ("WH_PRICE" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSING" MODIFY ("WH_DATE" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSING" MODIFY ("WH_UNIT" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSING" ADD CONSTRAINT "WAREHOUSING_PK" PRIMARY KEY ("WH_NO") ENABLE;
  ALTER TABLE "WAREHOUSING" MODIFY ("WH_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ATTENDANCE_MANAGE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE_MANAGE" ADD CONSTRAINT "ATTENDANCE_MANAGE_FK1" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPANY_CODE
--------------------------------------------------------

  ALTER TABLE "COMPANY_CODE" ADD CONSTRAINT "COMPANY_CODE_FK1" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_FK1" FOREIGN KEY ("CT_GRADE_NO")
	  REFERENCES "CUSTOMER_GRADE" ("GRADE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_FK2" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_FK3" FOREIGN KEY ("SAL_NO")
	  REFERENCES "SALE" ("SAL_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_FK4" FOREIGN KEY ("PROC_NO")
	  REFERENCES "PROCEDURE" ("PROC_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUSTOMER_FK5" FOREIGN KEY ("PT_NO")
	  REFERENCES "POINT" ("PT_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_FK1" FOREIGN KEY ("GRADE_NO")
	  REFERENCES "EMPLOYEE_GRADE" ("GRADE_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEM_CODE
--------------------------------------------------------

  ALTER TABLE "ITEM_CODE" ADD CONSTRAINT "ITEM_CODE_FK1" FOREIGN KEY ("CP_NO")
	  REFERENCES "COMPANY_CODE" ("CP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "MENU" ADD CONSTRAINT "MENU_FK1" FOREIGN KEY ("MENU_NO")
	  REFERENCES "MENU" ("MENU_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POINT
--------------------------------------------------------

  ALTER TABLE "POINT" ADD CONSTRAINT "POINT_FK1" FOREIGN KEY ("CT_NO")
	  REFERENCES "CUSTOMER" ("CT_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROCEDURE
--------------------------------------------------------

  ALTER TABLE "PROCEDURE" ADD CONSTRAINT "PROCEDURE_FK1" FOREIGN KEY ("CT_NO")
	  REFERENCES "CUSTOMER" ("CT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROCEDURE" ADD CONSTRAINT "PROCEDURE_FK2" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROCEDURE" ADD CONSTRAINT "PROCEDURE_FK3" FOREIGN KEY ("PT_NO")
	  REFERENCES "POINT" ("PT_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RELEASE
--------------------------------------------------------

  ALTER TABLE "RELEASE" ADD CONSTRAINT "RELEASE_FK1" FOREIGN KEY ("IT_NO")
	  REFERENCES "ITEM_CODE" ("IT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RELEASE" ADD CONSTRAINT "RELEASE_FK2" FOREIGN KEY ("CP_NO")
	  REFERENCES "COMPANY_CODE" ("CP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_FK1" FOREIGN KEY ("CT_NO")
	  REFERENCES "CUSTOMER" ("CT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_FK2" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "SALE" ADD CONSTRAINT "SALE_FK1" FOREIGN KEY ("CT_NO")
	  REFERENCES "CUSTOMER" ("CT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SALE" ADD CONSTRAINT "SALE_FK2" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SALE" ADD CONSTRAINT "SALE_FK3" FOREIGN KEY ("IT_NO")
	  REFERENCES "ITEM_CODE" ("IT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SALE" ADD CONSTRAINT "SALE_FK4" FOREIGN KEY ("PT_NO")
	  REFERENCES "POINT" ("PT_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "SCHEDULE_FK1" FOREIGN KEY ("EMP_NO")
	  REFERENCES "EMPLOYEE" ("EMP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "STOCK" ADD CONSTRAINT "STOCK_FK1" FOREIGN KEY ("IT_NO")
	  REFERENCES "ITEM_CODE" ("IT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "STOCK" ADD CONSTRAINT "STOCK_FK2" FOREIGN KEY ("CP_NO")
	  REFERENCES "COMPANY_CODE" ("CP_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WAREHOUSING
--------------------------------------------------------

  ALTER TABLE "WAREHOUSING" ADD CONSTRAINT "WAREHOUSING_FK1" FOREIGN KEY ("IT_NO")
	  REFERENCES "ITEM_CODE" ("IT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "WAREHOUSING" ADD CONSTRAINT "WAREHOUSING_FK2" FOREIGN KEY ("CP_NO")
	  REFERENCES "COMPANY_CODE" ("CP_NO") ON DELETE CASCADE ENABLE;
