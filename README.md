LDM
===

Ansible role that installs and configures [the Unidata Local Data Manager (LDM)
system](http://www.unidata.ucar.edu/software/ldm/).


## Requirements and Dependencies

This role was tested with Ansible 1.6.


### Platforms

This role was developed and was only tested on Ubuntu.  I assume that this role
also works on other Debian-based distribution.


## Variables

* `ldm_user`: sets the LDM user (default: ldm)
* `ldm_home`: sets the home directory of the LDM user (default: /opt/ldm)
* `ldm_host`: (default: localhost)
* `ldm_version`: sets the LDM version (default: "6.12.3")


## Development

To perform a syntax check, run a helper script: `./test.sh`.
