---
title: Replication - Publication Expiration alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "The Replication - Publication Expiration alarm alerts you to any publications that have expired."
sidebar: c_replication_sidebar
permalink: replication_alarm_publicationexpiration.html
id: Publication Expiration.Alarm
folder: ConnectReplication
---


{% include note.html content="This alarm does not apply to Merge publications." %}


When this alarm occurs, turn to the **Activity drilldown \| Publications page** to see which publication has expired.

Look at the history of the agent involved:

1. From the **Activity drilldown \| Publications page**, select the affected publication.
2. Click the **Agents** tab to open the Agents page.
3. In the Agent column of the Agents grid, click the link for the affected agent.
4. Click the **Sessions** tab to open the Sessions page.
5. Select the session in the Sessions grid. The informational and error messages logged for that session are shown in the Top 200 Actions grid.

{% include tip.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific agents. Use the Spotlight Client to **Configure \| Alarms**." %}

{% include links.html %}
