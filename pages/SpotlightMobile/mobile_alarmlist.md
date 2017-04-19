---
title: Alarm list in Spotlight Mobile
keywords: alarms, display, mobile
summary: "List all alarms raised against the connection or connection view."
sidebar: p_mobile_sidebar
permalink: mobile_alarmlist.html
folder: SpotlightMobile
---

## How to open the Alarm list

Tap the Alarms icon from the [Heatmap][mobile_heatmap] or [Spotlight Overview page][mobile_heatmap] to open the alarms list.

## How to use the Alarm list

Each alarm is colored according to the severity of the alarm. Tap the row for alarm details, to [Snooze Alarm][mobile_alarm_snooze] or [Acknowledge Alarm][mobile_alarm_acknowledge].

{% include tip.html content="On an iPad, tap the colored icon." %}

{% include imageMobile.html file="screen_iOS-iphone-alarm-list.png" alt="Alarm List Screen" %}


### Sort or group the alarms

Tap the icon. Sort by date or severity. Group by server, severity or alarm.

Android | iPhone
--------|-------
{% include inline_imageMobile.html file="tap_android-sort-icon.png" alt="Sort Android" %} | {% include inline_imageMobile.html file="tap_iOS-sort-group-alarms.png" alt="Sort iPhone" %}


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
