#!/bin/bash

hostname=$(hostname)

smtpserver=()
addresstosendto=()
addresstosendfrom=()

vnstat -m | s-nail -v -r "$addresstosendfrom" -s "Monthly Network Usage for $hostname" -S smtp="$smtpserver" -S smtp-auth=none -S ssl-verify=ignore $addresstosendto
