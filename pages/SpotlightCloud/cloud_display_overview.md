---
title: Spotlight Overview pages from the Spotlight web site
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_cloud_sidebar
permalink: cloud_display_overview.html
folder: CloudConnect
---

## Open the Spotlight Overview page

1. From a web browser, open the Spotlight web site - [http://www.spotlightessentials.com](http://www.spotlightessentials.com).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab.
4. Ways to open the Spotlight Overview page from the **Monitoring** screen:

   * Click on a connection on the [Heat Map][cloud_display_heatmap]
   * Click on a connection on the [Connections Display][cloud_display_connections].

## Component color
Spotlight Overview page components are colored. If the color is other than green then the component is in an alarm state. If more than one alarm is raised against the component then the color shows the highest severity alarm raised.

Default Color | Severity
--------------|---------
{% include inline_imageClient.html file="icon_alarm_gray.png" alt="Disabled color" %} | Disabled
{% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal color" %} | Normal / No alarm is currently raised.
{% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information color" %} | Information
{% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low color" %} | Low
{% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium
{% include inline_imageClient.html file="icon_alarm_red.png" alt="High color" %} | High

## Flows and components in an alarm state
To list the alarms raised for this connection, open the **Alarms** panel. From the top right of the Overview page, click {% include inline_imageCloud.html file="tb_rightpopup.png" alt="Open the alarms panel" %}

The Alarms panel shows the number of alarms raised of each severity and lists each alarm currently raised. Sort the alarms by time or severity. If many alarms have been raised then use the search feature to search for the alarm and the next and previous links to page through the list of alarms. Click on an alarm for more information.

{% include imageCloud.html file="pane_alarmspanel.png" alt="Alarms Panel" %}

### Alarm focus
Now you have selected an alarm from the list of alarms. Click **Acknowledge** to acknowledge the alarm. Click **Snooze** to snooze the alarm.

{% include imageCloud.html file="pane_alarmpanel.png" alt="Alarm Panel" %}

## Flows and components tailored to the connection type
The Spotlight Overview page flows and components are tailored to the connection type. Hover your mouse over a component for a description.

{% include links.html %}
