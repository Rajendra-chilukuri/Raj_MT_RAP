@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'processor'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
   serviceQuality: #X,
   sizeCategory: #S,
   dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity zmt_CH_m_attach_processor as projection on zmt_CH_m_attach
{
   key TravelId,
   key Id,
   Memo,
   @Semantics.largeObject: {
       mimeType: 'Filetype',
       fileName: 'Filename',
       contentDispositionPreference: #INLINE,
       acceptableMimeTypes: [ 'application/pdf' ]
   }
   Attachment,
   //@Semantics.mimeType: true
   Filename,
   @Semantics.mimeType: true
   Filetype,
   LocalCreatedBy,
   LocalCreatedAt,
   LocalLastChangedBy,
   LocalLastChangedAt,
   LastChangedAt,
   /* Associations */
   _Travel: redirected to parent ZMT_CH_TRAVEL_PROCESSOR
}
