@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product CDS View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
define view entity ZI_MT_CH_PRODUCT as select from  zmt_ch_product
{
   key product_id as ProductId,
   name     as Name,
   category as Category,
   --@Semantics.amount.currencyCode: 'Currency'
   price as Price,
   currency as Currency,
   discount as Discount
}
