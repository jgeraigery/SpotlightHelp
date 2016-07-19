---
title: Undistributed Commands alarm
summary: "The Replication - Undistributed Commands alarm becomes active when the number of undistributed commands exceeds a threshold."
sidebar: c_replication_sidebar
permalink: replication_alarm_undistributedcommands.html
folder: ConnectReplication
---


Undistributed commands are commands in the distribution database that have not been delivered to the selected subscriber.

## When this alarm occurs:

Look at the history of the affected subscription. To do this:

1. Go to the Subscriptions grid on the Subscriptions page in the Activity drilldown.
2. Select the affected subscription.
3. In the Sessions of the Log Reader Agent grid, select a session. The informational and error messages logged for that session are shown in the Top 200 Actions grid.

  If you select a merge publication in the subscription grid, the Sessions grid is displayed. Selecting a session displays the Session Articles grid.

<note type="note"></note>
<ul>
<li>You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help.</li>
<li>You can also configure different thresholds for specific subscriptions. See *Configure Keyed Alarms* in the online help.</li>
</ul>



{% include links.html %}
﻿
