---
title: Heat Map in Spotlight Optimizer
tags: [heatmap]
keywords: heatmap
summary: "A simple ‘at-a-glance’ method for monitoring your SQL Server connections within SQL Server Management Studio."
sidebar: p_optimizer_sidebar
permalink: optimizer_display_heatmap.html
folder: SpotlightOptimizer
---


## Open the Heatmap
The Heat Map is the opening **Monitoring** screen on the Spotlight web site.

## Connection color and surface area
The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. Connections are colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

## Alarms raised for the connection
Click on a connection to open the [Alarm List][cloud_monitoring_display_alarmlist] for the connection.

{% include links.html %}
