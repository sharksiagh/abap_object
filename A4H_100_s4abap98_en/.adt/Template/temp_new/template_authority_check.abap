"-------------------------------------------------------------
" TEMPLATE: Validación de Autorizaciones
" DESCRIPCIÓN: Verifica si el usuario tiene autorización para una acción.
" USO: Incluir en módulos de función, reportes o formularios.
"-------------------------------------------------------------
FORM check_authority USING iv_activity TYPE c
                             iv_object   TYPE c
                             iv_field    TYPE c
                             iv_value    TYPE c
                     CHANGING ev_authorized TYPE abap_bool.

  DATA lv_subrc TYPE sy-subrc.

  CLEAR ev_authorized.

  AUTHORITY-CHECK OBJECT iv_object
    ID iv_field FIELD iv_value
    ID 'ACTVT' FIELD iv_activity.

  lv_subrc = sy-subrc.

  IF lv_subrc = 0.
    ev_authorized = abap_true.
  ELSE.
    ev_authorized = abap_false.
    MESSAGE e398(00) WITH |No tiene autorización para la acción { iv_activity } sobre { iv_object }|.
  ENDIF.

ENDFORM.
