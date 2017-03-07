---
title: Spotlight Overview pages in Spotlight Cloud
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_cloud_sidebar
permalink: cloud_display_overview.html
folder: SpotlightCloud
---

## Open the Spotlight Overview page

1. From a web browser, open the Spotlight web site - [https://www.spotlightesssentials.com](https://www.spotlightesssentials.com).
2. From the Spotlight web site [Sign in to Spotlight Cloud.](https://www.spotlightessentials.com/home/SignIn)
3. Go to the **Monitoring** screen on the Spotlight web site - [https://www.spotlightesssentials.com](https://www.spotlightesssentials.com).
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
Click on the component in an alarm state to show the alarms raised against the component on the the [Alarm List][cloud_display_alarmlist].

## Flows and components tailored to the connection type
The Spotlight Overview page flows and components are tailored to the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "overview_page_for_each_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>




{% include links.html %}
