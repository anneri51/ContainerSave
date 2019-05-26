--------------------------------------------------------
--  Datei erstellt -Samstag-Mai-25-2019   
--------------------------------------------------------
DROP DATABASE LINK "DIST_APPL_COMP"."CREATE_PDB";
DROP TABLE "DIST_APPL_COMP"."APPLICANTS" cascade constraints;
DROP TABLE "DIST_APPL_COMP"."BUSINESSRELATIONS" cascade constraints;
DROP TABLE "DIST_APPL_COMP"."BUSINESSSECTOR1" cascade constraints;
DROP TABLE "DIST_APPL_COMP"."COMPANIES" cascade constraints;
DROP TABLE "DIST_APPL_COMP"."DIST_APPL_COMP" cascade constraints;
--------------------------------------------------------
--  DDL for DB Link CREATE_PDB
--------------------------------------------------------

  CREATE DATABASE LINK "CREATE_PDB"
   CONNECT TO "DIST_APPL_COMP" IDENTIFIED BY VALUES '0587C5EAFDC726C8CCB99A788139BC4BDE'
   USING 'XEPDB1';
