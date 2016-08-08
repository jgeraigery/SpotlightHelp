---
title: Sessions for subscription
last_updated: July 29, 2016
summary: "The Sessions for subscription shows the delivery rate for the selected subscription between the publisher and distributor, and the distributor and subscriber."
sidebar: c_replication_sidebar
permalink: replication_chart_sessionsforsubscription.html
id: TransSessions.btnPublisher
folder: ConnectReplication
---

A high number of undistributed commands may indicate latency issues on the distributor.

This chart applies to Transactional publications only.

The chart shows the following statistics:

## Commands/second

Total rate of delivered commands from the Publisher to the Distributor.

## Commands/second

Total rate of delivered commands from the Distributor to the Subscriber.

## Undistributed Commands

Number of commands in the distribution database that have not been delivered to the selected Subscriber.

## Estimated Time to Apply

Estimated amount of time to deliver commands to the Subscriber.


<note type="tip">The buttons and flows show current alarms for the subscription selected in the grid above.</note>




{% include links.html %}
