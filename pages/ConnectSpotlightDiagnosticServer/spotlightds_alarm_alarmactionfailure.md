---
title: ﻿Diagnostic Server - Alarm Action Failure Alarm
last_updated: July 29, 2016
summary: "The specified action failed to execute for this alarm."
sidebar: c_spotlightds_sidebar
permalink: spotlightds_alarm_alarmactionfailure.html
id: DSRuleActionFailure.alarm
folder: ConnectSpotlightDS
---


To clear this alarm, go to the Alarms dialog for the Diagnostic Server connection and turn off the custom action for the specified alarm.

Alternatively, you can add a disabled severity to the 'Diagnostic Server - Alarm Action Failure' key for the particular alarm that is failing.

To do either of these:

1. Click **Configure \| Alarms**.
2. Select the Diagnostic Server connection.
3. Do one of the following:
    * To turn off the custom action, select the alarm that has the custom action applied and then clear the custom action.
    * To add a disabled severity:
        1. Select the alarm **Diagnostic Server - Alarm Action Failure**.
        2. Select **Override default setting for alarm 'Diagnostic Server - Alarm Action Failure'**.
        3. Click **Add**.
        4. From the Key value list, select the key that the alarm was raised for.
        5. With the key selected, click the Severity list and select **Disabled**.



{% include links.html %}
