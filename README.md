LDM
===

Ansible role that installs and configures [the Unidata Local Data Manager (LDM)
system](http://www.unidata.ucar.edu/software/ldm/).


## Requirements

This role has been tested with Ansible 1.6.


### Platforms

This role has been developed and tested on Ubuntu; therefore, the role likely
work on other Debian-based distributions as well.


## Variables

This role defines variables below and sets reasonable default values for them.
The exception is a variable `host_name` that specifies the fully-qualified name
of the host where the LDM is installed.  You must provide the fully-qualified
name of the LDM host in `host_name`.

```yaml
# LDM user
ldm_user: ldm
# Home directory of the LDM user
ldm_home: /opt/ldm
# LDM version number
ldm_version: '6.12.3'

#
# Configuration via etc/ldmd.conf
#
# Request data-products from upstream LDMs
ldm_request_entries: []

#
# Configuration via `regutil` command
#
# Fully-qualified name of the host where the LDM is installed.  The default
# value is just a placeholder.  **You must provide the fully-qualified name
# of the LDM host.**
ldm_host: your.ldm.host.fqdn
# Port to which the LDM listens for incoming connections
ldm_port: 388
# LDM log file
ldm_log_file: "{{ ldm_home }}/var/logs/ldmd.log"
# The number of log files to be kept around
ldm_log_counts: 7
```


## Development

To perform a syntax check, run a helper script: `./test.sh`.
