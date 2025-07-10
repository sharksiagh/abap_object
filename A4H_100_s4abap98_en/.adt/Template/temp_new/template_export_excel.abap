"-------------------------------------------------------------
" TEMPLATE: Exportación de datos a Excel
" DESCRIPCIÓN: Exporta una tabla interna a formato Excel usando cl_gui_frontend_services.
"-------------------------------------------------------------
FORM export_to_excel USING it_data TYPE STANDARD TABLE.

  DATA: lv_filename TYPE string,
        lv_path     TYPE string,
        lv_fullpath TYPE string,
        lt_fieldcat TYPE lvc_t_fcat.

  CALL METHOD cl_gui_frontend_services=>file_save_dialog
    EXPORTING
      default_extension = 'xlsx'
    CHANGING
      filename          = lv_filename
      path              = lv_path
      fullpath          = lv_fullpath.

  IF sy-subrc = 0 AND lv_fullpath IS NOT INITIAL.
    CALL FUNCTION 'GUI_DOWNLOAD'
      EXPORTING
        filename                = lv_fullpath
        filetype                = 'ASC'
      TABLES
        data_tab                = it_data.
  ENDIF.

ENDFORM.
