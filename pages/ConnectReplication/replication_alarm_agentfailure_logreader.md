---
title: Replication - Log Reader Agent Failure alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "A Replication - Agent Failure alarm becomes active when a SQL Server replication agent has failed."
sidebar: c_replication_sidebar
permalink: replication_alarm_agentfailure_logreader.html
id: Agent Failure.Alarm
folder: ConnectReplication
---


When a replication agent fails, the replication of your data can be interrupted. It is best to investigate the problem as soon as possible to minimize the amount of work required to reestablish proper replication.

When this alarm is current

1. Open the **Activity drilldown \| Agents page**.
2. Select the affected agent on the Agents grid.
3. Select the affected session from the **Sessions for Agent** page.
4. Use the **Actions in the Selected Session** page to see the messages returned by the agent. The Actions grid shows the details of the messages logged by the agent. This may help you diagnose the exact task on which an agent failed.

Once the problem is resolved the agent can be re-started using SQL Server Enterprise Manager or SQL Server Management Studio.

{% include tip.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific agents. Use the Spotlight Client to **Configure \| Alarms**." %}


{% include links.html %}
