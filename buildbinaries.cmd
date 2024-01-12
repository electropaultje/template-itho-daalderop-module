@ECHO OFF
ESPHOME clean ithodaalderop-2relay.yaml
ESPHOME compile ithodaalderop-2relay.yaml
COPY .esphome\build\ithodaalderop\.pioenvs\ithodaalderop\firmware.bin .\ithodaalderop-2relay.bin /Y /V
ESPHOME compile ithodaalderop-4relay.yaml
COPY .esphome\build\ithodaalderop\.pioenvs\ithodaalderop\firmware.bin .\ithodaalderop-4relay.bin /Y /V