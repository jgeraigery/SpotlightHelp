---
title: Alarms list in the Spotlight Cloud
summary: "List all alarms raised against the connection or connection view."
sidebar: p_cloud_sidebar
permalink: cloud_monitoring_display_alarmlist.html
folder: SpotlightCloud
---

## Open the Alarm list

1. From the Spotlight web site [Sign in to Spotlight Cloud.](https://www.spotlightessentials.com/home/SignIn)
2. Go to the **Monitoring** screen on the Spotlight web site - [https://www.spotlightesssentials.com](https://www.spotlightesssentials.com).
3. Click on the **Alarms** link.

## Color
Each alarm is colored according to the severity of the alarm.

## Group / Sort alarms
The top of the **Alarms** screen has options to:

* Group by Connection, Severity or Alarm
* Sort alarms by Severity or Date

## Snooze / Acknowledge alarms
Click to [Snooze Alarm][cloud_monitoring_alarm_snooze] or [Acknowledge Alarm][cloud_monitoring_alarm_acknowledge].


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
