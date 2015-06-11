#!/bin/bash

mkdir /var/run/sshd
mkdir -p /tnoah/.ssh
chmod 700 /tnoah/.ssh
mv /authorized_keys /tnoah/.ssh/.
chmod 600 /tnoah/.ssh/*
chown -Rf tnoah:tnoah /tnoah/.ssh

# configure sshd to block authentication via password
sed -i.bak 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.bak


