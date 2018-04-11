#!/bin/sh

# multiple records for test VIN 45.19342, 5.76704 ; 45.19383, 5.7671; 45.19344, 5.76659 ; 45.19395, 5.76695

curl \
    -i \
    -H "Content-type: application/json" \
    -X POST \
    -d '{"carId":"1","vin":"testvin", "timestamp":1234567890, "latitude":45.19342, "longitude":5.76704, "readings":{"speed":"0","rpm":0}}' \
    "http://192.168.56.101:1880/obd"

curl \
    -i \
    -H "Content-type: application/json" \
    -X POST \
    -d '{"carId":"2","vin":"testvin", "timestamp":1234568999, "latitude":45.19383, "longitude":5.7671, "readings":{"speed":"0","rpm":0}}' \
    "http://192.168.56.101:1880/obd/"

curl \
    -i \
    -H "Content-type: application/json" \
    -X POST \
    -d '{"carId":"3","vin":"testvin", "timestamp":1234589999, "latitude":45.19344, "longitude":5.76659, "readings":{"speed":"0","rpm":0}}' \
    "http://192.168.56.101:1880/obd/"

# different VIN
curl \
    -i \
    -H "Content-type: application/json" \
    -X POST \
    -d '{"carId":"4","vin":"othervin", "timestamp":1234567890, "latitude":45.19395, "longitude":5.76695, "readings":{"speed":"0","rpm":0}}' \
    "http://192.168.56.101:1880/obd/"
