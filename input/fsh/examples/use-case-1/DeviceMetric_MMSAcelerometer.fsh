Instance: PHDSensorDeviceMMSSensorAccelerometerDeviceMetricUC1
InstanceOf: IMUDeviceMetric
Title: "(PHD) MMS Accelerometer Device Metric (UC1)"
Description: "Device metric of the accelerometer in the MMS sensor device."
Usage: #example
* id                         = "uc1-002-mms-sensor-accelerometer-device-metric"
* type                       = SensorModalityCS#accelerometer "Accelerometer"
* unit                       = $unitsOfMeasure#[g] "[g]" // the MetaWear CSV is in g
* device                     = Reference(uc1-002-mms-accelerometer-sensor)
* operationalStatus          = #on
* category                   = #measurement
* measurementFrequency.value = 50
* measurementFrequency.unit  = $unitsOfMeasure#Hz "Hertz"
* calibration.type           = #unspecified
* calibration.state          = #calibrated
* calibration.time           = "2024-09-05T09:03:04-05:00"
