LDM
===

This role installs and configures [the Unidata Local Data Manager (LDM)
system](http://www.unidata.ucar.edu/software/ldm/).


## Platforms

This role was developed and only tested on Ubuntu 14.04.


## Variables

* `ldm_user`: sets the LDM user (default: ldm)
* `ldm_home`: sets the home directory of the LDM user (default: /opt/ldm)
* `ldm_host`: (default: localhost)
* `ldm_version`: sets the LDM version (default: "6.12.3")
