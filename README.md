Docker image for Cyber Power PowerPanel Business
================================================

This Docker image contains the Business Edition of the PowerPanel UPS
monitoring tool, running in local mode.

Build
-----

`docker build -t powerpanel .`

Run
---

Set `$DATADIR` to a local directory to persist settings.

`docker run -it --rm -p 3052:3052 -v $DATADIR:/usr/local/PPB/db_local powerpanel`
