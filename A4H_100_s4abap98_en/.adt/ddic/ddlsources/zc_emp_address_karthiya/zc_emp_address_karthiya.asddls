@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Basic Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_EMP_ADDRESS_karthiya as projection on ZI_EMP_ADDRESS_karthiya
{
    key emp_id,
    EmpAddress,
    EmpState,
    EmpCountry,
    EmpPinCode,
    /* Associations */
    _Employee: redirected to parent ZC_EMP_BASIC_karthiya 
}
