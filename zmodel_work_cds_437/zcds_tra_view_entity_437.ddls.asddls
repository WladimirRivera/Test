@EndUserText.label: 'CDS Transient View Entity'
@AccessControl.authorizationCheck: #NOT_ALLOWED
define transient view entity ZCDS_TRA_VIEW_ENTITY_437
  provider contract analytical_query
  as projection on ZCDS_ANALYTICAL_DATA_CAT_437
{
          @AnalyticsDetails.query.axis: #FREE
          TravelId,
          BookingId,
          @AnalyticsDetails.query.axis: #ROWS
          BookingDate,
          @AnalyticsDetails.query.axis: #COLUMNS
          CustomerId,
          CarrierId,
          ConnectionId,
          FlightDate,
          @ObjectModel.text.element: [ 'currcode' ]
          FlightPrice,
          CurrencyCode,
  virtual currcode : abap.cuky
}
