---
title: Alarms by Time
keywords: alarms by Time
summary: "Alarms by Time is a display of alarm history. It tracks the start time, duration, and severity of logged alarms."
sidebar: p_enterprise_sidebar
permalink: /enterprise_alarmsbytime/
---

![Alarms by Time]({{ "/imagesClient/tb_alarms_time.png" | prepend: site.baseurl }})


## Open Alarms by Time

Click **Monitor \| Alarms by Time** from the Spotlight ribbon to open Alarms by Time for all monitored connections.

{% include tip.html content="To open Alarms by Time with a subset of all monitored connections, from the left Connections pane click on a custom view or connection type then click **Alarms by Time** from the display pane. To open Alarms by Time for just one connection, right click on the connection in the Connections pane and select **Alarms by Time**." %}

## Features of the display

Feature | Description
--------|------------
Time scale | The time scale spans the top of the chart from left to right, and indicates when alarms (represented as colored horizontal bars) are raised, changed and canceled.
List of connections and alarms | The vertical axis of the chart can be expanded and collapsed as per a tree. The roots of the tree represent monitored connections; the branches represent the alarms that have been raised against the connection. The list of alarms is re-ordered in real time to show the most recently raised alarms first.
![]({{ "/imagesClient/pane_alarms_severitybar.png" | prepend: site.baseurl }}) | The color of the horizontal alarm bars reflect the severity of the alarm. The color changes when the severity changes. This image shows an alarm which was initially raised with High severity, and was thereafter downgraded in a series of steps to Information status, and then canceled.
![]({{ "/imagesClient/pane_alarmsbytime_scale.png" | prepend: site.baseurl }}) | Click on the magnifying glass icon to zoom in and out on the displayed time. Alternatively, click the down arrow to choose a suitable time scale.

{% include tip.html content="Spotlight connections can be sorted in ascending or descending order. For more information, see the help on Spotlight grids." %}


## Filter alarms by time
![Filter]({{ "/imagesClient/tb_action_changefilter.png" | prepend: site.baseurl }})
Filter the alarms by time display from the Filter ribbon group.

Ribbon Select | Description
--------------|------------
Filter by Severity | Show alarms of a certain severity.
Hide Snoozed Alarms | Remove snoozed alarms from the grid.


## Actions on the alarms by time display
These actions are selectable from the Action ribbon group. Some actions are enabled only when an alarm is selected.

Icon | Ribbon Select | Description
-----|---------------|------------
![Diagnose]({{ "/imagesClient/tb_action_diagnose.png" | prepend: site.baseurl }}) | Diagnose | Drilldown on data from the connection relevant to the selected alarm.
![Alarm Settings]({{ "/imagesClient/tb_action_settings.png" | prepend: site.baseurl }}) | Alarm Settings | Configure the selected alarm by opening the Alarms dialog.
![Ignore this Alarm]({{ "/imagesClient/tb_action_ignorealarm.png" | prepend: site.baseurl }}) | Ignore this Alarm | Request Spotlight ignore this alarm and future cases of this alarm. For future cases, request Spotlight ignore this alarm for the current value or for the current connection. The choices are dependent on the type of alarm. This is a simplified interface for Configure \| Alarms \| Do not alarm for certain values.
![Alarm log]({{ "/imagesClient/tb_alarms_log.png" | prepend: site.baseurl }}) | Show in Alarm Log | Show the selected alarm in the alarm log.
![Find]({{ "/imagesClient/tb_grid_find.png" | prepend: site.baseurl }}) | Find | Find text in the display.
![Find]({{ "/imagesClient/tb_action_collapseall.png" | prepend: site.baseurl }}) | Collapse All | Collapse the tree view of the display.
