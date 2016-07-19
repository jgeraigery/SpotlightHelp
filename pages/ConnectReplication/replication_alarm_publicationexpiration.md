---
title: Replication - Publication Expiration Alarm
summary: "The Replication - Publication Expiration alarm alerts you to any publications that have expired."
sidebar: c_replication_sidebar
permalink: replication_alarm_publicationexpiration.html
folder: ConnectReplication
---







<note type="note">This alarm does not apply to Merge publications.</note>


## When this alarm occurs:

Look at the Publications grid on the Publications page of the Activity drilldown to see which publication has expired.

Look at the history of the agent involved.

To do this:

1. Go to the Publications grid on the Publications page in the Activity drilldown.
2. Select the affected publication.
3. Click the Agents tab.
4. In the Agent column of the Agents grid, click the link for the affected agent.
5. Click the Sessions tab.
6. Select the session in the Sessions grid. The informational and error messages logged for that session are shown in the Top 200 Actions grid.


<note type="tip"></note>
<ul>
<li>You can configure this alarm to ignore certain values. See "Configure an Alarm to Ignore Certain Values" in the online help.</li>
<li>You can also configure different thresholds for specific publications. See "Configure Keyed Alarms" in the online help.</li>
</ul>


{% include links.html %}
