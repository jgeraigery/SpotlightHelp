---
title: ﻿Monitored Server - SQL Azure Alarm Action Failure Alarm
last_updated: July 29, 2016
summary: "Raised when a (specified action) failed to evaluate."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_alarm_monitoredserver_alarmactionfailure.html
id: ruleactionfailure.alarm
folder: ConnectSQLAzure
---


The specified action failed to execute for this alarm.

To clear this alarm, go to the Alarms dialog for this connection and turn off the custom action for the specified alarm. Alternatively, you can add a disabled severity to the 'Monitored Server - Alarm Action Failure' key for the particular alarm that is failing.

To do either of these:

1. Click **Configure \| Alarms**.
2. Select the connection where the alarm failed.
3. Do one of the following:
     * To turn off the custom action, select the alarm that has the custom action applied and then clear the custom action.
     * To add a disabled severity:

            1. Select the alarm **Monitored Server - Alarm Action Failure** for the connection type.
            2. Select **Override default setting for alarm 'Monitored Server - Alarm Action Failure'**.
            3. Click **Add**.
            4. From the Key value list, select the key that the alarm was raised for.
            5. With the key selected, click the Severity list and select **Disabled**.

{% include links.html %}
