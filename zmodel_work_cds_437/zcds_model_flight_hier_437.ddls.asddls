@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Hierarchical model Flight'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_MODEL_FLIGHT_HIER_437
  as select from /dmo/flight
  association [0..1] to ZCDS_MODEL_FLIGHT_HIER_437 as _Flight on _Flight.CarrierId = $projection.CarrierId
{
  key carrier_id    as CarrierId,
  key connection_id as ConnectionId,
  key flight_date   as FlightDate,
      _Flight
}
