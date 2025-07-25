"-------------------------------------------------------------
" TEMPLATE: Clase con métodos utilitarios genéricos
" DESCRIPCIÓN: Clase ZCL_UTILS con métodos estáticos de uso común.
"-------------------------------------------------------------
CLASS zcl_utils DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS:
      format_date
        IMPORTING iv_date TYPE sy-datum
        RETURNING VALUE(rv_text) TYPE string.

ENDCLASS.

CLASS zcl_utils IMPLEMENTATION.

  METHOD format_date.
    rv_text = |{ iv_date+6(2) }/{ iv_date+4(2) }/{ iv_date(4) }|.
  ENDMETHOD.

ENDCLASS.
