--------------------------------------------------------
--  Datei erstellt -Montag-Mai-20-2019   
--------------------------------------------------------
DROP TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_DUMMY_1";
DROP TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_33_1";
DROP TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_9_1";
DROP TABLE "STAMMBAUM2"."BILDER" cascade constraints;
DROP TABLE "STAMMBAUM2"."BILDER_TAB" cascade constraints;
DROP TABLE "STAMMBAUM2"."DEMO_CONSTRAINT_LOOKUP" cascade constraints;
DROP TABLE "STAMMBAUM2"."ELTERN" cascade constraints;
DROP TABLE "STAMMBAUM2"."EMP" cascade constraints;
DROP TABLE "STAMMBAUM2"."FAMILIE" cascade constraints;
DROP TABLE "STAMMBAUM2"."FAMILIE_BILD" cascade constraints;
DROP TABLE "STAMMBAUM2"."GESCHWISTER" cascade constraints;
DROP TABLE "STAMMBAUM2"."LEBENSPARTNER" cascade constraints;
DROP TABLE "STAMMBAUM2"."LEBENSPARTNER_BILD" cascade constraints;
DROP TABLE "STAMMBAUM2"."ORT" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON_BERUF" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON_BILD" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON_FAMILIE" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON_RELIGION" cascade constraints;
DROP TABLE "STAMMBAUM2"."PERSON_WOHNORT" cascade constraints;
DROP TABLE "STAMMBAUM2"."TEST" cascade constraints;
DROP TABLE "STAMMBAUM2"."TREE_TAB" cascade constraints;
DROP VIEW "STAMMBAUM2"."V_DISP_GESCHWISTER";
DROP VIEW "STAMMBAUM2"."V_DISP_GESCHWISTER_PERS";
DROP VIEW "STAMMBAUM2"."V_DISP_LEBENSPARTNER";
DROP VIEW "STAMMBAUM2"."V_PERS_DAT_PRÜF";
DROP PACKAGE "STAMMBAUM2"."CREATE_TREE2";
DROP PACKAGE "STAMMBAUM2"."EDIT_DATA";
DROP PACKAGE BODY "STAMMBAUM2"."CREATE_TREE2";
DROP PACKAGE BODY "STAMMBAUM2"."EDIT_DATA";
--------------------------------------------------------
--  DDL for Type SYS_PLSQL_CBDC66EC_DUMMY_1
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_DUMMY_1" as table of number;

/
--------------------------------------------------------
--  DDL for Type SYS_PLSQL_CBDC66EC_33_1
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_33_1" as table of "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_9_1";

/
--------------------------------------------------------
--  DDL for Type SYS_PLSQL_CBDC66EC_9_1
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STAMMBAUM2"."SYS_PLSQL_CBDC66EC_9_1" as object (PERS NUMBER(10),
LEV NUMBER,
STAMM VARCHAR2(32000 BYTE));

/
--------------------------------------------------------
--  DDL for Table BILDER
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."BILDER" 
   (	"PK_BILDER" NUMBER, 
	"FILECONTENT" BLOB, 
	"FILENAME" VARCHAR2(4000 BYTE), 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"CREATION_DATE" DATE, 
	"THUMBNAIL" BLOB, 
	"H_PX" NUMBER, 
	"W_PX" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" 
 LOB ("FILECONTENT") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("THUMBNAIL") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table BILDER_TAB
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."BILDER_TAB" 
   (	"ID" NUMBER(10,0), 
	"BILD" BLOB, 
	"THUMBNAIL" BLOB, 
	"BREITE_PX" NUMBER(5,0), 
	"HOEHE_PX" NUMBER(5,0), 
	"DATEINAME" VARCHAR2(4000 BYTE), 
	"DUMMY_BILD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" 
 LOB ("BILD") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("THUMBNAIL") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table DEMO_CONSTRAINT_LOOKUP
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."DEMO_CONSTRAINT_LOOKUP" 
   (	"CONSTRAINT_NAME" VARCHAR2(30 BYTE), 
	"MESSAGE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table ELTERN
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."ELTERN" 
   (	"PK_ELTERN" NUMBER(10,0), 
	"FK_ELTERN" NUMBER(10,0), 
	"FK_KIND" NUMBER(10,0), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."EMP" 
   (	"EMPNO" NUMBER(4,0), 
	"ENAME" VARCHAR2(10 BYTE), 
	"JOB" VARCHAR2(9 BYTE), 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table FAMILIE
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."FAMILIE" 
   (	"PK_FAMILIE" NUMBER(10,0), 
	"FAMILIE" VARCHAR2(255 CHAR), 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"CREATION_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table FAMILIE_BILD
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."FAMILIE_BILD" 
   (	"FK_BILD" NUMBER, 
	"FK_FAMILIE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table GESCHWISTER
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."GESCHWISTER" 
   (	"PK_GESCHWISTER" NUMBER(10,0), 
	"FK_PERSON" NUMBER(10,0), 
	"FK_GESCHWISTER" NUMBER(10,0), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table LEBENSPARTNER
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."LEBENSPARTNER" 
   (	"PK_LEBENSPARTNER" NUMBER(10,0), 
	"FK_PERSON" NUMBER(10,0), 
	"FK_LEBENSPARTNER" NUMBER(10,0), 
	"STATUS" VARCHAR2(255 CHAR), 
	"DATUM_STANDESAMTLICH" DATE, 
	"STANDESAMT" VARCHAR2(255 CHAR), 
	"DATUM_KIRCHLICH" DATE, 
	"KIRCHE" VARCHAR2(255 CHAR), 
	"FK_ORT" NUMBER(10,0), 
	"KOMMENTAR" VARCHAR2(255 CHAR), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table LEBENSPARTNER_BILD
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."LEBENSPARTNER_BILD" 
   (	"FK_BILD" NUMBER, 
	"FK_LEBENSPARTNER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table ORT
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."ORT" 
   (	"PK_ORT" NUMBER(10,0), 
	"ORT" VARCHAR2(255 CHAR), 
	"LAND" VARCHAR2(255 CHAR), 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"CREATION_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON" 
   (	"PK_PERSON" NUMBER(10,0), 
	"NAME" VARCHAR2(255 CHAR), 
	"VORNAME" VARCHAR2(255 CHAR), 
	"GESCHLECHT" VARCHAR2(255 CHAR), 
	"GEBOREN_AM" DATE, 
	"GESTORBEN_AM" DATE, 
	"FK_GEBURTSORT" NUMBER(10,0), 
	"BESCHREIBUNG" CLOB, 
	"GEBURTSNAME" VARCHAR2(255 CHAR), 
	"TITEL" VARCHAR2(255 CHAR), 
	"ADELSTITEL" VARCHAR2(255 CHAR), 
	"FK_STERBEORT" NUMBER(10,0), 
	"RUFNAME" VARCHAR2(255 CHAR), 
	"NR_AHNENTAFEL" NUMBER(10,0), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" 
 LOB ("BESCHREIBUNG") STORE AS BASICFILE (
  TABLESPACE "USER01" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PERSON_BERUF
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON_BERUF" 
   (	"PK_PERSON_BERUF" NUMBER(10,0), 
	"BERUF" VARCHAR2(255 CHAR), 
	"FK_PERSON" NUMBER(10,0), 
	"KOMMENTAR" VARCHAR2(255 CHAR), 
	"REIHENFOLGE" NUMBER(10,0), 
	"VON" DATE, 
	"BIS" DATE, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PERSON_BILD
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON_BILD" 
   (	"FK_PERSON" NUMBER, 
	"FK_BILD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PERSON_FAMILIE
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON_FAMILIE" 
   (	"PK_PERSON_FAMILIE" NUMBER(10,0), 
	"FK_FAMILIE" NUMBER(10,0), 
	"FK_PERSON" NUMBER(10,0), 
	"KOMMENTAR" VARCHAR2(255 CHAR), 
	"HERKUNFT" VARCHAR2(255 CHAR), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PERSON_RELIGION
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON_RELIGION" 
   (	"PK_PERSON_RELIGION" NUMBER(10,0), 
	"RELIGION" VARCHAR2(255 CHAR), 
	"FK_PERSON" NUMBER(10,0), 
	"STATUS" VARCHAR2(255 CHAR), 
	"AUSGETRETEN_AM" DATE, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table PERSON_WOHNORT
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."PERSON_WOHNORT" 
   (	"PK_PERSON_WOHNORT" NUMBER(10,0), 
	"FK_WOHNORT" NUMBER(10,0), 
	"FK_PERSON" NUMBER(10,0), 
	"KOMMENTAR" VARCHAR2(255 CHAR), 
	"REIHENFOLGE" NUMBER(10,0), 
	"VON" DATE, 
	"BIS" DATE, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"MODIFY_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."TEST" 
   (	"INHALTE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for Table TREE_TAB
--------------------------------------------------------

  CREATE TABLE "STAMMBAUM2"."TREE_TAB" 
   (	"VORG_LEV_ID" NUMBER, 
	"VORG_LEV_SUB_ID" NUMBER, 
	"ACT_LEV_ID" NUMBER, 
	"ACT_LEV_SUB_ID" NUMBER, 
	"NACHF_LEV_ID" NUMBER, 
	"NACHF_LEV_SUB_ID" NUMBER, 
	"LEAF_VALUE" NUMBER, 
	"VORG_LEAF_VALUE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USER01" ;
--------------------------------------------------------
--  DDL for View V_DISP_GESCHWISTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STAMMBAUM2"."V_DISP_GESCHWISTER" ("PK_GESCHWISTER", "PK_GESCHWISTER_DISPLAY", "TITEL", "FK_GESCHWISTER", "FK_PERSON", "CREATION_DATE", "CREATED_BY", "MODIFY_DATE", "MODIFIED_BY", "NAME", "VORNAME", "GESCHLECHT", "NR_AHNENTAFEL", "GEBOREN_AM", "GESTORBEN_AM", "BESCHREIBUNG", "RUFNAME", "GEBURTSNAME", "GEBURTSORT", "GEBURTSLAND", "STERBEORT", "STERBELAND") AS 
  SELECT
 G."PK_GESCHWISTER",
 G."PK_GESCHWISTER" PK_GESCHWISTER_DISPLAY,
 P.TITEL,
 G."FK_GESCHWISTER",
 G.FK_PERSON || ' ' "FK_PERSON",
 G."CREATION_DATE",
 G."CREATED_BY",
 G."MODIFY_DATE",
 G."MODIFIED_BY",
 P.NAME,
 P.VORNAME,
 P.GESCHLECHT,
 P.NR_AHNENTAFEL,
 P.GEBOREN_AM,
 P.GESTORBEN_AM,
 to_CHAR(SUBSTR(P.BESCHREIBUNG,1,2000)) BESCHREIBUNG,
 P.RUFNAME,
 P.GEBURTSNAME,
 GO.ORT GEBURTSORT,
 GO.LAND GEBURTSLAND,
 SO.ORT STERBEORT,
 SO.LAND STERBELAND
from "GESCHWISTER" G
  LEFT JOIN PERSON P ON P.PK_PERSON = G.FK_GESCHWISTER
  LEFT JOIN ORT GO ON GO.PK_ORT = P.FK_GEBURTSORT
  LEFT JOIN ORT SO ON SO.PK_ORT = P.FK_STERBEORT
;
--------------------------------------------------------
--  DDL for View V_DISP_GESCHWISTER_PERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STAMMBAUM2"."V_DISP_GESCHWISTER_PERS" ("PK_GESCHWISTER", "PK_GESCHWISTER_DISPLAY", "TITEL", "FK_GESCHWISTER", "FK_PERSON", "CREATION_DATE", "CREATED_BY", "MODIFY_DATE", "MODIFIED_BY", "NAME", "VORNAME", "GESCHLECHT", "NR_AHNENTAFEL", "GEBOREN_AM", "GESTORBEN_AM", "BESCHREIBUNG", "RUFNAME", "GEBURTSNAME", "GEBURTSORT", "GEBURTSLAND", "STERBEORT", "STERBELAND") AS 
  SELECT
 G."PK_GESCHWISTER",
 G."PK_GESCHWISTER" PK_GESCHWISTER_DISPLAY,
 P.TITEL,
 G."FK_GESCHWISTER",
 G.FK_PERSON || ' ' "FK_PERSON",
 G."CREATION_DATE",
 G."CREATED_BY",
 G."MODIFY_DATE",
 G."MODIFIED_BY",
 P.NAME,
 P.VORNAME,
 P.GESCHLECHT,
 P.NR_AHNENTAFEL,
 P.GEBOREN_AM,
 P.GESTORBEN_AM,
 SUBSTR(P.BESCHREIBUNG,1,2000) BESCHREIBUNG,
 P.RUFNAME,
 P.GEBURTSNAME,
 GO.ORT GEBURTSORT,
 GO.LAND GEBURTSLAND,
 SO.ORT STERBEORT,
 SO.LAND STERBELAND
from "GESCHWISTER" G
  LEFT JOIN PERSON P ON P.PK_PERSON = G.FK_PERSON
  LEFT JOIN ORT GO ON GO.PK_ORT = P.FK_GEBURTSORT
  LEFT JOIN ORT SO ON SO.PK_ORT = P.FK_STERBEORT
;
--------------------------------------------------------
--  DDL for View V_DISP_LEBENSPARTNER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STAMMBAUM2"."V_DISP_LEBENSPARTNER" ("LEBENSPARTNER_ID", "PK_PERSON", "NAME", "VORNAME", "GESCHLECHT", "GEBOREN_AM", "GESTORBEN_AM", "FK_GEBURTSORT", "GEBURTSNAME", "TITEL", "ADELSTITEL", "FK_STERBEORT", "RUFNAME", "NR_AHNENTAFEL", "STATUS", "DATUM_STANDESAMTLICH", "STANDESAMT", "DATUM_KIRCHLICH", "KIRCHE", "KOMMENTAR", "FK_ORT", "ORT", "LAND") AS 
  with lb as (
Select lb.pk_lebenspartner as lebenspartner_id
, p.pk_person
, p.NAME
, p.VORNAME
, p.GESCHLECHT
, p.GEBOREN_AM
, p.GESTORBEN_AM
, p.FK_GEBURTSORT
, p.GEBURTSNAME
, p.TITEL
, p.ADELSTITEL
, p.FK_STERBEORT
, p.RUFNAME
, p.NR_AHNENTAFEL
, lb.status
, lb.datum_standesamtlich
, lb.standesamt
, lb.datum_kirchlich
, lb.kirche
, lb.KOMMENTAR
, lb.fk_ort
, o.ort
, o.land
from Lebenspartner lb
 join Person p on lb.fk_lebenspartner = p.pk_person
 left join ort o on o.pk_ort = lb.fk_ort

Union
Select lb.pk_lebenspartner as lebenspartner_id	
, p.pk_person
, p.NAME
, p.VORNAME
, p.GESCHLECHT
, p.GEBOREN_AM
, p.GESTORBEN_AM
, p.fk_GEBURTSORT
, p.GEBURTSNAME
, p.TITEL
, p.ADELSTITEL
, p.fk_STERBEORT
, p.RUFNAME
, p.NR_AHNENTAFEL
, lb.status
, lb.datum_standesamtlich
, lb.standesamt
, lb.datum_kirchlich
, lb.kirche
, lb.KOMMENTAR
, lb.fk_ort
, o.ort
, o.land
from Lebenspartner lb
 join Person p on lb.fk_person = p.pk_person
 left join ort o on o.pk_ort = lb.fk_ort

)
select  lebenspartner_id
, pk_person
, NAME
, VORNAME
, GESCHLECHT
, GEBOREN_AM
, GESTORBEN_AM
, FK_GEBURTSORT
, GEBURTSNAME
, TITEL
, ADELSTITEL
, FK_STERBEORT
, RUFNAME
, NR_AHNENTAFEL
, status
, datum_standesamtlich
, standesamt
, datum_kirchlich
, kirche
, KOMMENTAR
, fk_ort
, ort
, land
from lb
;
--------------------------------------------------------
--  DDL for View V_PERS_DAT_PRÜF
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STAMMBAUM2"."V_PERS_DAT_PRÜF" ("PK_PERSON", "NAME", "VORNAME", "GESCHLECHT", "PER") AS 
  with pers as (select pk_person, name, vorname, geschlecht,
                     pk_person || ' : ' || name || ', ' || vorname as per
              from Person

),
elt as ( select fk_eltern, 

                count(*) cnt_kind,
                sum(case when  pers.geschlecht = 'männlich' then 1 else 0 end) as cnt_kind_m,
                sum(case when  pers.geschlecht = 'weiblich' then 1 else 0 end) as cnt_kind_w,
                sum(case when   ((pers.geschlecht <> 'weiblich' and pers.geschlecht <> 'weiblich') or pers.geschlecht is null) then 1 else 0 end) as cnt_kind_s
          from eltern      
             join pers on eltern.fk_eltern = pers.pk_person
          group by fk_eltern

),
kind_elt as (  select fk_kind , 
                 --anzahl
                 count(*) cnt_elt, count(*) - 2 cnt_elt_s_i,
                 --Person im listagg
                 listagg(per, ';') within group (order by per) as all_elt,
                 /*,
                 --Vater
                 case when pers.geschlecht = 'männlich' then listagg(per, ';') within group (order by per) end as vat,
                 --Mutter
                  case when pers.geschlecht = 'weiblich' then listagg(per, ';') within group (order by per) end as mut,
                 --keine Angabe
                  case when ((pers.geschlecht <> 'weiblich' and pers.geschlecht <> 'weiblich') or pers.geschlecht is null) then listagg(per, ';') within group (order by per) end as sonst,
                 */
                 --Anzahl kinder
                   sum(cnt_kind) cnt_kind,
                   sum(cnt_kind_m) cnt_kind_m,
                   sum(cnt_kind_w) cnt_kind_w,
                   sum(cnt_kind_s) cnt_kind_s
          from eltern             
             join pers on eltern.fk_eltern = pers.pk_person
             join elt on elt.fk_eltern = eltern.fk_eltern
          group by fk_kind
),
geschwist as (
                select fk_person,
                        count(*) cnt_all_ges
                from geschwister g
                 join pers on pers.pk_person = g.fk_geschwister
                 group by fk_person

),
leb as ( select fk_person,
                count(*) cnt_all_leb
         from lebenspartner lb
           join pers on pers.pk_person = lb.fk_lebenspartner
        group by fk_person
        )

select p."PK_PERSON",p."NAME",p."VORNAME",p."GESCHLECHT",p."PER"
from pers p 
 left join kind_elt on p.pk_person = kind_elt.fk_kind
 left join geschwist g on g.fk_person = p.pk_person
 left join leb lb on lb.fk_person = p.pk_person
;
--------------------------------------------------------
--  DDL for Package CREATE_TREE2
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "STAMMBAUM2"."CREATE_TREE2" AS
end;

/
--------------------------------------------------------
--  DDL for Package EDIT_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "STAMMBAUM2"."EDIT_DATA" as
end;

/
--------------------------------------------------------
--  DDL for Package Body CREATE_TREE2
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "STAMMBAUM2"."CREATE_TREE2" AS


  --Start: Hinzufügen eines STAMMBAUM2blattes
  procedure p_add_leaf (
                                              p_VORG_LEV_ID in number,
                                              p_VORG_LEV_SUB_ID in number,
                                              p_ACT_LEV_ID in number,
                                              p_ACT_LEV_SUB_ID in number,
                                              p_NACHF_LEV_ID in number,
                                              p_NACHF_LEV_SUB_ID in number,
                                              p_leaf_value_vorg in number,
                                              p_leaf_value in number
                                              
                                          ) as
                                       
  /*
   * Anne Richter, 16.01.2016
   * Schreiben der Daten für ein STAMMBAUM2blatt
   */  

  --Variablendeklaration
      /*
      --logger 
       l_scope  varchar2(100)  := 'p_create_tree';
       l_params logger.tab_param;
      */

  begin

    /*
    --Logeintrag schreiben    
     logger.log_information('START', l_scope, 'Bestimmung der zum Protokoll gehörenden Testfälle ermitteln.' , l_params);
    */

          insert into tree_tab (
                                  VORG_LEV_ID,
                                  VORG_LEV_SUB_ID,
                                  ACT_LEV_ID,
                                  ACT_LEV_SUB_ID,
                                  NACHF_LEV_ID,
                                  NACHF_LEV_SUB_ID,
                                  leaf_value,
                                  vorg_leaf_value
                              )
            values (
                                    p_VORG_LEV_ID,
                                    p_VORG_LEV_SUB_ID,
                                    p_ACT_LEV_ID,
                                    p_ACT_LEV_SUB_ID,
                                    p_NACHF_LEV_ID,
                                    p_NACHF_LEV_SUB_ID,
                                    p_leaf_value,
                                    p_leaf_value_vorg



            );
            commit;






  end  p_add_leaf;
  --Ende: Hinzufügen eines STAMMBAUM2blattes

  --Start: Durchsuchen der vorhandenen STAMMBAUM2blätter nach einem Eintrag
  function f_search_tree (
                                            p_leaf_value in number
                                        ) return number as


   /*
   * Anne Richter, 16.01.2016
   * Prüfen, ob zu dem STAMMBAUM2blatt bereits ein Eintrag in der Zieltabelle TREE_TAB besteht
   */

   --Variablendeklaration
    l_str number;
    l_cnt number;

      /*
      --logger 
       l_scope  varchar2(100)  := 'p_create_tree';
       l_params logger.tab_param;
      */

  begin

    /*
    --Logeintrag schreiben    
     logger.log_information('START', l_scope, 'Bestimmung der zum Protokoll gehörenden Testfälle ermitteln.' , l_params);
    */

      select count(*)
      into l_cnt
      from tree_tab
      where leaf_value = p_leaf_value;

      if l_cnt > 0 then
         return p_leaf_value;
      else
         return 0;
      end if;

    /*    
    --Logeintrag schreiben
     logger.log_information('Ende', l_scope, 'Die aktiven Testmittel wurden bestimmt.' , l_params);

    --Fehlerbehandlung
      exception when others then
          logger.log_error('ERROR', l_scope, 'Error: ' || sqlerrm || ', Error-Stack: ' || dbms_utility.format_error_backtrace, l_params);
          raise;
    */      

  end f_search_tree;
  --Ende: Durchsuchen der vorhandenen STAMMBAUM2blätter nach einem Eintrag

  function f_cnt_wrong_lev  return number as

     l_cnt number;

  begin

     select count(*)
     into l_cnt
     from tree_tab tt            
     where tt.act_lev_id <> tt.vorg_lev_id+1 
      and ( leaf_value <> vorg_leaf_value)
      and tt.vorg_lev_id+1 -tt.act_lev_id <> 0;

      return l_cnt;


  end;



  procedure p_set_entry (p_vorg in number, p_act in number)   as

   v_search_res number;
   l_max_lev_sub_id number;
   l_lev_id_vorg number;
   l_lev_sub_id_vorg number;
   l_lev_id_act number;
   l_lev_sub_id_act number;
   l_cnt number;


  begin

    --1. Prüfen, ob der Vorgänger bereits besteht
    v_search_res := f_search_tree ( p_vorg  );


    if v_search_res = 0 then

          select nvl(max(act_lev_sub_id),0)+1
          into l_max_lev_sub_id
          from tree_tab
          where act_lev_id = 0;


          p_add_leaf(
                              0,
                              l_max_lev_sub_id,
                              0, 
                              l_max_lev_sub_id,
                              0,
                              0,
                              p_vorg,
                              p_vorg
                            ); 

    end if;

    --2. Prüfung, existiert der Nachfolger
      v_search_res := f_search_tree ( p_act  );    

      if v_search_res = 0 then
        --Falls der Nachfolger noch nicht existiert, diesen anlegen
         select max(act_lev_id), max(act_lev_sub_id)
         into  l_lev_id_vorg,   l_lev_sub_id_vorg
         from tree_tab
         where leaf_value = p_vorg;

         select nvl(max(act_lev_sub_id),0)+1
         into l_max_lev_sub_id
         from tree_tab
         where act_lev_id = l_lev_id_vorg +1;

         p_add_leaf(
                    l_lev_id_vorg,
                    l_lev_sub_id_vorg,
                    l_lev_id_vorg+1, 
                    l_max_lev_sub_id,
                    0,
                    0,
                    p_vorg,
                    p_act
                  ); 
      else 

       --Eckdaten des aktuellen Wertes bestimmen
       select max(act_lev_id), max(act_lev_sub_id)
       into  l_lev_id_vorg,   l_lev_sub_id_vorg
       from tree_tab
       where leaf_value = p_vorg;

       select max(act_lev_id), max(act_lev_sub_id)
       into  l_lev_id_act,   l_lev_sub_id_act
       from tree_tab
       where leaf_value = p_act;


      --4. Prüfung, ob die Beziehung in der Tabelle bereits existiert
       select count(*)
       into l_cnt
       from tree_tab
       where leaf_value = p_act and vorg_leaf_value = p_vorg;

             if l_cnt = 0 then

              p_add_leaf(
                          l_lev_id_vorg,
                          l_lev_sub_id_vorg,
                          l_lev_id_act,
                          l_lev_sub_id_act,
                          0,
                          0,
                          p_vorg,
                          p_act
                        ); 


             end if;



      end if;

  end;

  procedure p_create_tree (p_USER varchar2) AS

       l_cnt_loop number;
       l_cnt_run number;
       l_table_name varchar2(4000 char);
       l_rec_id number;
  BEGIN

      --Tabelle Tree Tab Löschen
       Execute immediate 'Truncate table tree_tab';


      --Ermittlung der Strings (bekannte Vererbungslinien)
        for rec in (
                     select * from eltern
                   ) loop

                p_set_entry (rec.fk_kind,  rec.fk_eltern);



        end loop;

      --Bereinigung aller Einträge, deren Elterneinträge unterhalb der Kindereinträge liegen 
        l_cnt_loop := 1;

        while (l_cnt_loop > 0 ) loop
         L_cnt_loop := 0;
         /* 
         --Anzahl der zu ändernden Datensätze prüfen
           select count(*)
           into l_cnt_loop
           from tree_tab tt            
           where tt.act_lev_id <> tt.vorg_lev_id+1 
            and ( leaf_value <> vorg_leaf_value)
            and tt.vorg_lev_id+1 -tt.act_lev_id <> 0;

          --Falls, Datensätze zu ändern sind, die entsprechende Prozedur aufrufen
            if l_cnt_loop > 0 then

               --Änderungen vornehmen
                 create_tree.p_move_entry_nachf (l_cnt_run, l_table_name, l_rec_id, p_USER);

               --Nach den Änderungen die Anzahl prüfen 
                 select count(*)
                 into l_cnt_loop
                 from tree_tab tt            
                 where tt.act_lev_id <> tt.vorg_lev_id+1 
                  and ( leaf_value <> vorg_leaf_value)
                  and tt.vorg_lev_id+1  - tt.act_lev_id > 0;

            end if;
            */
            null;
       end loop;

  END p_create_tree;



END CREATE_TREE2;

/
--------------------------------------------------------
--  DDL for Package Body EDIT_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "STAMMBAUM2"."EDIT_DATA" as

   --1. Stammdaten bearbeiten
   
     --1.1. Orte bearbeiten
        procedure p_std_set_ort (
                                  p_pk_ort in number,
                                  p_ort in varchar2,
                                  p_land in varchar2,
                                  p_user in varchar2
                              ) as
        begin


           merge into ort t1
             using ( select p_pk_ort pk_ort,
                            p_ort ort,
                            p_land land,
                            nvl(created_by, p_user) created_by,
                            nvl(creation_date, sysdate) creation_date,
                            p_user modified_by,
                            sysdate  modify_date
                     from dual d
                       left join ort on  p_pk_ort = ort.pk_ort
                    ) t2 on (t1.pk_ort = t2.pk_ort)
              when not matched then
                insert (
                            t1.PK_ORT,
                            t1.ORT,
                            t1.LAND,
                            t1.CREATED_BY,
                            t1.CREATION_DATE,
                            t1.MODIFIED_BY,
                            t1.MODIFY_DATE

                      )
                values (
                            t2.PK_ORT,
                            t2.ORT,
                            t2.LAND,
                            t2.CREATED_BY,
                            t2.CREATION_DATE,
                            t2.MODIFIED_BY,
                            t2.MODIFY_DATE
                     )
              when matched then 
                update set 

                            t1.ORT= t2.ort,
                            t1.LAND = t2.land,
                            t1.CREATED_BY= t2.created_by,
                            t1.CREATION_DATE=t2.creation_date



              ;

           commit;

        end;


        procedure p_std_del_ort (
                                  p_pk_ort in number
                                ) as
        begin

             delete from ort where pk_ort = p_pk_ort;
             commit;


        end;

     --1.2. Familie
        procedure p_std_set_familie (
                                      p_pk_familie in number,
                                      p_familie in varchar2,                                
                                      p_user in varchar2
                                    ) as
        begin

           merge into familie t1
             using ( 
                      select  nvl(pk_familie, p_pk_familie) pk_familie,
                              nvl(p_familie, familie ) familie,                            
                              nvl(created_by, p_user) created_by,
                              nvl(creation_date, sysdate) creation_date,
                              p_user modified_by,
                              sysdate  modify_date
                     from dual 
                       left join familie on  p_pk_familie = familie.pk_familie

                    ) t2 on (t1.pk_familie = t2.pk_familie)
              when not matched then
                insert (
                            t1.PK_familie,
                            t1.familie,                        
                            t1.CREATED_BY,
                            t1.CREATION_DATE,
                            t1.MODIFIED_BY,
                            t1.MODIFY_DATE

                      )
                values (
                            t2.PK_familie,
                            t2.familie,                          
                            t2.CREATED_BY,
                            t2.CREATION_DATE,
                            t2.MODIFIED_BY,
                            t2.MODIFY_DATE
                     )
              when matched then 
                update set 

                            t1.familie= t2.familie,                        
                            t1.CREATED_BY= t2.created_by,
                            t1.CREATION_DATE=t2.creation_date
              ;

           commit;


        end;

        procedure p_std_del_familie (
                                      p_pk_familie in number
                                    ) as
        begin

             delete from familie where pk_familie = p_pk_familie;
             commit;


        end;

     --2. Personendaten pflegen
        procedure p_per_set_person (
                                      p_pk_person in number,
                                      p_name in varchar2,                           
                                      p_VORNAME in varchar2, 
                                      p_GEBURTSNAME  in varchar2, 
                                      p_RUFNAME  in varchar2, 
                                      p_GESCHLECHT in varchar2, 
                                      p_GEBOREN_AM in varchar2, 
                                      p_GESTORBEN_AM  in varchar2,
                                      p_FK_GEBURTSORT  in number,
                                      p_FK_STERBEORT  in number, 
                                      p_BESCHREIBUNG  in varchar2,                                       
                                      p_TITEL  in varchar2, 
                                      p_ADELSTITEL  in varchar2,                                   
                                      p_NR_AHNENTAFEL  in number,
                                      p_user in varchar2
                                    ) as

          --Variablendeklaration                          
           v_pk_person number;

          begin


            if p_pk_person is null then
              v_pk_person := seq_pk_person.nextval;
            else
              v_pk_person := p_pk_person;
            end if;

            merge into person t1
             using ( select v_pk_person pk_person,
                            p_name name,
                            p_VORNAME vorname, 
                            p_GESCHLECHT geschlecht ,
                            to_date(p_GEBOREN_AM, 'DD.MM.YYYY HH24:MI:SS')  geboren_am ,
                            to_date(p_GESTORBEN_AM, 'DD.MM.YYYY HH24:MI:SS') gestorben_am,
                            p_FK_GEBURTSORT fk_geburtsort,
                            p_BESCHREIBUNG beschreibung ,
                            p_GEBURTSNAME geburtsname , 
                            p_TITEl titel ,
                            p_ADELSTITEL adelstitel, 
                            p_FK_STERBEORT fk_sterbeort , 
                            p_RUFNAME rufname ,
                            p_NR_AHNENTAFEL nr_ahnentafel,
                            nvl(created_by, p_user) created_by,
                            nvl(creation_date, sysdate) creation_date,
                            p_user modified_by,
                            sysdate  modify_date
                       from dual 
                        left  join person p on  p.pk_person = v_pk_person


                    ) t2 on (t1.pk_person = t2.pk_person )
              when not matched then
                insert (
                            t1.PK_person,
                            t1.name,
                            t1.VORNAME ,
                            t1.GESCHLECHT , 
                            t1.GEBOREN_AM ,
                            t1.GESTORBEN_AM  ,
                            t1.FK_GEBURTSORT  ,
                            t1.BESCHREIBUNG  ,
                            t1.GEBURTSNAME  ,
                            t1.TITEL  ,
                            t1.ADELSTITEL  ,
                            t1.FK_STERBEORT  ,
                            t1.RUFNAME  ,
                            t1.NR_AHNENTAFEL  ,                        
                            t1.CREATED_BY,
                            t1.CREATION_DATE,
                            t1.MODIFIED_BY,
                            t1.MODIFY_DATE

                      )
                values (
                            t2.PK_person,
                            t2.name,
                            t2.VORNAME ,
                            t2.GESCHLECHT , 
                            t2.GEBOREN_AM ,
                            t2.GESTORBEN_AM  ,
                            t2.FK_GEBURTSORT  ,
                            t2.BESCHREIBUNG  ,
                            t2.GEBURTSNAME  ,
                            t2.TITEL  ,
                            t2.ADELSTITEL  ,
                            t2.FK_STERBEORT  ,
                            t2.RUFNAME  ,
                            t2.NR_AHNENTAFEL  ,                          
                            t2.CREATED_BY,
                            t2.CREATION_DATE,
                            t2.MODIFIED_BY,
                            t2.MODIFY_DATE
                     )
              when matched then 
                update set 

                            t1.name= t2.name,
                            t1.VORNAME = t2.vorname,
                            t1.GESCHLECHT= t2.geschlecht , 
                            t1.GEBOREN_AM= t2.geboren_am ,
                            t1.GESTORBEN_AM = t2.gestorben_am ,
                            t1.FK_GEBURTSORT= t2.fk_geburtsort  ,
                            t1.BESCHREIBUNG = t2.beschreibung ,
                            t1.GEBURTSNAME = t2.geburtsname ,
                            t1.TITEL  = t2.titel,
                            t1.ADELSTITEL  = t2.adelstitel ,
                            t1.FK_STERBEORT = t2.fk_sterbeort  ,
                            t1.RUFNAME  = t2.rufname,
                            t1.NR_AHNENTAFEL  = t2.nr_ahnentafel,
                            t1.CREATED_BY= t2.created_by,
                            t1.CREATION_DATE=t2.creation_date


              ;

           commit;



        end;

        procedure p_per_del_person (
                                p_pk_person in number
                              ) as
        begin

             delete from person where pk_person = p_pk_person;
             commit;


        end;







   --3. Personenbeziehungen bearbeiten
     --3.1. Eltern bearbeiten
       procedure p_pb_set_eltern (
                                    p_pk_eltern in number, 
                                    p_fk_eltern in number,
                                    p_fk_kind in number,
                                    p_user in varchar2
                              ) as

       begin

          Merge into eltern t1
            using (
                        select
                          nvl(pk_eltern, p_pk_eltern) pk_eltern,
                          nvl(p_fk_eltern, fk_eltern) fk_eltern ,
                          nvl(p_fk_kind, fk_kind) fk_kind,
                          nvl(created_by, p_user) created_by,
                          nvl(creation_date, sysdate) creation_date,
                          p_user modified_by,
                          sysdate  modify_date
                       from dual
                        left join eltern on eltern.pk_eltern = p_pk_eltern
                   ) t2 on (t1.pk_eltern = t2.pk_eltern)
          when not matched then
            insert (
                      t1.pk_eltern,
                      t1.fk_eltern,
                      t1.fk_kind,
                      t1.CREATED_BY,
                      t1.CREATION_DATE,
                      t1.MODIFIED_BY,
                      t1.MODIFY_DATE

                    )
            values (

                      t2.pk_eltern,
                      t2.fk_eltern,
                      t2.fk_kind,
                      t2.CREATED_BY,
                      t2.CREATION_DATE,
                      t2.MODIFIED_BY,
                      t2.MODIFY_DATE
                    )
           when matched then
             update set 
                      t1.fk_eltern = t2.fk_eltern,
                      t1.fk_kind= t2.fk_kind,
                      t1.MODIFIED_BY= t2.modified_by,
                      t1.MODIFY_DATE = t2.modify_date            
             ;
          commit;




       end;

     procedure p_pb_del_eltern (
                                 p_pk_eltern in number
                               ) as

     begin

          delete from eltern where pk_eltern = p_pk_eltern;
          commit;


     end;     

     -- 3.2. Lebenspartner bearbeiten

      procedure p_pb_set_lebenspartner (
                                          p_pk_lebenspartner in number, 
                                          p_fk_person in number,
                                          p_fk_lebenspartner in number,
                                          p_status in varchar2, 
                                          p_datum_standesamtlich in varchar2, 
                                          p_Standesamt in varchar2,
                                          p_datum_kirchlich in varchar2, 
                                          p_Kirche in varchar2,
                                          p_fk_ort in number,
                                          p_komm in varchar2, 
                                          p_user in varchar2
                                        ) as

       begin

          Merge into lebenspartner t1
            using (
                    select
                      nvl(pk_lebenspartner, p_pk_lebenspartner) pk_lebenspartner,
                      nvl(p_fk_person, fk_person) as fk_person,
                      nvl(p_fk_lebenspartner, fk_lebenspartner) as fk_lebenspartner,
                      nvl(p_status, status) status,
                      nvl(to_date(p_datum_standesamtlich, 'DD.MM.YYYY HH24:MI:SS'), datum_standesamtlich) datum_standesamtlich,
                      nvl(p_standesamt, standesamt) standesamt,
                      nvl(to_date(p_datum_kirchlich, 'DD.MM.YYYY HH24:MI:SS'), datum_kirchlich) datum_kirchlich,
                      nvl(p_kirche, kirche) kirche,
                      nvl(p_fk_ort, fk_ort) fk_ort,
                      nvl(p_komm , kommentar) kommentar,
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                    
                   from dual d
                     left join lebenspartner lb on lb.pk_lebenspartner = p_pk_lebenspartner
                   ) t2 on (t1.pk_lebenspartner = t2.pk_lebenspartner)
          when not matched then
            insert (
                      t1.pk_lebenspartner,
                      t1.fk_person,
                      t1.fk_lebenspartner,
                      t1.status,
                      t1.datum_standesamtlich,
                      t1.standesamt,
                      t1.datum_kirchlich,
                      t1.kirche,
                      t1.fk_ort,
                      t1.kommentar,
                      t1.CREATED_BY,
                      t1.CREATION_DATE,
                      t1.MODIFIED_BY,
                      t1.MODIFY_DATE

                    )
            values (

                      t2.pk_lebenspartner,
                      t2.fk_person,
                      t2.fk_lebenspartner,
                      t2.status,
                      t2.datum_standesamtlich,
                      t2.standesamt,
                      t2.datum_kirchlich,
                      t2.kirche,
                      t2.fk_ort,
                      t2.kommentar,
                      t2.CREATED_BY,
                      t2.CREATION_DATE,
                      t2.MODIFIED_BY,
                      t2.MODIFY_DATE
                    )
           when matched then
             update set 

                      t1.fk_person = t2.fk_person,
                      t1.fk_lebenspartner = t2.fk_lebenspartner,
                      t1.status= t2.status,
                      t1.datum_standesamtlich = t2.datum_standesamtlich,
                      t1.standesamt= t2.standesamt,
                      t1.datum_kirchlich = t2.datum_kirchlich,
                      t1.kirche= t2.kirche,
                      t1.fk_ort = t2.fk_ort,
                      t1.kommentar= t2.kommentar,
                      t1.MODIFIED_BY= t2.modified_by,
                      t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




       end;

     procedure p_pb_del_lebenspartner (
                                         p_pk_lebenspartner in number
                                        ) as

     begin

          delete from lebenspartner where pk_lebenspartner = p_pk_lebenspartner;
          commit;


     end;   

     --3.3. Geschwister

      procedure p_pb_set_geschwister (
                                        p_pk_geschwister in number, 
                                        p_fk_person in number, 
                                        p_fk_geschwister in number, 
                                        p_user in varchar2
                                      ) as

       begin

          Merge into geschwister t1
            using (
                    select
                      nvl(pk_geschwister, p_pk_geschwister) pk_geschwister,
                      nvl(p_fk_person, fk_person) fk_person,
                      nvl(p_fk_geschwister, fk_geschwister) fk_geschwister ,                   
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                     
                    from dual
                      left join geschwister on pk_geschwister = p_pk_geschwister
                   ) t2 on (t1.pk_geschwister = t2.pk_geschwister)
          when not matched then
            insert (
                        t1.PK_GESCHWISTER,
                        t1.FK_PERSON,
                        t1.FK_GESCHWISTER,
                        t1.CREATION_DATE,
                        t1.CREATED_BY,
                        t1.MODIFY_DATE,
                        t1.MODIFIED_BY

                    )
            values (

                        t2.PK_GESCHWISTER,
                        t2.FK_PERSON,
                        t2.FK_GESCHWISTER,
                        t2.CREATION_DATE,
                        t2.CREATED_BY,
                        t2.MODIFY_DATE,
                        t2.MODIFIED_BY
                    )
           when matched then
             update set 
                      t1.FK_PERSON= t2.fk_person,
                      t1.FK_GESCHWISTER =t2.fk_geschwister,
                      t1.MODIFIED_BY= t2.modified_by,
                      t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




     end;

     procedure p_pb_del_geschwister (
                             p_pk_geschwister in number
                            ) as

     begin

          delete from geschwister where pk_geschwister = p_pk_geschwister;
          commit;


     end;       


   --4. Peronen zusätzliche Angaben bearbeiten
     --4.1. Beruf bearbeiten
      procedure p_pa_set_pers_beruf (
                                          p_pk_person_beruf in number, 
                                          p_beruf in varchar2, 
                                          p_fk_person in number, 
                                          p_komm in varchar2, 
                                          p_reihenfolge in number, 
                                          p_von in varchar2,
                                          p_bis in varchar2,
                                          p_user in varchar2
                                        ) as

       begin

          Merge into person_beruf t1
            using (
                    select
                      pk_person_beruf,
                      nvl(p_fk_person, fk_person) fk_person,
                      nvl(p_beruf, beruf) beruf ,  
                      nvl(p_komm, kommentar) kommentar,
                      nvl(p_reihenfolge, reihenfolge) reihenfolge,
                      nvl(p_von, von) von,
                      nvl(p_bis, bis) bis,
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                

                    from dual 
                      join person_beruf pb on pb.pk_person_beruf = p_pk_person_beruf
                   ) t2 on (t1.pk_person_beruf = t2.pk_person_beruf)
          when not matched then
            insert (
                        t1.pk_person_beruf,
                        t1.beruf,                        
                        t1.fk_person,
                        t1.kommentar,
                        t1.reihenfolge,
                        t1.von,
                        t1.bis,
                        t1.CREATION_DATE,
                        t1.CREATED_BY,
                        t1.MODIFY_DATE,
                        t1.MODIFIED_BY

                    )
            values (

                        t2.pk_person_beruf,
                        t2.beruf,                        
                        t2.fk_person,
                        t2.kommentar,
                        t2.reihenfolge,
                        t2.von,
                        t2.bis,
                        t2.CREATION_DATE,
                        t2.CREATED_BY,
                        t2.MODIFY_DATE,
                        t2.MODIFIED_BY
                    )
           when matched then
             update set 

                t1.beruf=t2.beruf,                        
                t1.fk_person=t2.fk_person,
                t1.kommentar=t2.kommentar,
                t1.reihenfolge=t2.reihenfolge,
                t1.von=t2.von,
                t1.bis=t2.bis,
                t1.MODIFIED_BY= t2.modified_by,
                t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




       end;

     procedure p_pa_del_pers_beruf (
                             p_pk_person_beruf in number
                            ) as

     begin

          delete from person_beruf where pk_person_beruf = p_pk_person_beruf;
          commit;


     end;

     --4.2. Wohnort bearbeiten
       procedure p_pa_set_pers_wohnort (
                                            p_pk_person_wohnort in number, 
                                            p_fk_wohnort in varchar2, 
                                            p_fk_person in number, 
                                            p_komm in varchar2, 
                                            p_reihenfolge in number, 
                                            p_von in date,
                                            p_bis in date,
                                            p_user in varchar2
                                          ) as

       begin

            Merge into person_wohnort t1
            using (
                    select
                      pk_person_wohnort,
                      nvl(p_fk_person, fk_person) fk_person,
                      nvl(p_fk_wohnort, fk_wohnort) fk_wohnort ,  
                      nvl(p_komm, kommentar) kommentar,
                      nvl(p_reihenfolge, reihenfolge) reihenfolge,
                      nvl(p_von, von) von,
                      nvl(p_bis, bis) bis,
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                

                    from dual 
                      join person_wohnort pw on pw.pk_person_wohnort = p_pk_person_wohnort
                   ) t2 on (t1.pk_person_wohnort = t2.pk_person_wohnort)
          when not matched then
            insert (
                        t1.pk_person_wohnort,
                        t1.fk_wohnort,                        
                        t1.fk_person,
                        t1.kommentar,
                        t1.reihenfolge,
                        t1.von,
                        t1.bis,
                        t1.CREATION_DATE,
                        t1.CREATED_BY,
                        t1.MODIFY_DATE,
                        t1.MODIFIED_BY

                    )
            values (

                        t2.pk_person_wohnort,
                        t2.fk_wohnort,                        
                        t2.fk_person,
                        t2.kommentar,
                        t2.reihenfolge,
                        t2.von,
                        t2.bis,
                        t2.CREATION_DATE,
                        t2.CREATED_BY,
                        t2.MODIFY_DATE,
                        t2.MODIFIED_BY
                    )
           when matched then
             update set 

                t1.fk_wohnort=t2.fk_wohnort,                        
                t1.fk_person=t2.fk_person,
                t1.kommentar=t2.kommentar,
                t1.reihenfolge=t2.reihenfolge,
                t1.von=t2.von,
                t1.bis=t2.bis,
                t1.MODIFIED_BY= t2.modified_by,
                t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




       end;

     procedure p_pa_del_pers_wohnort (
                                       p_pk_person_wohnort in number
                                      ) as

     begin

          delete from person_wohnort where pk_person_wohnort = p_pk_person_wohnort;
          commit;


     end;     

     --4.3. Religion bearbeiten
       procedure p_pa_set_pers_religion (
                                            p_pk_pers_religion in number, 
                                            p_religion in varchar2, 
                                            p_fk_person in number, 
                                            p_status in varchar2, 
                                            p_ausgetreten_am in varchar2,
                                            p_user in varchar2
                                          ) as

       begin

          Merge into person_religion t1
            using (
                    select
                      pk_person_religion,                      
                      nvl(p_fk_person, fk_person) fk_person,
                      nvl(p_religion, religion) religion,
                      nvl(p_status, status) status,
                      nvl(p_ausgetreten_am, ausgetreten_am) ausgetreten_am,
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                    
                   from dual
                      join person_religion pr on pr.pk_person_religion = p_pk_pers_religion
                   ) t2 on (t1.pk_person_religion = t2.pk_person_religion)
          when not matched then
            insert (
                        t1.pk_person_religion,
                        t1.religion,
                        t1.fk_person,
                        t1.status,
                        t1.ausgetreten_am,
                        t1.CREATION_DATE,
                        t1.CREATED_BY,
                        t1.MODIFY_DATE,
                        t1.MODIFIED_BY

                    )
            values (
                        t2.pk_person_religion,
                        t2.religion,
                        t2.fk_person,
                        t2.status,
                        t2.ausgetreten_am,
                        t2.CREATION_DATE,
                        t2.CREATED_BY,
                        t2.MODIFY_DATE,
                        t2.MODIFIED_BY
                    )
           when matched then
             update set 

                        t1.religion = t2.religion,
                        t1.fk_person = t2.fk_person,
                        t1.status= t2.status,
                        t1.ausgetreten_am= t2.ausgetreten_am,
                        t1.MODIFIED_BY= t2.modified_by,
                        t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




       end;

     procedure p_pa_del_pers_religion (
                             p_pk_person_religion in number
                            ) as

     begin

          delete from person_religion where pk_person_religion = p_pk_person_religion;
          commit;


     end;          

     --4.3.  Familie bearbeiten
       procedure p_pa_set_pers_familie (
                                          p_pk_person_familie in number, 
                                          p_fk_familie in number, 
                                          p_fk_person in number, 
                                          p_komm in varchar2, 
                                          p_herkunft in varchar2, 
                                          p_user in varchar2
                                        ) as

       begin

          Merge into person_familie t1
            using (
                    select
                      p_pk_person_familie pk_person_familie,
                      nvl(p_fk_person, fk_person) fk_person,
                      nvl(p_fk_familie, fk_familie) fk_familie,
                      nvl(p_komm, kommentar) kommentar,
                      nvl(p_herkunft, herkunft) herkunft,
                      nvl(created_by, p_user) created_by,
                      nvl(creation_date, sysdate) creation_date,
                      p_user modified_by,
                      sysdate  modify_date                    
                   from dual
                     join person_familie pf on pf.pk_person_familie = p_pk_person_familie
                   ) t2 on (t1.pk_person_familie = t2.pk_person_familie)
          when not matched then
            insert (
                      t1.pk_person_familie,
                      t1.fk_familie,
                      t1.fk_person,
                      t1.kommentar,
                      t1.herkunft,
                      t1.CREATION_DATE,
                      t1.CREATED_BY,
                      t1.MODIFY_DATE,
                      t1.MODIFIED_BY                    

                    )
            values (
                      t2.pk_person_familie,
                      t2.fk_familie,
                      t2.fk_person,
                      t2.kommentar,
                      t2.herkunft,
                      t2.CREATION_DATE,
                      t2.CREATED_BY,
                      t2.MODIFY_DATE,
                      t2.MODIFIED_BY     
                    )
           when matched then
             update set 

                      t1.fk_familie= t2.fk_familie,
                      t1.fk_person=t2.fk_person,
                      t1.kommentar=t2.kommentar,
                      t1.herkunft=t2.herkunft,
                      t1.MODIFIED_BY= t2.modified_by,
                      t1.MODIFY_DATE = t2.modify_date

             ;
          commit;




       end;

     procedure p_pa_del_pers_familie (
                                       p_pk_person_familie in number
                                      ) as

     begin

          delete from person_familie where pk_person_familie = p_pk_person_familie;
          commit;


     end;       

end edit_data;

/
