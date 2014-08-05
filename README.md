LDM
===

Ansible role that installs and configures [the Unidata Local Data Manager (LDM)
system](http://www.unidata.ucar.edu/software/ldm/).


## Example

```yaml
# LDM user
ldm_user: ldm
# Home directory of the LDM user
ldm_home: /opt/ldm
# LDM version number
ldm_version: '6.12.3'

# Fully-qualified name of the host where the LDM is installed.  The default
# value is just a placeholder.  **You must provide the fully-qualified name
# of the LDM host.**
ldm_host: your.ldm.host.name

# Request data-products from upstream LDMs. Each request is a hash with three
# items: `feedset`, a union of feedtypes to request; `pattern`, an extended
# regular expression for the data product identifiers to match; `host`, a host
# identifier: either a host name or IP adress in "dotted-quad" format.
# Optionally, the port on an upstream host can be appended after a colon.
ldm_request_entries:
  - feedset: WMO
    pattern: '.*'
    host: primary.host.name
  - feedset: WMO
    pattern: '.*'
    host: secondary.host.name:3152
```


## Variables

This role defines variables and sets reasonable default values for them.  The
exception is a variable `host_name` that specifies the fully-qualified name of
the host where the LDM is installed.  You must provide the fully-qualified name
of the LDM host in `host_name`.

* `ldm_user`: LDM user.  The default value is "ldm".
* `ldm_home`: Home directory of the LDM user.  The default value is "/opt/ldm".
* `ldm_version`: LDM version number.  The default value is "6.12.3".

The following variables provide options that are configured with `regutil`
command.

* `ldm_host`: Fully-qualified name of the host where the LDM is installed.  The
  default value is "your.ldm.host.name" but is just a placeholder.  **You must
  provide the fully-qualified name of the LDM host.**
* `ldm_port`: Port to which the LDM listens for incoming connections. The
  default value is 388.
* `ldm_log_file`: LDM log file.  The default value is
  "/opt/ldm/var/logs/ldmd.log".
* `ldm_log_counts`: The number of log files to be kept around.  The default
  value is 7.

The following variables are used to compose entries in ldmd.conf.

* `ldm_request_entries`: List of requests for data-products from upstream LDMs.
  The default value is an empty list.  Each request is a hash with three items:
  `feedset`, a union of feed types to request; `pattern`, an extended regular
  expression for the data product identifiers to match; `host`, a host
  identifier: either a host name or IP address in "dotted-quad" format.
  Optionally, the port on an upstream host can be appended after a colon.


## Requirements

This role has been tested with Ansible 1.6.


### Platforms

This role has been developed and tested on Ubuntu; therefore, the role likely
work on other Debian-based distributions as well.


## Development

To perform a syntax check, run a helper script: `./test.sh`.
