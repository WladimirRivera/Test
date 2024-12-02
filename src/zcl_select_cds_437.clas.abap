CLASS zcl_select_cds_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SELECT_CDS_437 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*   SELECT FROM zcds_test_wr AS Test
*     FIELDS Test~AgencyId,
*            Test~TravelId,
*            \_Agency-name as Name
*      WHERE Test~AgencyId EQ '070032'
*      INTO TABLE @DATA(lt_results)
*      UP TO 1 ROWS.
*      if sy-subrc eq 0.
*        out->write( lt_results ).
*      endif.
    IF sy-uname EQ 'ADMIN'.
      SELECT FROM zcds_test_wr WITH PRIVILEGED ACCESS
        FIELDS *
         INTO TABLE @DATA(lt_results)
         UP TO 1 ROWS.
      IF sy-subrc EQ 0.
        out->write( lt_results ).
      ENDIF.
    ELSE.
      out->write( 'No data' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
