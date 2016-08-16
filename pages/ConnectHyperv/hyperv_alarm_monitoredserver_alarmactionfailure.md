---
title: ﻿Monitored Server - Hyper-V Alarm Action Failure Alarm
last_updated: July 29, 2016
summary: "Raised when a (specified action) failed to evaluate."
sidebar: c_hyperv_sidebar
permalink: hyperv_alarm_monitoredserver_alarmactionfailure.html
id: ruleactionfailure.alarm
folder: ConnectHyperv
---


<h2>Alarm Action Failure</h2>
<p>The specified action failed to execute for this alarm.</p>
<p>To clear this alarm, go to the Alarms dialog for this connection and turn off the custom action for the specified alarm. Alternatively, you can add a disabled severity to the 'Monitored Server - Alarm Action Failure' key for the particular alarm that is failing.</p>
<p>To do either of these:</p>
<ol>
    <li>Click <b>Configure | Alarms</b>.</li>
    <li>Select the connection where the alarm failed.</li>
    <li>Do one of the following:</li>
    <ul>
        <li>To turn off the custom action, select the alarm that has the custom action applied and then clear the custom action.</li>
        <li>To add a disabled severity:</li>
        <ol type="a">
            <li>Select the alarm <strong>Monitored Server - Alarm Action Failure</strong> for the connection type.</li>
            <li>Select <strong>Override default setting for alarm 'Monitored Server - Alarm Action Failure'</strong>.</li>
            <li>Click <strong>Add</strong>.</li>
            <li>From the Key value list, select the key that the alarm was raised for.</li>
            <li>With the key selected, click the Severity list and select <strong>Disabled</strong>.</li>
        </ol>
    </ul>
</ol>

{% include links.html %}
