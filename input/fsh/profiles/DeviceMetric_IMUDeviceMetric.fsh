Profile: IMUDeviceMetric
Parent: DeviceMetric
Id: imu-device-metric
Title: "IMU Device Metric"
Description: "Device metric of an inertial measurement unit (IMU), e.g. accelerometer, gyroscope or magnetometer. type gives the sensor modality and unit the unit of the raw values."

* type 1.. MS
* type from IMUDeviceMetricType (extensible)
* unit 1.. MS
* unit from IMUSensorUnits (extensible)
* device 1.. MS
* operationalStatus 1.. MS
* category 1.. MS
* measurementFrequency 0..1 MS
* calibration 0..1 MS
* calibration.type 0..1 MS
* calibration.state 0..1 MS
* calibration.time 0..1 MS
