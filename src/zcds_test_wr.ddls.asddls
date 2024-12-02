@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@EndUserText.label: 'CDS Test'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity zcds_test_wr
  as select from /dmo/travel as Travel
  association [1..1] to ZCDS_AGENCY_MAX as _Agency on _Agency.agency_id = $projection.AgencyId
{
  key travel_id        as TravelId,
      Travel.agency_id as AgencyId,
      _Agency
}
