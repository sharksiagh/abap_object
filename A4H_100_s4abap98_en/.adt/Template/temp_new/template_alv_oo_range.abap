"-------------------------------------------------------------
" TEMPLATE: Reporte ALV OO con selección por rango
" DESCRIPCIÓN: Uso de SALV con rango de selección dinámica.
"-------------------------------------------------------------
CLASS zcl_report_oo DEFINITION.
  PUBLIC SECTION.
    METHODS: display_report.
ENDCLASS.

CLASS zcl_report_oo IMPLEMENTATION.

  METHOD display_report.
    DATA: lo_alv TYPE REF TO cl_salv_table,
          lt_data TYPE STANDARD TABLE OF sflight,
          lr_selections TYPE RANGE OF sflight-carrid.

    " Crear datos de ejemplo o extraer datos
    SELECT * INTO TABLE lt_data FROM sflight
      WHERE carrid IN lr_selections.

    cl_salv_table=>factory(
      IMPORTING
        r_salv_table = lo_alv
      CHANGING
        t_table      = lt_data ).

    lo_alv->display( ).
  ENDMETHOD.

ENDCLASS.
