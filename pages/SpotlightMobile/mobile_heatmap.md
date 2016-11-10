---
title: Heat Map for Spotlight Mobile
tags: [heatmap]
keywords: alarms, heatmap, mobile
summary: "The Heat Map answers the question: Which monitored connections require the most urgent attention? The Heat Map organizes monitored connections based on the comparative number and severity of their alarms. Connections with the most alarms raised against them are given the most surface area."
sidebar: p_mobile_sidebar
permalink: mobile_heatmap.html
folder: SpotlightMobile
---

The Heat Map is the first screen you see when you open Spotlight Mobile.

Tap on a connection to open the [Alarm List][mobile_alarmlist] for the connection.

{% include imageMobile.html file="screen_iOS-Heatmap.PNG" alt="Heatmap" %}

## Color indicates alarm severity.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.


{% include links.html %}
