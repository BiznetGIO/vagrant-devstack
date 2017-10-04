#!/bin/bash
# Install base tools
yum install -y epel-release
yum install -y git wget python3-devel python2-devel python2-pip python3-pip python-os-testr

# Download pike stable devstack
git clone -b stable/pike https://github.com/openstack-dev/devstack.git
chmod 777 devstack/* -R
chmod 777 devstack -R
cd devstack

su -c "$PWD/stack.sh" vagrant
