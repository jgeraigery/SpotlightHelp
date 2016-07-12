---
title: Spotlight Enterprise Heatmap
tags: [heatmap]
keywords: heatmap
summary: "The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. The heatmap refreshes itself automatically when connections are added and removed and when there is a change in the alarm status of the connections. Connections are removed from the heat map when monitoring is disabled and while they are in planned outage. The Heat Map answers the question: Which monitored connections require the most urgent attention?"
sidebar: p_enterprise_sidebar
permalink: enterprise_heatmap
folder: SpotlightEnterprise
---


## Open the Heatmap

Click **Monitor \| Heat Map** from the Spotlight ribbon to open the Heat Map showing all monitored connections.

{% include tip.html content="The Heatmap can be opened showing a custom view of monitored connections. From the left Connections pane, click on a custom view or connection type then click **Heat Map** from the display pane." %}


## Connection color and surface area

The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. Connections are colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal color" %}  | Normal | No alarms are raised against this connection.
{% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information color" %}  | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low color" %}  | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium color" %}  | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageClient.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

## Drilldown on a connection

### Hover the mouse over a connection

*  Show the full name of the connection
*  Show the connection type (For example: SQL Server, Windows, Analysis Services, SQL Azure)
*  Show the top 5 alarms currently raised against the connection
*  If there are more than 5 alarms, list the remaining alarm counts of each severity


### Click on a connection

Open the Spotlight Overview page for the connection


## Configure
The Heat Map can be configured to be the first page you see when you open the Spotlight Client. For more information, see Spotlight startup location.
