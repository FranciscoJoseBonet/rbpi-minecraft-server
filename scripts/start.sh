#!/bin/bash
RAM_MIN="6G"
RAM_MAX="8G"

exec java -Xms$RAM_MIN -Xmx$RAM_MAX -XX:+UseZGC -jar paper.jar --nogui
