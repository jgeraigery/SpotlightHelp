---
title: Diagnose alarms in the Spotlight Cloud
keywords: alarms
summary: "Show performance statistics (grids and charts) related to the raised alarm."
sidebar: p_cloud_sidebar
permalink: cloud_alarm_diagnose.html
folder: SpotlightCloud
---

An alarm is raised when a collected value falls outside its "normal" range of values. This "normal" range is defined by thresholds and severities configured for the alarm. A new alarm is raised each time the severity for the alarm changes. When the severity returns to normal, the alarm is canceled. Alarms critical to your operation can be configured to remain on view until they are acknowledged.

## Act on (resolve, investigate) a raised alarm



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

{% include links.html %}
