@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Suppliment Project View'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZMT_CH_BOOKSUPPL_PROCESSOR as projection on ZMT_CH_BOOKSUPPL
{
   key TravelId,
   key BookingId,
   key BookingSupplementId,
   SupplementId,
   Price,
   CurrencyCode,
   LastChangedAt,
   /* Associations */
   _Booking: redirected to parent ZMT_CH_BOOKING_PROCESSOR,
   _Product,
   _SupplementText,
   _Travel : redirected to ZMT_CH_TRAVEL_PROCESSOR
 }  
