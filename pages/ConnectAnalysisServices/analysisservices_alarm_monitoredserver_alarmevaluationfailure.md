---
title: ﻿Monitored Server - Analysis Services Alarm Evaluation Failure Alarm
last_updated: July 29, 2016
summary: "Raised when a (specified alarm) failed to evaluate."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_alarm_monitoredserver_alarmevaluationfailure.html
id: ruleevaluationfailure.alarm
folder: ConnectAnalysisServices
---


<?xml version="1.0" encoding="utf-8"?>
<html MadCap:lastBlockDepth="6" MadCap:lastHeight="352" MadCap:lastWidth="935" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd">
    <head>
        <style>
            <!-- BODY {font-family: Tahoma; font-size: 9pt}
         H2   {font-family: Tahoma; font-size: 15pt}
         H3   {font-family: Tahoma; font-size: 13pt} -->
        </style><title>Alarm Evaluation Failure</title>
    </head>
    <body oncontextmenu="return false" bgColor="#e6e6e6" topmargin="0">
        <h2>Alarm Evaluation Failure</h2>
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
    </body>
</html>
{% include links.html %}
