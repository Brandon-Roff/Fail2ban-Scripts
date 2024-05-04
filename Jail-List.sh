#!/bin/sh

#Jail collector

sudo fail2ban-client status|awk -F: '/Jail list:/ { split($2,jail,",") ; for (i in jail) { gsub(/[\t ]/,"",jail[i]);

#output

system("sudo fail2ban-client status "jail[i]); }; }'
