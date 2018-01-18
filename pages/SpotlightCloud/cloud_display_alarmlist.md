---
title: Alarms list from the Spotlight web site
summary: "List all alarms raised against the connection or connection view."
sidebar: p_enterprise_sidebar
permalink: cloud_display_alarmlist.html
folder: SpotlightCloud
---

## Open the Alarm list

1. From a web browser, open the Spotlight web site - [https://www.spotlightesssentials.com](https://www.spotlightesssentials.com).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab. The Heatmap is the opening Monitoring screen.
4. Click on the **Alarms** link to open the Alarms screen.

## Color
Each alarm is colored according to the severity of the alarm.

## Group / Sort alarms
The top of the **Alarms** screen has options to:

* Group by Connection, Severity or Alarm
* Sort alarms by Severity or Date

## Snooze / Acknowledge alarms
Click to [Snooze Alarm][cloud_alarm_snooze] or [Acknowledge Alarm][cloud_alarm_acknowledge].


## Tell me about each alarm

Information about each alarm is documented under the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "alarms_by_connection_type" %}
<li><a href="{{ page.url | remove_first:'/' }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>



{% include links.html %}
