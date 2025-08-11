@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Cube'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE

define view entity ZI_MT_CH_SALES_CUBE as select from ZI_MT_ch_SALES
association[1] to Zmt_CH_I_BP as _BusinessPartner on
$projection.Buyer = _BusinessPartner.BpId
association[1] to ZI_MT_CH_PRODUCT as _Product on
$projection.Product = _Product.ProductId
{
   key ZI_MT_ch_SALES.OrderId,
   key ZI_MT_ch_SALES._Items.item_id as ItemId,
   key _BusinessPartner.CompanyName,
   key _BusinessPartner.Country,
   ZI_MT_ch_SALES.OrderNo,
   ZI_MT_ch_SALES.Buyer,
   ZI_MT_ch_SALES.CreatedBy,
   ZI_MT_ch_SALES.CreatedOn,
   /* Associations */
   ZI_MT_ch_SALES._Items.product as Product,
   @DefaultAggregation: #SUM
   @Semantics.amount.currencyCode: 'CurrencyCode'
   ZI_MT_ch_SALES._Items.amount as GrossAmount,
   ZI_MT_ch_SALES._Items.currency as CurrencyCode,
   @DefaultAggregation: #SUM
   @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
   ZI_MT_ch_SALES._Items.qty as Quantity,
   ZI_MT_ch_SALES._Items.uom as UnitOfMeasure,
   _Product,
   _BusinessPartner

    
}
