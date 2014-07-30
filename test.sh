#!/usr/bin/env bash
#
# Perform a syntax check of this role.
#

\unalias -a

HOSTFILE=/tmp/hosts
echo localhost >$HOSTFILE
ansible-playbook -i $HOSTFILE test.yml --syntax-check
