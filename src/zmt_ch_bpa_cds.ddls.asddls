@AbapCatalog.sqlViewName: 'ZMTCHBPACDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Partner CDS View'
@Metadata.ignorePropagatedAnnotations: true
define view zmt_ch_bpa_cds as select from  zmt_ch_bpa
{
   key bp_id as BpId,
   bp_role as BpRole,
   company_name as CompanyName,
   street as Street,
   country as Country,
   region as Region,
   city as City
    
}
