--------------------------------------------------------
--  Datei erstellt -Sonntag-Mai-19-2019   
--------------------------------------------------------
DROP TABLE "FLUGZEUGVERMIETUNG"."ADR_ADDRESS" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."ADR_CITY" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."ADR_COUNTRY" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."ARP_AIRPORT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."CST_CUSTOMER" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT_TYPE" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."INV_INVOICE" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."MDT_MANDANT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."PAY_PAYMENT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT" cascade constraints;
DROP TABLE "FLUGZEUGVERMIETUNG"."RES_RESERVATION" cascade constraints;
--------------------------------------------------------
--  DDL for Table ADR_ADDRESS
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."ADR_ADDRESS" 
   (	"PK_ADR_ADDRESS" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"STREET" VARCHAR2(4000 BYTE), 
	"STREET_NO" VARCHAR2(20 BYTE), 
	"ZIP_CODE" VARCHAR2(20 BYTE), 
	"FK_CITY" NUMBER, 
	"FK_COUNTRY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table ADR_CITY
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."ADR_CITY" 
   (	"PK_ADR_CITY" NUMBER, 
	"CITY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table ADR_COUNTRY
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."ADR_COUNTRY" 
   (	"PK_ADR_COUNTRY" NUMBER, 
	"COUNTRY" VARCHAR2(4000 BYTE), 
	"PHONE_CODE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table APL_PLANE
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE" 
   (	"PK_APL_PLANE" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"PLANE_NO" VARCHAR2(20 BYTE), 
	"IMAGE" BLOB, 
	"FK_APL_PLANE_TYPE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" 
 LOB ("IMAGE") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table APL_PLANE_TYPE
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE" 
   (	"PK_APL_PLANE_TYPE" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"PLANE_TYPE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table ARP_AIRPORT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."ARP_AIRPORT" 
   (	"PK_ARP_AIRPORT" NUMBER, 
	"AIRPORT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table BAK_BANKACCOUNT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT" 
   (	"PK_BAK_BANKACCOUNT" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"BANK" VARCHAR2(20 BYTE), 
	"IBAN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table CST_CUSTOMER
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."CST_CUSTOMER" 
   (	"PK_CST_CUSTOMER" NUMBER, 
	"FK_MDT_MANDANT" VARCHAR2(20 BYTE), 
	"CUSTOMER_COMPANY_NAME" VARCHAR2(20 BYTE), 
	"CUSTOMER_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table DOC_DOCUMENT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT" 
   (	"PK_DOC_DOCUMENT" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"FK_DOC_DOCUMENT_TYPE" NUMBER, 
	"FK_DOC_USAGE_TYPE" NUMBER, 
	"DOCUMENT_TITLE" VARCHAR2(20 BYTE), 
	"DOCUMENT" BLOB, 
	"VALID" NUMBER, 
	"VALID_UNTIL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" 
 LOB ("DOCUMENT") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT"."FK_DOC_DOCUMENT_TYPE" IS 'BORDBOOK, CERTIFIKATE, CONTRACT';
   COMMENT ON COLUMN "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT"."FK_DOC_USAGE_TYPE" IS 'e.g. PLANE, PILOT, AIRPORT';
--------------------------------------------------------
--  DDL for Table DOC_DOCUMENT_TYPE
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT_TYPE" 
   (	"PK_DOC_DOCUMENT_TYPE" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"DOC_DOCUMENT_TYPE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table DOC_USAGE_TYPE
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE" 
   (	"PK_DOC_USAGE_TYPE" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"USAGE_TYPE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table GAL_GAIN_AND_LOSS
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS" 
   (	"PK_GAL_GAIN_AND_LOSS" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"VERSION" NUMBER, 
	"FIN_YEAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table INV_INVOICE
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."INV_INVOICE" 
   (	"PK_INV_INVOICE" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"FK_CST_CUSTOMER" NUMBER, 
	"INVOICE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table MDT_MANDANT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."MDT_MANDANT" 
   (	"PK_MDT_MANDANT" VARCHAR2(20 BYTE), 
	"MANDANT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PAY_PAYMENT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."PAY_PAYMENT" 
   (	"PK_PAY_PAYMENT" NUMBER, 
	"FK_MDT_MANDANT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table REL_CUSTOMER_ADRESS
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS" 
   (	"PK_REL_CUSTOMER_ADRESS" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"FK_CST_CUSTOMER" NUMBER, 
	"FK_ADR_ADDRESS" NUMBER, 
	"FK_ADR_COUNTRY" NUMBER, 
	"PHONE_NO" VARCHAR2(4000 BYTE), 
	"EMAIL" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;

   COMMENT ON COLUMN "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS"."FK_ADR_COUNTRY" IS 'PHONE PREFIX';
--------------------------------------------------------
--  DDL for Table REL_CUSTOMER_BANKACCOUNT
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT" 
   (	"PK_CUSTOMER_BANKACCOUNT" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"FK_BAK_BANKACCOUNT" NUMBER, 
	"VALID" NUMBER, 
	"VALID_FROM" DATE, 
	"VALID_TO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table RES_RESERVATION
--------------------------------------------------------

  CREATE TABLE "FLUGZEUGVERMIETUNG"."RES_RESERVATION" 
   (	"PK_RES_RESERVATION" NUMBER, 
	"FK_MDT_MANDANT" NUMBER, 
	"FROM_DATE" DATE, 
	"TO_DATE" DATE, 
	"VALID" NUMBER, 
	"VALID_FROM" DATE, 
	"VALID_TO" DATE, 
	"FK_MAI_STATE" DATE, 
	"CREATED_AT" DATE, 
	"CREATED_BY" VARCHAR2(20 BYTE), 
	"COLUMN1" DATE, 
	"COLUMN2" VARCHAR2(20 BYTE), 
	"FK_APL_PLANE" NUMBER, 
	"FK_CST_CUSTOMER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index ADR_CITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."ADR_CITY_PK" ON "FLUGZEUGVERMIETUNG"."ADR_CITY" ("PK_ADR_CITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index ADRESSEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."ADRESSEN_PK" ON "FLUGZEUGVERMIETUNG"."ADR_ADDRESS" ("PK_ADR_ADDRESS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index ARP_AIRPORT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."ARP_AIRPORT_PK" ON "FLUGZEUGVERMIETUNG"."ARP_AIRPORT" ("PK_ARP_AIRPORT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index APL_PLANE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE_PK" ON "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE" ("PK_APL_PLANE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index GAL_GAIN_AND_LOSS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS_PK" ON "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS" ("PK_GAL_GAIN_AND_LOSS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index MANDANT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."MANDANT_PK" ON "FLUGZEUGVERMIETUNG"."MDT_MANDANT" ("PK_MDT_MANDANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index INV_INVOICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."INV_INVOICE_PK" ON "FLUGZEUGVERMIETUNG"."INV_INVOICE" ("PK_INV_INVOICE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index PAY_PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."PAY_PAYMENT_PK" ON "FLUGZEUGVERMIETUNG"."PAY_PAYMENT" ("PK_PAY_PAYMENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index DOC_DOCUMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."DOC_DOCUMENTS_PK" ON "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT" ("PK_DOC_DOCUMENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index REL_CUSTOMER_BANKACCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT_PK" ON "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT" ("PK_CUSTOMER_BANKACCOUNT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index DOC_USAGE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE_PK" ON "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE" ("PK_DOC_USAGE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index APL_PLANE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."APL_PLANE_PK" ON "FLUGZEUGVERMIETUNG"."APL_PLANE" ("PK_APL_PLANE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index DOC__PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."DOC__PK" ON "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT_TYPE" ("PK_DOC_DOCUMENT_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index ADR_COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."ADR_COUNTRY_PK" ON "FLUGZEUGVERMIETUNG"."ADR_COUNTRY" ("PK_ADR_COUNTRY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index RES_RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."RES_RESERVATION_PK" ON "FLUGZEUGVERMIETUNG"."RES_RESERVATION" ("PK_RES_RESERVATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index REL_CUSTOMER_ADRESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS_PK" ON "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS" ("PK_REL_CUSTOMER_ADRESS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index BAK_BANKACCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT_PK" ON "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT" ("PK_BAK_BANKACCOUNT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Index CST_CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLUGZEUGVERMIETUNG"."CST_CUSTOMER_PK" ON "FLUGZEUGVERMIETUNG"."CST_CUSTOMER" ("PK_CST_CUSTOMER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  Constraints for Table INV_INVOICE
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."INV_INVOICE" ADD CONSTRAINT "INV_INVOICE_PK" PRIMARY KEY ("PK_INV_INVOICE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."INV_INVOICE" MODIFY ("PK_INV_INVOICE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APL_PLANE
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE" ADD CONSTRAINT "APL_PLANE_PK" PRIMARY KEY ("PK_APL_PLANE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE" MODIFY ("PK_APL_PLANE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARP_AIRPORT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."ARP_AIRPORT" ADD CONSTRAINT "ARP_AIRPORT_PK" PRIMARY KEY ("PK_ARP_AIRPORT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."ARP_AIRPORT" MODIFY ("PK_ARP_AIRPORT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CST_CUSTOMER
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."CST_CUSTOMER" ADD CONSTRAINT "CST_CUSTOMER_PK" PRIMARY KEY ("PK_CST_CUSTOMER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."CST_CUSTOMER" MODIFY ("PK_CST_CUSTOMER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADR_COUNTRY
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_COUNTRY" ADD CONSTRAINT "ADR_COUNTRY_PK" PRIMARY KEY ("PK_ADR_COUNTRY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_COUNTRY" MODIFY ("PK_ADR_COUNTRY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAK_BANKACCOUNT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT" ADD CONSTRAINT "BAK_BANKACCOUNT_PK" PRIMARY KEY ("PK_BAK_BANKACCOUNT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."BAK_BANKACCOUNT" MODIFY ("PK_BAK_BANKACCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MDT_MANDANT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."MDT_MANDANT" ADD CONSTRAINT "MANDANT_PK" PRIMARY KEY ("PK_MDT_MANDANT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."MDT_MANDANT" MODIFY ("PK_MDT_MANDANT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADR_ADDRESS
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_ADDRESS" ADD CONSTRAINT "ADRESSEN_PK" PRIMARY KEY ("PK_ADR_ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_ADDRESS" MODIFY ("PK_ADR_ADDRESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAL_GAIN_AND_LOSS
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS" ADD CONSTRAINT "GAL_GAIN_AND_LOSS_PK" PRIMARY KEY ("PK_GAL_GAIN_AND_LOSS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."GAL_GAIN_AND_LOSS" MODIFY ("PK_GAL_GAIN_AND_LOSS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOC_USAGE_TYPE
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE" ADD CONSTRAINT "DOC_USAGE_TYPE_PK" PRIMARY KEY ("PK_DOC_USAGE_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_USAGE_TYPE" MODIFY ("PK_DOC_USAGE_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADR_CITY
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_CITY" ADD CONSTRAINT "ADR_CITY_PK" PRIMARY KEY ("PK_ADR_CITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."ADR_CITY" MODIFY ("PK_ADR_CITY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RES_RESERVATION
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."RES_RESERVATION" ADD CONSTRAINT "RES_RESERVATION_PK" PRIMARY KEY ("PK_RES_RESERVATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."RES_RESERVATION" MODIFY ("PK_RES_RESERVATION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOC_DOCUMENT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT" ADD CONSTRAINT "DOC_DOCUMENTS_PK" PRIMARY KEY ("PK_DOC_DOCUMENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT" MODIFY ("PK_DOC_DOCUMENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REL_CUSTOMER_ADRESS
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS" ADD CONSTRAINT "REL_CUSTOMER_ADRESS_PK" PRIMARY KEY ("PK_REL_CUSTOMER_ADRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_ADRESS" MODIFY ("PK_REL_CUSTOMER_ADRESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAY_PAYMENT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."PAY_PAYMENT" ADD CONSTRAINT "PAY_PAYMENT_PK" PRIMARY KEY ("PK_PAY_PAYMENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."PAY_PAYMENT" MODIFY ("PK_PAY_PAYMENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOC_DOCUMENT_TYPE
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT_TYPE" ADD CONSTRAINT "DOC__PK" PRIMARY KEY ("PK_DOC_DOCUMENT_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."DOC_DOCUMENT_TYPE" MODIFY ("PK_DOC_DOCUMENT_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APL_PLANE_TYPE
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE" ADD CONSTRAINT "APL_PLANE_TYPE_PK" PRIMARY KEY ("PK_APL_PLANE_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."APL_PLANE_TYPE" MODIFY ("PK_APL_PLANE_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REL_CUSTOMER_BANKACCOUNT
--------------------------------------------------------

  ALTER TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT" ADD CONSTRAINT "REL_CUSTOMER_BANKACCOUNT_PK" PRIMARY KEY ("PK_CUSTOMER_BANKACCOUNT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01"  ENABLE;
  ALTER TABLE "FLUGZEUGVERMIETUNG"."REL_CUSTOMER_BANKACCOUNT" MODIFY ("PK_CUSTOMER_BANKACCOUNT" NOT NULL ENABLE);
