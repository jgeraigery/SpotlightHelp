---
title: ﻿Monitored Server - VMware Alarm Evaluation Failure Alarm
last_updated: July 29, 2016
summary: "Raised when a (specified alarm) failed to evaluate."
sidebar: c_vmware_sidebar
permalink: vmware_alarm_monitoredserver_alarmevaluationfailure.html
id: ruleevaluationfailure.alarm
folder: ConnectVMware
---


<p>The specified alarm failed to evaluate. </p>
<p>To clear this alarm, go to the Alarms dialog for this connection and disable this alarm. Alternatively, you can add a disabled severity to the 'Monitored Server - Alarm Evaluation Failure' key for the particular alarm that is failing.</p>
<p>To do either of these:</p>
<ol>
    <li>Click <b>Configure | Alarms</b>.</li>
    <li>Select the connection where the alarm failed.</li>
    <li>Select the alarm <strong>Monitored Server - Alarm Evaluation Failure</strong> for the connection type.</li>
    <li>Select <strong>Override default setting for alarm 'Monitored Server - Alarm Evaluation Failure'</strong>.</li>
    <li>Do one of the following:</li>
    <ul>
        <li>To disable the alarm, select <strong>Disable this alarm</strong>.</li>
        <li>To add a disabled severity:</li>
        <ol type="a">
            <li>Click <strong>Add</strong>.</li>
            <li>From the Key value list, select the key that the alarm was raised for.</li>
            <li>With the key selected, click the Severity list and select <strong>Disabled</strong>.</li>
        </ol>
    </ul>
</ol>


{% include links.html %}
