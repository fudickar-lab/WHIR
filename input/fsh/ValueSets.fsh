ValueSet: IMUSensorDeviceCategories
Id: imu-sensor-device-categories
Title: "IMU Sensor Device Categories"
Description: "Allowed device categories for IMU sensors."
* ^experimental = false
* $deviceCategory#active "Active Device"
* $deviceCategory#communicating "Communicating Device"
* $deviceCategory#dme "Durable Medical Equipment"
* $deviceCategory#home-use "Home Use Device"
* $deviceCategory#point-of-care "Point of Care Device"
* $deviceCategory#reusable "Reusable Device"
// * $deviceCategory#software "Software"

ValueSet: IMUSensorTypes
Id: imu-sensor-types
Title: "IMU Sensor Types"
Description: "Allowed device types for IMU sensors."
* ^experimental = false
* $sct#1187059002 "Smartphone (physical object)" // IMU built into a smartphone
* urn:iso:std:iso:11073:10101#65573 "MDC_MOC_VMS_MDS_SIMP" // Continua Personal Health Device, e.g. a dedicated IMU sensor
* $sct#49062001 "Device (physical object)" // generic code when the device type is not specified further
// * $sct#706689003 "Application programme software" // software on the device that labels the IMU data during the recording
// * urn:iso:std:iso:11073:10101#531981 "MDC_MOC_VMS_MDS_AHD" // Continua Personal Health Gateway

// TODO: value set for DeviceDefinition.classification.type of IMU sensors

ValueSet: HARBodyLocations
Id: har-body-locations
Title: "HAR Body Locations"
Description: "Common body locations of sensors in HAR datasets."
* ^experimental = false
* $sct#51185008 "Thoracic structure (body structure)" // chest, thorax
* $sct#279233000 "Structure of central surface region of chest (body structure)" // central surface of chest; use when the dataset says the sensor is centred on the chest (most common in HAR)
* $sct#77568009 "Structure of posterior region of trunk (body structure)" // back
* $sct#272612002 "Structure of surface region of back (body structure)" // surface of back; more specific than the code above since IMUs sit on the skin surface
* $sct#33673004 "Structure of waist (surface region) (body structure)" // waist
* $sct#29836001 "Hip region structure (body structure)" // hip, side not specified
* $sct#287579007 "Right hip region structure (body structure)" // right hip
* $sct#69536005 "Head structure (body structure)" // head
* $sct#8205005 "Wrist region structure (body structure)" // wrist, side not specified (some datasets do not say which wrist or let the participant choose)
* $sct#244002004 "Structure of surface of wrist region (body structure)" // surface of wrist, side not specified
* $sct#9736006 "Structure of right wrist region (body structure)" // right wrist
* $sct#5951000 "Structure of left wrist region (body structure)" // left wrist
* $sct#368209003 "Right upper arm structure (body structure)" // right upper arm
* $sct#34894009 "Structure of lateral surface of upper arm (body structure)" // lateral surface of upper arm, side not specified (sensor aligned with the long axis of the arm, see Table 5)
* $sct#368208006 "Left upper arm structure (body structure)" // left upper arm
* $sct#64262003 "Structure of right forearm (body structure)" // right forearm, some datasets say "right lower arm"
* $sct#66480008 "Structure of left forearm (body structure)" // left forearm, some datasets say "left lower arm"
* $sct#68367000 "Thigh structure (body structure)" // thigh, side not specified (e.g. MobiAct, where the participant chooses the trouser pocket, see Table 5)
* $sct#11207009 "Structure of right thigh (body structure)" // right thigh
* $sct#61396006 "Structure of left thigh (body structure)" // left thigh
* $sct#722116009 "Structure of calf of right lower leg (body structure)" // right calf
* $sct#722115008 "Structure of calf of left lower leg (body structure)" // left calf
* $sct#78234002 "Shin structure (body structure)" // shin, side not specified
* $sct#723591000 "Structure of shin of right lower leg (body structure)" // right shin
* $sct#723590004 "Structure of shin of left lower leg (body structure)" // left shin
* $sct#244019002 "Structure of surface region of ankle (body structure)" // surface of ankle, side not specified
* $sct#6685009 "Structure of right ankle (body structure)" // right ankle
* $sct#51636004 "Structure of left ankle (body structure)" // left ankle
* $sct#56459004 "Foot structure (body structure)" // foot, side not specified; needed for foot- or shoe-mounted sensors
* $sct#7769000 "Structure of right foot (body structure)" // right foot
* $sct#22335008 "Structure of left foot (body structure)" // left foot
* $sct#85562004 "Hand structure (body structure)" // hand
* $sct#78791008 "Structure of right hand (body structure)" // right hand
* $sct#85151006 "Structure of left hand (body structure)" // left hand
* $sct#6757004 "Structure of right knee region (body structure)" // right knee; does not say which side of the knee, could be read as centred on the knee
* $sct#82169009 "Structure of left knee region (body structure)" // left knee; same caveat as the right knee
* $sct#263301002 "Level of the third lumbar vertebra (body structure)" // L3
* $sct#37117007 "Right inguinal region structure (body structure)" // right inguinal region
* $sct#85119005 "Left inguinal region structure (body structure)" // left inguinal region

ValueSet: PlacementQualifier
Id: placement-qualifier
Title: "Placement Qualifier Value Set"
Description: "States whether the dominant, non-dominant, ipsilateral, contralateral, preferred or affected body structure is meant."
* ^experimental = false
* PlacementQualifierCS#preferred "Preferred"
* PlacementQualifierCS#affected "Affected"
* $sct#262379005 "Dominant side (qualifier value)"
* $sct#262458006 "Non-dominant side (qualifier value)"
* $sct#255208005 "Ipsilateral (qualifier value)"
* $sct#255209002 "Contralateral (qualifier value)"

ValueSet: IMUDeviceMetricType
Id: imu-device-metric-type
Title: "IMU Device Metric Type Value Set"
Description: "Device metric types for IMUs: the sensor modality, or the ISO/IEEE 11073 generic meter if the modality is not known."
* ^experimental = false
// ISO/IEEE 11073-10101 has no device specialization for IMUs yet, so the generic meter code is kept for
// metrics where the modality is not known. A smartphone used as a sensor acts as a generic measurement
// device in the PHD model.
* urn:iso:std:iso:11073:10101#69792 "Generic meter"
* include codes from system SensorModalityCS

ValueSet: AttachmentMethod
Id: attachment-method
Title: "Attachment Method Value Set"
Description: "How a sensor, or the device housing it, is fixed to the body or to clothing. The first codes come from the attachment methods reported in the HAR datasets in Table 1. The rest were added after testing coverage against wearable IMU datasets that were not part of that review."
* ^experimental = false
* AttachmentMethodCS#pocket "Pocket"
* AttachmentMethodCS#belt "Belt"
* AttachmentMethodCS#pouch "Pouch"
* AttachmentMethodCS#clip "Clip"
* AttachmentMethodCS#frame-mounted "Frame-mounted"
* AttachmentMethodCS#footwear-mounted "Footwear-mounted"
* AttachmentMethodCS#armband "Armband"
* AttachmentMethodCS#watch-strap "Watch strap"
* AttachmentMethodCS#adhesive "Adhesive"
* AttachmentMethodCS#garment-integrated "Garment-integrated"
* AttachmentMethodCS#unconstrained-carry "Unconstrained carry"
* AttachmentMethodCS#elastic-strap "Elastic strap"
* $sct#48990009 "Strap"

ValueSet: HARActivityLabels
Id: har-activity-labels
Title: "HAR Activity Labels Value Set"
Description: "Activity labels used as ground truth for machine learning in the general HAR use case (locomotion, posture, stairs and elevators, cycling, gym exercises). All codes come from HARActivityLabelsCS, since no external code system covers the activity vocabularies of these datasets."
* ^experimental = false
* include codes from system HARActivityLabelsCS

ValueSet: GeriatricAssessmentLabels
Id: geriatric-assessment-labels
Title: "Geriatric Assessment Labels Value Set"
Description: "Labels for structured assessments, rehabilitation exercises, falls and postural transitions in the automatic geriatric assessment use case (Otago, shoulder rehabilitation, TUG, sit-to-stand, simulated falls, freezing of gait). Contains the LOINC codes for the TUG and the 30-second chair stand test, walking from HARActivityLabelsCS (part of the Otago programme) and all codes from GeriatricAssessmentLabelsCS. Everyday household activities are in the ADLLabels value set. GeriatricExercisePrescription binds to this value set so that only actual exercises can be prescribed."
* ^experimental = false
* $loinc#89423-8 "Time to rise from chair, walk 10 feet and back, and return to sitting [TUG]"
* $loinc#66247-8 "Sit to stand frequency in 30 seconds"
* HARActivityLabelsCS#walking "Walking" // Otago walking plan
* include codes from system GeriatricAssessmentLabelsCS

ValueSet: ADLLabels
Id: adl-labels
Title: "ADL Labels Value Set"
Description: "Activities of daily living observed at home (eating, preparing food, hygiene, housework and similar) for the automatic geriatric assessment use case. All codes come from ADLLabelsCS. Kept separate from GeriatricAssessmentLabels so that a home exercise programme cannot prescribe, for example, washing dishes."
* ^experimental = false
* include codes from system ADLLabelsCS

ValueSet: ActivityLabels
Id: activity-labels
Title: "Activity Labels Value Set"
Description: "Union of HARActivityLabels, GeriatricAssessmentLabels and ADLLabels. ActivityLabelObservation.code binds to this value set so that one profile accepts labels from both use cases. Implementations that only need one vocabulary can bind to one of the three value sets directly."
* ^experimental = false
* include codes from valueset HARActivityLabels
* include codes from valueset GeriatricAssessmentLabels
* include codes from valueset ADLLabels

ValueSet: AnnotationProvenance
Id: annotation-provenance
Title: "Annotation Provenance Value Set"
Description: "How an activity label was produced: human-expert, human-reviewed, semi-automated or algorithm-generated. Bound with required strength in the ObservationAnnotationProvenance extension."
* ^experimental = false
* include codes from system AnnotationProvenanceCS

ValueSet: SensorModality
Id: sensor-modality
Title: "Sensor Modality Value Set"
Description: "Measured quantity of a raw IMU signal (accelerometer, gyroscope, magnetometer and values computed from them). Bound to LongRawSensorModalityObservation.code."
* ^experimental = false
* include codes from system SensorModalityCS

ValueSet: SensorAxis
Id: sensor-axis
Title: "Sensor Axis Value Set"
Description: "Axes of a multi-axis IMU signal. Bound to LongRawSensorModalityObservation.component.code, where each component names one column of the raw data file."
* ^experimental = false
* include codes from system SensorAxisCS

ValueSet: IMUSensorUnits
Id: imu-sensor-units
Title: "IMU Sensor Units Value Set"
Description: "UCUM units used for raw IMU signals in the reviewed datasets. Bound to IMUDeviceMetric.unit."
* ^experimental = false
* $unitsOfMeasure#m/s2 "m/s2"
* $unitsOfMeasure#[g] "[g]"
* $unitsOfMeasure#rad/s "rad/s"
* $unitsOfMeasure#deg/s "deg/s"
* $unitsOfMeasure#uT "uT"
* $unitsOfMeasure#G "G"
