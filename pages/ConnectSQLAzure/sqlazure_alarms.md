---
title: SQL Azure Alarms
last_updated: July 29, 2016
tags: [alarms,alarms_by_connection_type]
summary: "Respond to SQL Azure alarms raised by Spotlight."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_alarms.html
folder: ConnectSQLAzure
---



## Alarms that can be raised against a SQL Azure connection

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "sqlazure_alarms" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


## How to acknowledge an alarm

If an alarm is configured to require acknowledgment then each raised instance of the alarm remains present in Spotlight until it is acknowledged.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "acknowledge" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


## How to snooze an alarm

To snooze an alarm is to temporarily remove the visual alert associated with an alarm.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "snooze" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


## How to configure an alarm

See [Configure Alarms][enterprise_cfgmonitor_alarms] to set the thresholds and severities that determine when an alarm is raised. Disable an alarm. Set an alarm to require acknowledgment. Configure keyed alarms. Collect additional diagnostic information on an alarm.

See [Configure Alarm Actions][enterprise_cfgmonitor_alarmactions] to setup actions for Spotlight to take when an alarm is raised. The actions Spotlight can take include running a program and sending an email. Conditions on taking the action can be defined, such as the day of the week, the time of day, the severity of the alarm, the alarm type and the connection type.


{% include links.html %}
