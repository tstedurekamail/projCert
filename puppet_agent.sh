#!/bin/bash

puppet_status = $(sudo systemctl status puppet)

if [[ $puppet_status =~ .*"active".* ]]
then
  echo -e "\nPuppet agent is already active\n"
else
  echo -e "\nInstalling and configuring puppet agent\n"
  # sudo wget https://apt.puppetlabs.com/puppet6-release-focal.deb
  # sudo dpkg -i puppet6-release-focal.deb
  # sudo apt-get update -y
  # sudo apt-get -y install puppet-agent
  # sudo systemctl start puppet
  # sudo systemctl enable puppet
  # sudo systemctl status puppet
fi
