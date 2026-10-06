Instance: MetricDataActivityLevelUC2
InstanceOf: Observation
Title: "Observation Metric Data Activity Level (UC2)"
Description: "Activity level computed from the raw MMS data."
Usage: #example
* id                = "uc2-observation-metric-data-activity-level"
* meta.profile      = "https://nrces.in/ndhm/fhir/r4/StructureDefinition/ObservationPhysicalActivity"
* status            = #final
* code              = $loinc#80493-0 "Activity level [Acceleration]"
* code.text         = "Activity level [Acceleration]"
* subject           = Reference(uc2-001-patient)
* effectiveDateTime = "2024-07-01T15:30:00+01:00" // summarised at the end of the session
* performer         = Reference(uc2-123456732) // TODO: maybe not needed, the performer is linked through the encounter
* valueString       = "Moderate"
* derivedFrom       = Reference(uc2-observation-accelerometer-raw-data-from-mms) // raw data of the MMS sensor
