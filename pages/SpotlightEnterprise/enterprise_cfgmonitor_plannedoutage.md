---
title: Configure Planned Outage
tags: [configure_monitoring]
summary: "Let Spotlight know the scheduled maintenance times for monitored connections. During the outage period, Spotlight will treat these connections as unavailable, so will not raise alarms or collect data."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_plannedoutage.html
id: 1003
folder: SpotlightEnterprise
---


## Schedule a planned outage from the Spotlight Client

To schedule maintenance times

*  Click {% include inline_imageClient.html file="tb_config_plannedoutage.png" alt="Configure Planned Outage" %} **Configure \| Planned Outage**.

## Planned Outage grid

### Name

The name of the connection scheduled for outage.

If multiple connections have been scheduled for this outage item then hover the mouse over the **Multiple Connections text** to show the names of the connections scheduled.

### Type

The type of connection: SQL Server, SQL Server Replication, Availability Groups, Hyper-V, Windows Server, VMware Server, SQL Server Analysis Services, SQL Azure.

If multiple types of connections have been scheduled for this outage item then hover the mouse over the **Multiple Types text** to show the connection types scheduled.

### Description

A description for the planned outage (as entered on the [Planned Outage Details dialog][enterprise_cfgmonitor_plannedoutage_details]).

### Schedules

A textual description of the day, time and duration of the next planned outage.

The time is measured from the time zone of the Spotlight Diagnostic Server.

### Status

In Outage | The connection(s) are currently in outage.
Pending | There is a planned outage that is scheduled to start in the future.
Completed | The planned outage has either completed or monitoring has resumed.

The **Status** column is updated once a minute. You may notice a delay (of up to a minute) from when the system status changes to when the Status column is updated.

{% include note.html content="Non reoccurring outages with a Completed status are deleted automatically after three days." %}

Click on the column header to sort the grid by the contents of the column.


## Actions for items on the Planned Outage grid

### Resume Monitoring

Resume monitoring before the end of the scheduled time.

This can also be done from the [Connections display][enterprise_connect_plannedoutage].

### Add

Create a planned outage. For more information, see [Planned Outage Details][enterprise_cfgmonitor_plannedoutage_details].

### Edit

Edit the selected planned outage. For more information, see [Planned Outage Details][enterprise_cfgmonitor_plannedoutage_details].

Unavailable during the outage period.

### Remove

Remove the selected planned outage.

### Close

Close this dialog and save changes.

### Help

Open this help page.

## Monitored Server - Planned Outage alarm

A Monitored Server Planned Outage alarm is raised when planned outage begins. This information alarm clears when the planned outage completes. The information alarm shows up on [Alarms by time][enterprise_display_alarmsbytime] and the [Alarm log][enterprise_display_alarmlog]. On the [Spotlight Overview page][enterprise_display_overview] during a Planned Outage all controls are disabled (except **Status**).

Alarm Actions ([Configure \| Alarm Actions][enterprise_cfgmonitor_alarmactions]) can be written for the Monitored Server - Planned Outage alarm.


{% include links.html %}
