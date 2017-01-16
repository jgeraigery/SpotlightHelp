---
title: Alarms by Time
keywords: alarms by Time
summary: "Alarms by Time is a display of alarm history. It tracks the start time, duration, and severity of logged alarms."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_alarmsbytime.html
id: 40005
folder: SpotlightEnterprise
---

{% include imageClient.html file="tb_alarms_time.png" alt="Alarms by Time" %}

## Open Alarms by Time

Click **Monitor \| Alarms by Time** from the Spotlight ribbon to open Alarms by Time for all monitored connections.

{% include tip.html content="To open Alarms by Time with a subset of all monitored connections, from the left [Connections pane][enterprise_connect_display] click on a custom view or connection type then click **Alarms by Time** from the display pane. To open Alarms by Time for just one connection, right click on the connection in the Connections pane and select **Alarms by Time**." %}

## Features of the display

Feature | Description
--------|------------
Time scale | The time scale spans the top of the chart from left to right, and indicates when alarms (represented as colored horizontal bars) are raised, changed and canceled.
List of connections and alarms | The vertical axis of the chart can be expanded and collapsed as per a tree. The roots of the tree represent monitored connections; the branches represent the alarms that have been raised against the connection. The list of alarms is re-ordered in real time to show the most recently raised alarms first.
{% include inline_imageClient.html file="pane_alarms_severitybar.png" %} | The color of the horizontal alarm bars reflect the severity of the alarm. The color changes when the severity changes. This image shows an alarm which was initially raised with High severity, and was thereafter downgraded in a series of steps to Information status, and then canceled.
{% include inline_imageClient.html file="pane_alarmsbytime_scale.png" %} | Click on the magnifying glass icon to zoom in and out on the displayed time. Alternatively, click the down arrow to choose a suitable time scale.

{% include tip.html content="Spotlight connections can be sorted in ascending or descending order. For more information, see the [Spotlight grids][enterprise_display_grids]." %}


## Filter alarms by time
{% include imageClient.html file="tb_action_changefilter.png" alt="Filter" %}
Filter the alarms by time display from the Filter ribbon group.

Ribbon Select | Description
--------------|------------
Filter by Severity | Show alarms of a certain severity.
Hide Snoozed Alarms | Remove snoozed alarms from the grid.


## Actions on the alarms by time display
These actions are selectable from the Action ribbon group. Some actions are enabled only when an alarm is selected.

Icon | Ribbon Select | Description
-----|---------------|------------
{% include inline_imageClient.html file="tb_action_diagnose.png" alt="Diagnose" %} | Diagnose | Drilldown on data from the connection relevant to the selected alarm.
{% include inline_imageClient.html file="tb_action_settings.png" alt="Alarm Settings" %} | Alarm Settings | Configure the selected alarm by opening the [Alarms dialog][enterprise_cfgmonitor_alarms].
{% include inline_imageClient.html file="tb_action_ignorealarm.png" alt="Ignore this Alarm" %} | Ignore this Alarm | Request Spotlight ignore this alarm and future cases of this alarm. For future cases, request Spotlight ignore this alarm for the current value or for the current connection. The choices are dependent on the type of alarm. This is a simplified interface for **Configure \| Alarms \| Do not alarm for certain values**.
{% include inline_imageClient.html file="tb_alarms_log.png" alt="Alarm log" %} | Show in Alarm Log | Show the selected alarm in the [Alarm Log][enterprise_display_alarmlog].
{% include inline_imageClient.html file="tb_grid_find.png" alt="Find" %} | Find | Find text in the display.
{% include inline_imageClient.html file="/tb_action_collapseall.png" alt="Collapse All" %} | Collapse All | Collapse the tree view of the display.

{% include links.html %}
