---
title: Replication - Undistributed Commands alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "The Replication - Undistributed Commands alarm becomes active when the number of undistributed commands exceeds a threshold."
sidebar: c_replication_sidebar
permalink: replication_alarm_undistributedcommands.html
id: Undistributed Commands.Alarm
folder: ConnectReplication
---


Undistributed commands are commands in the distribution database that have not been delivered to the selected subscriber.

When this alarm occurs, look at the history of the affected subscription.

1. Open the **Activity drilldown \| Subscriptions page** and select the affected subscription.
2. Select a session from the **Sessions of the Log Reader Agent grid**.
3. The informational and error messages logged for that session are shown in the **Top 200 Actions** grid.

If you select a merge publication in the Subscription grid, the Sessions grid is displayed. Selecting a session displays the Session Articles grid.
{% include note.html content="If the Publicaton Type is Merge then **Sessions of the Merge Agent grid** is displayed. Select a session to display the **Session Articles grid**." %}

{% include tip.html content="You can configure this alarm to ignore certain values. You can also configure different thresholds for specific subscriptions. Use the Spotlight Client to **Configure \| Alarms**." %}



{% include links.html %}
﻿
