---
title: Diagnose alarms
keywords: alarms
summary: "Show performance statistics (grids and charts) related to the raised alarm."
sidebar: p_enterprise_sidebar
permalink: /enterprise_alarm_diagnose/
---

Connections are colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
![Normal color]({{ "/imagesClient/icon_alarm_green.png" | prepend: site.baseurl }})  | Normal | No alarms are raised against this connection.
![Information color]({{ "/imagesClient/icon_alarm_blue.png" | prepend: site.baseurl }})  | Information | At least one information alarm is raised against this connection. No other alarms are raised.
![Low color]({{ "/imagesClient/icon_alarm_yellow.png" | prepend: site.baseurl }})  | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
![Medium color]({{ "/imagesClient/icon_alarm_orange.png" | prepend: site.baseurl }})  | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
![High color]({{ "/imagesClient/icon_alarm_red.png" | prepend: site.baseurl }})  | High | At least one high severity alarm is raised against this connection.
