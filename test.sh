#!/usr/bin/env bash
#
# Perform a syntax check on this role.
#

\unalias -a


print_error_and_die() {
    echo "$@"
    exit 1
} >&2


which ansible >/dev/null 2>&1 || print_error_and_die "Ansible is not installed"

HOSTFILE=/tmp/hosts
echo localhost >$HOSTFILE
ansible-playbook -i $HOSTFILE test.yml --syntax-check
