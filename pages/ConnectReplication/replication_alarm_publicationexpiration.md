---
title: Replication - Publication Expiration Alarm
last_updated: July 29, 2016
summary: "The Replication - Publication Expiration alarm alerts you to any publications that have expired."
sidebar: c_replication_sidebar
permalink: replication_alarm_publicationexpiration.html
id: Publication Expiration.Alarm
folder: ConnectReplication
---






{% include note.html content="This alarm does not apply to Merge publications." %}


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

{% include tip.html content="You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help. You can configure different alarm severities for specific agents. See *Configure Keyed Alarms* in the online help." %}

{% include links.html %}
