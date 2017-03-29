---
title: SQL Server alarms
last_updated: March 28, 2017
tags: [alarms,alarms_by_connection_type]
summary: "Respond to SQL Server alarms raised by Spotlight."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarms.html
folder: ConnectSQLServer
---



## Alarms that can be raised against a SQL Server connection

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "sqlserver_alarms" %}
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





## Alarms not supported on the Unix/Linux Operating System
The following alarms are not supported when the SQL Server connection is hosted on the Unix/Linux Operating System

* Clusters - Failed over
* Clusters - File Share Witness inaccessible
* Clusters - Node unavailable
* Clusters - non-Preferred Node
* Databases - Dynamic Data File Group Growths Remaining
* Databases - Dynamic Log File Growths Remaining
* Databases - Data File Group Space Used
* Databases - Log File Space Used
* LiteSpeed Backup Failed
* LiteSpeed Backup Warning
* Log Shipping - Secondary Job
* Log Shipping - Secondary Latency
* Mirroring - State
* Mirroring - Unrestored Log
* Mirroring - Unsent Log
* Mirroring Faildover
* Monitored Server - Missing Windows Host
* Services - DTC Service Status
* Services - Full Text Search Service
* Services - Integration Service Status
* Services - Reporting Service Status
* Services - SQL Agent Mail Status
* Services - SQL Mail Status
* SQL Agent - Alerts
* SQL Agent - Jobs Failed
* SQL Agent - Long Running Jobs (Percent)
* SQL Agent - Long Running Jobs (Time)
* SQL Agent - Status
* Virtualization alarms


{% include links.html %}
