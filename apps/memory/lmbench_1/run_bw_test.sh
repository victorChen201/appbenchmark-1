#!/bin/bash

CURDIR=$(cd `dirname $0`; pwd)

pushd ${CURDIR}/ansible > /dev/null

ansible-playbook -i hosts  ${CURDIR}/ansible/run_bw_test.yml --user=root --extra-vars "ansible_sudo_pass=root" & 

popd > /dev/null

