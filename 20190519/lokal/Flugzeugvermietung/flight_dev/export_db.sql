--------------------------------------------------------
--  Datei erstellt -Sonntag-Mai-19-2019   
--------------------------------------------------------
DROP VIEW "FLIGHT_DEV"."V_FLI_FLIGHT";
--------------------------------------------------------
--  DDL for View V_FLI_FLIGHT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "FLIGHT_DEV"."V_FLI_FLIGHT" ("PK_FLI_FLIGHT", "FK_MDT_MANDANT", "DEPARTURE", "ARRIVAL", "DEPARTURE_TIME", "ARRIVAL_TIME", "DURATION", "ADDITIONAL_TIMESLOTS", "FK_ADDITIONAL_TIMESLOTTYPE", "FK_APL_PLANE", "PK_APL_PLANE") AS 
  select fli."PK_FLI_FLIGHT",fli."FK_MDT_MANDANT",fli."DEPARTURE",fli."ARRIVAL",fli."DEPARTURE_TIME",fli."ARRIVAL_TIME",fli."DURATION",fli."ADDITIONAL_TIMESLOTS",fli."FK_ADDITIONAL_TIMESLOTTYPE",fli."FK_APL_PLANE", pk_apl_plane
from apl_plane apl 
  left join fli_flight fli on apl.pk_apl_plane =fli.fk_apl_Plane
;
