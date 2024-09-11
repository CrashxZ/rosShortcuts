#!/bin/bash
# get UHD Drivers
apt-get install libuhd-dev uhd-host

# Get SRS RAN Project
add-apt-repository ppa:softwareradiosystems/srsran
apt-get update
apt-get install srsran -y



