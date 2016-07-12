---
title: Spotlight Today
keywords: spotlight today
summary: "Spotlight Today is a display of recent alarms and alarms requiring acknowledgment."
sidebar: p_enterprise_sidebar
permalink: enterprise_spotlighttoday
folder: SpotlightEnterprise
---


## Open Spotlight Today

Click **Monitor \| Spotlight Today** from the Spotlight ribbon to open Spotlight Today for all monitored connections.

{% include tip.html content="To open Spotlight Today with a subset of all monitored connections, from the left Connections pane click on a custom view or connection type then click **Spotlight Today** from the display pane. To open Spotlight Today for just one connection, right click on the connection in the Connections pane then click **Spotlight Today** from the display pane." %}


## About the Spotlight Today grid
The Spotlight today grid is made up of rows and columns where each row represents an alarm and each column information about that alarm.

Column | Description
-------|------------
Severity | The degree of urgency of the alarm. The color indicates the severity of the alarm.
Alarm | The name of the alarm. This column is unavailable when the Group By action is set to Alarm.
Connection | The connection the alarm was raised on. This column is unavailable when the Group By action is set to Connection.
Raised | The time the alarm was raised.
Message | More information on the alarm.
Snoozed By | The user who requested the alarm be snoozed.
Snoozed Until | The time the alarm is snoozed until.
Condition Cleared | The time the alarm severity returned to normal. This is relevant to alarms that require acknowledgment.
Connection type | The type of connection the alarm was raised on (for example, SQL Server). The connection type is available only when the Group By action is set to Connection.

{% include tip.html content="The Spotlight Today grid is a Spotlight grid which may be saved to a file or the clipboard. To show / hide columns on the grid, right-click the grid headings and select Organize Columns. Refer to the help for more information on Spotlight grids." %}

## Filter the Spotlight Today grid

{% include imageClient.html file="tb_action_changefilter.png" alt="Filter" %}
Filter the Spotlight today grid from the Filter ribbon group.

Ribbon Select | Description
--------------|------------
Filter by Severity | Show alarms of a certain severity.
Hide Snoozed Alarms | Remove snoozed alarms from the grid.


## Actions on Spotlight Today

These actions are selectable from the Action ribbon group. Some actions are enabled only when an alarm is selected.

*  To select an alarm, highlight it on the Spotlight today grid.
*  Use SHIFT to select (or deselect) a range of alarms.
*  Use CTRL to select (or deselect) non sequential alarms.

Icon | Ribbon Select | Description
-----|---------------|-------------
{% include inline_imageClient.html file="tb_action_diagnose.png" alt="Diagnose" %} | Diagnose | Drilldown on data from the connection relevant to the selected alarm.
{% include inline_imageClient.html file="tb_alarms_acknowledge.png" alt="Acknowledge" %} | Acknowledge | Acknowledge the selected alarm(s). This is appropriate for alarms that are configured to require acknowledgment.
{% include inline_imageClient.html file="tb_alarms_time.png" alt="Show in Alarms by Time" %} |  Alarm History | Show the selected alarm in alarms by time.
{% include inline_imageClient.html file="tb_action_snooze.png" alt="Snooze" %} | Snooze Alarm | Temporarily remove the visual alert associated with the alarm.
{% include inline_imageClient.html file="tb_action_ignorealarm.png" alt="Ignore this Alarm" %} | Ignore this Alarm | Request Spotlight ignore this alarm and future cases of this alarm. For future cases, request Spotlight ignore this alarm for the current value or for the current connection. The choices are dependent on the type of alarm. This is a simplified interface for Configure \| Alarms \| Do not alarm for certain values.
{% include inline_imageClient.html file="tb_action_settings.png" alt="Alarm Settings" %} | Alarm Settings | Configure the selected alarm.
{% include inline_imageClient.html file="tb_grid_find.png" alt="Find" %} | Find | Find text in the list of alarms.
{% include inline_imageClient.html file="tb_action_collapseall.png" alt="Collapse all" %} | Collapse All | Collapse the tree view of the list of alarms.
{% include inline_imageClient.html file="tb_action_groupby.png" alt="Group by" %} | Group By | Group the alarms according to: <br> *Alarm* The name of the alarm. <br> *Connection* The name of the connection. <br> *Ungrouped (top 50 only)* Show the alarms in order of severity. Limit the display to 50 alarms.


## Configure Spotlight Today
Spotlight today can be configured to be the first page you see when you open Spotlight. For more information, see Spotlight startup location.
