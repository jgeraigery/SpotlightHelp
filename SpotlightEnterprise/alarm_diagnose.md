---
title: Diagnose alarms
keywords: alarms
summary: "Show performance statistics (grids and charts) related to the raised alarm."
sidebar: p_enterprise_sidebar
permalink: /enterprise_alarm_diagnose/
---

An alarm is raised when a collected value falls outside its "normal" range of values. This "normal" range is defined by thresholds and severities configured for the alarm. A new alarm is raised each time the severity for the alarm changes. When the severity returns to normal, the alarm is canceled. Alarms critical to your operation can be configured to remain on view until they are acknowledged.

## Act on (resolve, investigate) a raised alarm

Icon | Title | Description
--------------|----------|------------
![Diagnose]({{ "/imagesClient/tb_whatsthis_diagnose.png" | prepend: site.baseurl }})  | Diagnose Connection drilldowns | Show performance statistics (grids and charts) related to the raised alarm.
![Acknowledge]({{ "/imagesClient/tb_whatsthis_acknowledge.png" | prepend: site.baseurl }})  | Acknowledge Acknowledge | Acknowledge the alarm. This is appropriate for alarms that are configured to require acknowledgment.
![Alarm History]({{ "/imagesClient/tb_whatsthis_alarmhistory.png" | prepend: site.baseurl }})  | Alarm History Alarms by time | Show the alarm in Alarms by Time.
![Snooze]({{ "/imagesClient/tb_whatsthis_snooze.png" | prepend: site.baseurl }})  | Snooze Snooze | Temporarily remove the visual alert associated with the alarm.
![Ignore]({{ "/imagesClient/tb_whatsthis_ignore.png" | prepend: site.baseurl }})  | Ignore |  Configure Spotlight to ignore the alarm and future cases of the alarm. Select the rule by which you want Spotlight to ignore future cases: ignore this alarm for the current value or for the current connection. The choices are dependent on the type of alarm. This is a simplified interface for Do not alarm for certain values.
![Alarm Settings]({{ "/imagesClient/tb_whatsthis_alarmsettings.png" | prepend: site.baseurl }})  | Alarm Settings Configure \| Alarms | Configure the thresholds and severities that determine when the alarm is raised.


## Color

Spotlight uses color to identify the severity of an alarm. The alarm, home page component or connection is colored. If more than one alarm is raised against the component or connection then the color shows the highest severity alarm raised.

Default Color | Severity
--------------|---------
![Disabled color]({{ "/imagesClient/icon_alarm_gray.png" | prepend: site.baseurl }})  | Disabled
![Normal color]({{ "/imagesClient/icon_alarm_green.png" | prepend: site.baseurl }})  | Normal / No alarm is currently raised.
![Information color]({{ "/imagesClient/icon_alarm_blue.png" | prepend: site.baseurl }})  | Information
![Low color]({{ "/imagesClient/icon_alarm_yellow.png" | prepend: site.baseurl }})  | Low
![Medium color]({{ "/imagesClient/icon_alarm_orange.png" | prepend: site.baseurl }})  | Medium
![High color]({{ "/imagesClient/icon_alarm_red.png" | prepend: site.baseurl }})  | High

Alternative colors for alarm severity are available. For more information, see Severity colors for accessibility.
