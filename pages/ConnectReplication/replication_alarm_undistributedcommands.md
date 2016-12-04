---
title: Replication - Undistributed Commands Alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "The Replication - Undistributed Commands alarm becomes active when the number of undistributed commands exceeds a threshold."
sidebar: c_replication_sidebar
permalink: replication_alarm_undistributedcommands.html
id: Undistributed Commands.Alarm
folder: ConnectReplication
---


Undistributed commands are commands in the distribution database that have not been delivered to the selected subscriber.

When this alarm occurs, look at the history of the affected subscription. To do this:

1. Go to the Subscriptions grid on the Subscriptions page in the Activity drilldown.
2. Select the affected subscription.
3. In the Sessions of the Log Reader Agent grid, select a session. The informational and error messages logged for that session are shown in the Top 200 Actions grid.

  If you select a merge publication in the subscription grid, the Sessions grid is displayed. Selecting a session displays the Session Articles grid.

{% include tip.html content="You can configure this alarm to ignore certain values. You can also configure different thresholds for specific subscriptions." %}




{% include links.html %}
﻿
