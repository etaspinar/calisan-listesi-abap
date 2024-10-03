PROCESS BEFORE OUTPUT.																																
*&SPWIZARD: PBO FLOW LOGIC FOR TABLECONTROL 'CALISANLAR'																																
  MODULE CALISANLAR_INIT.																																
*&SPWIZARD: MODULE CALISANLAR_CHANGE_TC_ATTR.																																
*&SPWIZARD: MODULE CALISANLAR_CHANGE_COL_ATTR.																																
  LOOP AT   G_CALISANLAR_ITAB																																
       INTO G_CALISANLAR_WA																																
       WITH CONTROL CALISANLAR																																
       CURSOR CALISANLAR-CURRENT_LINE.																																
*&SPWIZARD:   MODULE CALISANLAR_CHANGE_FIELD_ATTR																																
    MODULE CALISANLAR_MOVE.																																
    MODULE CALISANLAR_GET_LINES.																																
  ENDLOOP.																																
																																
 MODULE STATUS_0400.																																
																																
PROCESS AFTER INPUT.																																
*&SPWIZARD: PAI FLOW LOGIC FOR TABLECONTROL 'CALISANLAR'																																
  LOOP AT G_CALISANLAR_ITAB.																																
    CHAIN.																																
      FIELD ZKURUMSALCALISAN-ID.																																
      FIELD ZKURUMSALCALISAN-AD.																																
      FIELD ZKURUMSALCALISAN-SOYAD.																																
      FIELD ZKURUMSALCALISAN-SEHIR.																																
      FIELD ZKURUMSALCALISAN-MAIL.																																
      FIELD ZKURUMSALCALISAN-TELEFON.																																
      FIELD ZKURUMSALCALISAN-DOGUM.																																
      FIELD ZKURUMSALCALISAN-YAS.																																
      FIELD ZKURUMSALCALISAN-CINSIYET.																																
    ENDCHAIN.																																
  ENDLOOP.																																
  MODULE CALISANLAR_USER_COMMAND.																																
*&SPWIZARD: MODULE CALISANLAR_CHANGE_TC_ATTR.																																
*&SPWIZARD: MODULE CALISANLAR_CHANGE_COL_ATTR.																																
																																
 MODULE USER_COMMAND_0400.																																																													
																																
