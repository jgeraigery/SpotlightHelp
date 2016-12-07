---
title: Replication - Subscription Failure alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "The Replication - Subscription Failure alarm alerts you to any subscriptions that have failed."
sidebar: c_replication_sidebar
permalink: replication_alarm_subscriptionfailure.html
id: Subscription Failure.Alarm
folder: ConnectReplication
---


When this alarm occurs, turn to the **Activity drilldown \| Subscriptions page** to see which subscription failed.

Look at the history of the agent involved:

1. From the **Activity drilldown \| Subscription page**, select the affected subscription.
2. Both sub-pages, Publisher \| Distributor and Distributor \| Subscriber, contain a Sessions grid.
3. Select a session in either of these grids, to see the information and error messages logged for that session.


{% include tip.html content="You can configure this alarm to ignore certain values. You can also configure different thresholds for specific subscriptions. Use the Spotlight Client to **Configure \| Alarms**." %}


{% include links.html %}
﻿
