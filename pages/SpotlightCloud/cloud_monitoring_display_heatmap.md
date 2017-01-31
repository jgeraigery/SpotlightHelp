---
title: Heat Map in the Spotlight Cloud
tags: [heatmap]
keywords: heatmap
summary: "The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. The heatmap refreshes itself automatically when connections are added and removed and when there is a change in the alarm status. Connections are removed from the heat map when monitoring is disabled and while they are in planned outage. The Heat Map answers the question: Which monitored connections require the most urgent attention?"
sidebar: p_cloud_sidebar
permalink: cloud_monitoring_display_heatmap.html
folder: SpotlightCloud
---

The Heat Map is the opening **Monitoring** screen on the Spotlight web site.

Click on a connection to open the [Alarm List][cloud_monitoring_display_alarmlist] for the connection.



## Color indicates alarm severity.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.



{% include links.html %}
