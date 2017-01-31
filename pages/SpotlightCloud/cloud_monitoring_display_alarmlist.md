---
title: Alarms list in the Spotlight Cloud
summary: "Spotlight Today is a display of recent alarms and alarms requiring acknowledgment."
sidebar: p_cloud_sidebar
permalink: cloud_monitoring_display_alarmlist.html
folder: SpotlightCloud
---

## How to open the Alarm list


*  Tap a connection on the [Heat Map][cloud_monitoring_display_heatmap].
*  Tap a connection or connection View from [Connections][cloud_monitoring_display_connect].

## How to use the Alarm list

Each alarm is colored according to the severity of the alarm. Tap the row for alarm details, to [Snooze Alarm][cloud_monitoring_alarm_snooze] or [Acknowledge Alarm][cloud_monitoring_alarm_acknowledge].

{% include tip.html content="On an iPad, tap the colored icon." %}

{% include imageMobile.html file="screen_iOS-iphone-alarm-list.png" alt="Alarm List Screen" %}

## Tell me about each alarm

Information about each alarm is documented under the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "alarms_by_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>



{% include links.html %}
