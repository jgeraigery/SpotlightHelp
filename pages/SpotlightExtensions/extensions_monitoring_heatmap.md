---
title: Heat Map in Spotlight Extensions
tags: [heatmap]
keywords: heatmap
summary: "The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. The heatmap refreshes itself automatically when connections are added and removed and when there is a change in the alarm status. Connections are removed from the heat map when monitoring is disabled and while they are in planned outage. The Heat Map answers the question: Which monitored connections require the most urgent attention?"
sidebar: p_extensions_sidebar
permalink: extensions_monitoring_heatmap.html
folder: SpotlightExtensions
---


## Open the Heatmap

1. Open SQL Server Management Studio.
2. From the **Spotlight** menu, select **Heatmap**.

{% include note.html content="The first time you use Spotlight Extensions Monitoring you will be prompted to fill in the [Spotlight Sign in dialog][extensions_spotlightsignin]." %}

## Connection color and surface area
The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. Connections are colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageExtensions.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageExtensions.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageExtensions.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageExtensions.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageExtensions.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

## Alarms raised for the connection
Click **Alarms** to open the [Alarm List][extensions_monitoring_alarmlist].

## Drilldown on the connection
Click on the connection to open the [Spotlight Overview page][extensions_monitoring_overview] for the connection.

{% include links.html %}
