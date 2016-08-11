---
title: Replication - Merge Agent Failure Alarm
last_updated: July 29, 2016
summary: "A Replication - Agent Failure alarm becomes active when a SQL Server replication agent has failed."
sidebar: c_replication_sidebar
permalink: replication_alarm_agentfailure_merge.html
id: Agent Failure.Alarm
folder: ConnectReplication
---


When a replication agent fails, the replication of your data can be interrupted. It is best to investigate the problem as soon as possible to minimize the amount of work required to reestablish proper replication.

## When this alarm is current:

Look at the Actions grid in the Activity drilldown to see the messages returned by the agent. The Actions grid shows the details of the messages logged by the agent. This may help you diagnose the exact task on which an agent failed.

To display the Actions grid:

1. On the Activity drilldown, click the Agents tab.
2. In the Agents grid, select the affected agent.
3. Click the Session tab.
4. In the Session grid, select the affected session.

Once the problem is resolved the agent can be re-started using SQL Server Enterprise Manager or SQL Server Management Studio.

{% include tip.html content="You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help. You can configure different alarm severities for specific agents. See *Configure Keyed Alarms* in the online help." %}


{% include links.html %}
