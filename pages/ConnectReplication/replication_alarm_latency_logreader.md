---
title: Replication - Log Reader Latency Alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "A Replication - Latency alarm alerts you when latency on the Distributor or Log Reader agent exceeds a threshold."
sidebar: c_replication_sidebar
permalink: replication_alarm_latency_logreader.html
id: Latency.Alarm
folder: ConnectReplication
---


Latency is the amount of time that elapses between a command being committed at the Publisher and the corresponding command being committed at the Subscriber. It is a key measure of the performance of your replication environment, especially when data must be available at subscribers within a certain time period to meet service level agreements.

When this alarm occurs, look at the Agents grid on the Agents page of the Activity drilldown to see which agent is experiencing high latency times.


{% include tip.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific agents." %}


{% include links.html %}
