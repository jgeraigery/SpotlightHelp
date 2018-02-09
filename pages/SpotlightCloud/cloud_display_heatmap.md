---
title: Heat Map from the Spotlight web site
tags: [heatmap]
keywords: heatmap
summary: "The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. The heat map refreshes itself automatically when connections are added and removed and when there is a change in the alarm status. Connections are removed from the heat map when monitoring is disabled and while they are in planned outage. The Heat Map answers the question: Which monitored connections require the most urgent attention?"
sidebar: p_cloud_sidebar
permalink: cloud_display_heatmap.html
folder: CloudConnect
---


## Open the Heat map

1. From a web browser, open the Spotlight web site - [http://www.spotlightessentials.com](http://www.spotlightessentials.com).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab. The Heat map is the opening Monitoring screen.

## Connection color and surface area
The Heat Map display organizes connections based on the comparative number and severity of alarms raised against them. Connections with the most alarms raised against them are given the most surface area on the heat map. Connections are colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

## List raised alarms
To list the alarms raised for the connections on this heatmap, open the **Alarms** panel. From the top right of the Overview page, click {% include inline_imageCloud.html file="tb_rightpopup.png" alt="Open the alarms panel" %}

The Alarms panel shows the number of alarms raised of each severity and lists each alarm currently raised. Sort the alarms by time or severity. If many alarms have been raised then use the search feature to search for the alarm and the next and previous links to page through the list of alarms. Click on an alarm for more information.

{% include imageCloud.html file="pane_heatmap_alarmspanel.png" alt="Alarms Panel" %}


### Alarm analysis
Now you have selected an alarm from Alarms panel. Click **Acknowledge** to acknowledge the alarm. Click **Snooze** to snooze the alarm.

{% include imageCloud.html file="pane_heatmap_alarmpanel.png" alt="Alarm Panel" %}


## Drilldown on a connection
Click on a connection to open the [Spotlight Overview page][cloud_display_overview] for the connection.

{% include links.html %}
