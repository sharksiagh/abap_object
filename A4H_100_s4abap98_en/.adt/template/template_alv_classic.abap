"-------------------------------------------------------------
" TEMPLATE: Reporte ALV clásico con eventos básicos
" DESCRIPCIÓN: Visualización de datos con REUSE_ALV_GRID_DISPLAY.
"-------------------------------------------------------------
FORM show_alv_classic USING it_data TYPE STANDARD TABLE.

  DATA: lt_fieldcat TYPE slis_t_fieldcat_alv,
        ls_layout   TYPE slis_layout_alv.

  CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
    EXPORTING
      i_structure_name = 'ZESTRUCTURA'
    CHANGING
      ct_fieldcat      = lt_fieldcat.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_callback_program = sy-repid
      is_layout          = ls_layout
      it_fieldcat        = lt_fieldcat
    TABLES
      t_outtab           = it_data.

ENDFORM.
