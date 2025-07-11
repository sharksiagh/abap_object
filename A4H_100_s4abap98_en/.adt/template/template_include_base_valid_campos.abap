*&---------------------------------------------------------------------*
*& INCLUDE ZTEMPLATE_VALIDACION
*&---------------------------------------------------------------------*
* Validación genérica para campos obligatorios
* template modelo para verificaciones y mensajes de campos obligatorios
FORM validate_mandatory_fields USING iv_field TYPE string.
  IF iv_field IS INITIAL.
    MESSAGE 'El campo es obligatorio' TYPE 'E'.
  ENDIF.
ENDFORM.
