---
title: Diagnose alarms in Spotlight Enterprise
keywords: alarms
summary: "Show performance statistics (grids and charts) related to the raised alarm."
sidebar: p_enterprise_sidebar
permalink: enterprise_alarm_diagnose.html
folder: SpotlightEnterprise
---

An alarm is raised when a collected value falls outside its "normal" range of values. This "normal" range is defined by thresholds and severities [configured][enterprise_cfgmonitor_alarms] for the alarm. A new alarm is raised each time the severity for the alarm changes. When the severity returns to normal, the alarm is canceled. Alarms critical to your operation can be configured to remain on view until they are [acknowledged][enterprise_alarm_acknowledge].

## Act on (resolve, investigate) a raised alarm

Icon | Title | Description
--------------|----------|------------
{% include inline_imageClient.html file="tb_whatsthis_diagnose.png" alt="Diagnose" %} | Diagnose Connection drilldowns | Show performance statistics ([grids][enterprise_display_grids] and [charts][enterprise_display_charts]) related to the raised alarm.
{% include inline_imageClient.html file="tb_whatsthis_acknowledge.png" alt="Acknowledge" %} | [Acknowledge][enterprise_alarm_acknowledge] | Acknowledge the alarm. This is appropriate for alarms that are configured to require acknowledgment.
{% include inline_imageClient.html file="tb_whatsthis_alarmhistory.png" alt="Alarm History" %} | [Alarm History][enterprise_display_alarmsbytime] | Show the alarm in Alarms by Time.
{% include inline_imageClient.html file="tb_whatsthis_snooze.png" alt="Snooze" %} | [Snooze][enterprise_alarm_snooze] | Temporarily remove the visual alert associated with the alarm.
{% include inline_imageClient.html file="tb_whatsthis_ignore.png" alt="Ignore" %} | [Ignore][enterprise_alarm_ignore] |  Configure Spotlight to ignore the alarm and future cases of the alarm. Select the rule by which you want Spotlight to ignore future cases: ignore this alarm for the current value or for the current connection. The choices are dependent on the type of alarm. This is a simplified interface for [Do not alarm for certain values][enterprise_cfgmonitor_alarm_ignorevalues].
{% include inline_imageClient.html file="tb_whatsthis_alarmsettings.png" alt="Alarm Settings" %} | [Alarm Settings][enterprise_cfgmonitor_alarms] | Configure the thresholds and severities that determine when the alarm is raised.


## Color

Spotlight uses color to identify the severity of an alarm. The alarm, Spotlight Overview page component or connection is colored. If more than one alarm is raised against the component or connection then the color shows the highest severity alarm raised.

Default Color | Severity
--------------|---------
{% include inline_imageClient.html file="icon_alarm_gray.png" alt="Disabled color" %} | Disabled
{% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal color" %} | Normal / No alarm is currently raised.
{% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information color" %} | Information
{% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low color" %} | Low
{% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium
{% include inline_imageClient.html file="icon_alarm_red.png" alt="High color" %} | High

Alternative colors for alarm severity are available. For more information, see [Severity colors for accessibility][enterprise_cfgclient_severitycolorsforaccessibility].

{% include links.html %}
