#!/bin/bash
# Authors : Sarah Litz
# Date: 11/29/2020

cp /var/log/syslog ~
egrep -i error ~/syslog | tee error_log_check.txt
mailx -A error_log_check.txt -s "error log with mailx" sali7864@colorado.edu < /dev/null

