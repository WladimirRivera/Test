@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Virual Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType:#BASIC
@Analytics.dataCategory:#DIMENSION
define view entity zcds_vdm_437
  as select from I_Currency
  association [0..*] to I_CurrencyText as _Text on  _Text.Currency = $projection.Currency
                                                and _Text.Language = $session.system_language
{
  key   CurrencyISOCode,
        @Search.defaultSearchElement: true
        @Search.ranking: #HIGH
        @Search.fuzzinessThreshold: 0.8
        Currency,
        AlternativeCurrencyKey,
        IsPrimaryCurrencyForISOCrcy,
        /* Associations */
        _Text
}
