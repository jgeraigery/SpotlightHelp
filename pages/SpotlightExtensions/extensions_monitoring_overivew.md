---
title: Overview page in Spotlight Extensions
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_extensions_sidebar
permalink: extensions_monitoring_overview.html
folder: SpotlightExtensions
---

## Open the Spotlight Overview page

1. Open SQL Server Management Studio.
2. From the **Spotlight** menu, select **Heatmap**.
3. Click on a connection on the heatmap to open the Heatmap for that connection.

{% include note.html content="The first time you use Spotlight Extensions Monitoring you will be prompted to fill in the [Spotlight Sign in dialog][extensions_spotlightsignin]." %}

## Component color
Spotlight Overview page components are colored. If the color is other than green then the component is in an alarm state. If more than one alarm is raised against the component then the color shows the highest severity alarm raised.

Default Color | Severity
--------------|---------
{% include inline_imageExtensions.html file="icon_alarm_green.png" alt="Normal color" %} | Normal / No alarm is currently raised.
{% include inline_imageExtensions.html file="icon_alarm_blue.png" alt="Information color" %} | Information
{% include inline_imageExtensions.html file="icon_alarm_yellow.png" alt="Low color" %} | Low
{% include inline_imageExtensions.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium
{% include inline_imageExtensions.html file="icon_alarm_red.png" alt="High color" %} | High

## Flows and components in an alarm state
Click on the component in an alarm state to show the alarms raised against the component on the the [Alarm List][extensions_monitoring_alarmlist].

## Flows and components tailored to the connection type
The Spotlight Overview page flows and components are tailored to the connection type. More about the [SQL Server Overview page][sqlserver_drilldown_overview].




{% include links.html %}
