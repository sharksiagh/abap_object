"-------------------------------------------------------------
" TEMPLATE: Formulario para procesar datos en bucles
" DESCRIPCIÓN: Procesamiento de tabla interna con lógica condicional.
"-------------------------------------------------------------
FORM process_data_loop USING it_data TYPE STANDARD TABLE.

  DATA ls_row TYPE LINE OF it_data.

  LOOP AT it_data INTO ls_row.
    " Procesamiento por registro
    CONTINUE.
  ENDLOOP.

ENDFORM.
