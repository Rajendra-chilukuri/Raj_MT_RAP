@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Processor Projection View'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZMT_CH_BOOKING_PROCESSOR as projection on ZMT_CH_BOOKING
{
   key TravelId,
   key BookingId,
   BookingDate,
   CustomerId,
   CarrierId,
   ConnectionId,
   FlightDate,
   FlightPrice,
   CurrencyCode,
   BookingStatus,
   LastChangedAt,
   /* Associations */
   _BookingStatus,
   _BookingSupplement: redirected to composition child ZMT_CH_BOOKSUPPL_PROCESSOR,
   _Carrier,
   _Connection,
   _Customer,
   _Travel: redirected to parent ZMT_CH_TRAVEL_PROCESSOR
}
