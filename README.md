# Itho Daalderop Heatpump Reader and Controller

## Intro
The Heatpump Reader and Controller is used to listen to the communication between the various components of the Itho Daalderop Amber and HP-S heat pump. It uses ESPHome to expose different sensors and control a number of relay switches.

The goal of this device is to make it very easy to integrate the running values of the different sensors in the Itho Daalderop heat pumps into Home Assistant in a plug and play fashion. A basic web interface is available directly from the device, but the most value is added when it is connected to Home Assistant (for logging and displaying purposes).

**The Heatpump Reader and Controller is custom hardware and can be ordered [here](https://forms.gle/3R2AAtGyy7Cqq65Q9).**

## YAML configuration
This repo contains the ESPHome configuration YAML template.

Use the `2relay.yaml` version for the PCB with 2 relays  
Use the `4relay.yaml` version for the PCB with 4 relays

Use the `-v2-` version for PCB version 2.2 and above (from this version on the PCB has a USB-C connector)

## Exposed entities
This Heatpump Reader and Controller exposes a number of sensors:

- Temperature
  - Inside (Room)
  - Ambient
  - Indoor coil (Tup)
  - Heat exchanger water inlet (Tui)
  - Heat exchanger water outlet (Tuo)
  - Outdoor coil  (Tp)
  - Discharge temperature (Td)
  - Suction temperature (Ts)
  - Cooling / heating temperature (Tc)
  - Circuit 1 (Tv1) and 2 (Tv2)
  - Domestic hot water (Tw)
- Pressure
  - Discharge pressure (Pd)
  - Suction pressure (Ps)  
- Compressor
  - Actual speed
  - Setpoint
- Fan
  - Actual speed
  - Setpoint
- Pump speed
  - Internal pump speed (low, medium, high)  
- Electricity
  - Outdoor voltage
  - Outdoor current  
- Binary sensors
  - Pump 1 active
  - Pump 2 active
  - Domestic hot water pump active
  - Heating switch active
  - Three way valve state (heating, boiler)
  - Internal auxilliary heating active
  - Defrost in progress


Furthermore there are some calculated sensors:
- Delta T (difference between inlet and outlet of tshe heat exchanger)  
- Calculated heating setpoint for when heating curve is used (based on ten numbers you must set the same as the heating curve combined with the ambient temperature)

**Besides the above mentioned sensors there are also three connections for extra temperature sensors, a flow sensor and two or four (depending of the ordered hardware) relays to control the heating, cooling and smart grid inputs.**