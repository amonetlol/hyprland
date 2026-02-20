#!/usr/bin/env bash
# Dependência: net-tools
ip addr | grep 192 | awk '{print "IP: " $2}' | cut -d'/' -f1
