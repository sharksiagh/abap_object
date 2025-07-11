

#  Templates ABAP - Repositorio Reutilizable

Este repositorio contiene una colección de plantillas reutilizables para desarrollo ABAP. Las plantillas están organizadas por tipo de objeto y uso frecuente.

##  Estructura de carpetas

```
adt/
└── templates/
     template_alv_classic.abap
     template_alv_oo_range.abap
     template_export_excel.abap

```

##  Lista de Templates Disponibles

| Archivo                                | Descripción                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| template_authority_check.abap          | Valida autorizaciones de usuario para objetos y actividades específicas.   |
| template_util_class.abap               | Clase ZCL_UTILS con métodos utilitarios genéricos como formateo de fecha.  |
| template_process_loop_form.abap        | Formulario estándar para procesar datos en bucles con lógica personalizada.|
| template_export_excel.abap             | Exporta una tabla interna a un archivo Excel local usando 'GUI_DOWNLOAD'.  |
| template_alv_classic.abap              | Reporte ALV clásico con uso de 'REUSE_ALV_GRID_DISPLAY'.                   |
| template_alv_oo_range.abap             | Reporte con ALV OO usando 'CL_SALV_TABLE' y selección por rangos dinámicos.|

## Cómo usar estas plantillas

1. Copiar el contenido del archivo deseado.
2. Pegar en tu nuevo programa, clase o formulario en SAP.
3. Adaptar nombres, estructuras y lógicas según tu necesidad.

## Recomendaciones

- Mantén esta carpeta sincronizada vía Git.
- Revisa las plantillas antes de reutilizarlas en productivo.
- Contribuye con nuevas plantillas siguiendo esta estructura.

