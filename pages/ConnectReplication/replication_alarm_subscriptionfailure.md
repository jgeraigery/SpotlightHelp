---
title: Replication - Subscription Failure Alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "The Replication - Subscription Failure alarm alerts you to any subscriptions that have failed."
sidebar: c_replication_sidebar
permalink: replication_alarm_subscriptionfailure.html
id: Subscription Failure.Alarm
folder: ConnectReplication
---


When this alarm occurs:

1. Look at the Subscriptions grid on the Subscriptions page of the Activity drilldown to see which subscription failed.
2. Look at the history of the agent involved. To do this:

   1. Go to the Subscriptions grid on the Subscriptions page in the Activity drilldown.
   2. Select the affected subscription. Both sub-pages, Publisher \| Distributor and Distributor \| Subscriber, contain a Sessions grid.
   3. Select a session in either of these grids, to see the information and error messages logged for that session.


{% include tip.html content="You can configure this alarm to ignore certain values.You can also configure different thresholds for specific subscriptions." %}


{% include links.html %}
﻿
