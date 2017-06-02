---
title: Diagnose alarms in Spotlight Mobile
keywords: alarms
sidebar: p_mobile_sidebar
permalink: mobile_alarm_diagnose.html
folder: SpotlightMobile
---

The alarm, connection or connection view is colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

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
