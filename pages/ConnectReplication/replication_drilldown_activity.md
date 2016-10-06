---
title: Activity drilldown
last_updated: July 29, 2016
summary: "Drilldown on current and recent activity details for the replication environment."
sidebar: c_replication_sidebar
permalink: replication_drilldown_activity.html
folder: ConnectReplication
---

## To see the SQL Activity drilldown

1. Select a SQL Server Replication environment from the Connections pane.
2. Click **Monitor \| Activity**.


## Publications page

### Publications grid

Shows information about the publications on the publisher.

## Subscriptions page

### Subscriptions grid

Shows information about the subscriptions that belong to a publication on the publisher.

### Sessions for subscription

Shows the delivery rate for the selected subscription between the publisher and distributor, and the distributor and subscriber. A high number of undistributed commands may indicate latency issues on the distributor.

The buttons and flows show current alarms for the subscription selected in the Subscriptions grid on this page.

### Sessions of the Log Reader Agent grid

Shows information about the Log Reader Agent session for the subscription selected in the Subscriptions grid on this page.

### Sessions grid

Shows detailed information about the sessions on the Merge Agent.

### Session Articles grid

Shows article statistics for the selected session on the Merge Agent.

### Sessions of the Distribution Agent

Shows information about the Distribution Agent session for the subscription selected in the Subscriptions grid on this page.

### Top 200 Actions grid

Shows the informational and error messages logged for the selected session.

## Agents page

### Agents grid

Shows information about agent sessions.

### Performance chart

Shows various statistics relating to agent sessions.

The following counters can be displayed by clicking the arrow next to the chart name:

* Delivery Rate - Average number of commands delivered per second.
* Delivery Latency - Latency, in milliseconds, between the transaction entering the distribution database and being applied to the Subscriber.
* Delivered Transactions - Total number of transactions delivered in the session.
* Delivered Commands - Total number of commands delivered in the session.
* Average Commands - Average number of commands per transaction delivered in the session.

### Sessions grid

Shows information about the sessions on the selected agent.

### Top 200 Actions grid

Shows the informational and error messages logged for the selected session.


{% include links.html %}
