---
title: Sessions for subscription
last_updated: July 29, 2016
summary: "Shows the delivery rate for the selected subscription between the publisher and distributor, and the distributor and subscriber. This view is shown when the Publication Type of the selected subscription is Transactional."
sidebar: c_replication_sidebar
permalink: replication_components_sessionsforsubscription.html
id: TransSessions.btnPublisher
folder: ConnectReplication
---

{% include note.html content="The components and flows show current alarms for the selected subscription." %}

Components and flows include the following:

## Commands/second

Total rate of delivered commands from the Publisher to the Distributor.

## Commands/second

Total rate of delivered commands from the Distributor to the Subscriber.

## Undistributed Commands

Number of commands in the distribution database that have not been delivered to the selected Subscriber.

{% include tip.html content="A high number of undistributed commands may indicate latency issues on the distributor." %}


## Estimated Time to Apply

Estimated amount of time to deliver commands to the Subscriber.


{% include links.html %}
