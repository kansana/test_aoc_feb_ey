@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking processor projection'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_BS_BOOKING_APPROVER as projection on ZEY_BS_BOOKING
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
   _BookingSupplement: redirected to composition child ZEY_BS_BOOKING_SUPPL_APPROVER,
   _Carrier,
   _Connection,
   _Customer,
   _Travel: redirected to parent ZEY_BS_TRAVEL_APPROVER
}
