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

This role sets reasonable default values for the variables below except for
`host_name` that specifies the fully-qualified name of the host where the LDM
is installed.  You must provide the fully-qualified name of the LDM host in
`host_name`.

```yaml
# LDM user
ldm_user: ldm
# Home directory of the LDM user
ldm_home: /opt/ldm
# Fully-qualified name of the host where the LDM is installed.  The default
# value is just a placeholder.  **You must provide the fully-qualified name
# of the LDM host.**
ldm_host: localhost
# LDM version number
ldm_version: '6.12.3'
# Required packages
ldm_required_packages:
  - build-essential
  - pax
  - libxml2-dev
  - zlib1g-dev
  - expect

```


## Development

To perform a syntax check, run a helper script: `./test.sh`.
