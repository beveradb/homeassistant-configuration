#!/bin/sh
git clone --single-branch --branch dyson_new_fans https://github.com/etheralm/home-assistant.git /config/etheralm-home-assistant
mkdir -p /config/custom_components/climate
mkdir -p /config/custom_components/fan
mkdir -p /config/custom_components/sensor
mkdir -p /config/custom_components/vacuum
cp /config/etheralm-home-assistant/homeassistant/components/dyson.py /config/custom_components/
cp /config/etheralm-home-assistant/homeassistant/components/climate/dyson.py /config/custom_components/climate/
cp /config/etheralm-home-assistant/homeassistant/components/fan/dyson.py /config/custom_components/fan/
cp /config/etheralm-home-assistant/homeassistant/components/fan/services.yaml /config/custom_components/fan/
cp /config/etheralm-home-assistant/homeassistant/components/sensor/dyson.py /config/custom_components/sensor/
cp /config/etheralm-home-assistant/homeassistant/components/vacuum/dyson.py /config/custom_components/vacuum
rm -rf /config/etheralm-home-assistant
echo "Done - now restart HomeAssistant to activate the new dyson component code"
