---
title: Planned Outage
keywords: sample
summary: "Let Spotlight know the scheduled maintenance times for monitored connections. During the outage period, Spotlight will treat these connections as unavailable, so will not raise alarms or collect data."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_plannedoutage.html
folder: SpotlightEnterprise
---



Note: A Monitored Server Planned Outage alarm is raised when planned outage begins. This information alarm clears when the planned outage completes. The information alarm shows up on Alarms by time and the Alarm log. On the Spotlight Overview page during a Planned Outage all controls are disabled (except Status).

Alarm Actions (Configure \| Alarm Actions) can be written for the Monitored Server - Planned Outage alarm.

## Schedule a planned outage

To schedule maintenance times

*  Click Configure \| Planned Outage.

## Planned Outage Grid

### Name

The name of the connection scheduled for outage.

If multiple connections have been scheduled for this outage item then hover the mouse over the Multiple Connections text to show the names of the connections scheduled.

### Type

The type of connection: SQL Server, SQL Server Replication, Availability Groups, Hyper-V, Windows Server, VMware Server, SQL Server Analysis Services, SQL Azure.

If multiple types of connections have been scheduled for this outage item then hover the mouse over the Multiple Types text to show the connection types scheduled.

### Description

A description for the planned outage (as entered on the Planned Outage Details dialog).

### Schedules

A textual description of the day, time and duration of the next planned outage.

The time is measured from the time zone of the Spotlight Diagnostic Server.

### Status

In Outage | The connection(s) are currently in outage.
Pending | There is a planned outage that is scheduled to start in the future.
Completed | The planned outage has either completed or monitoring has resumed.

The Status column is updated once a minute. You may notice a delay (of up to a minute) from when the system status changes to when the Status column is updated.


Note: Non reoccurring outages with a Completed status are deleted automatically after three days.

Click on the column header to sort the grid by the contents of the column.


## Actions for each item on the Planned Outage Grid

### Resume Monitoring

Resume monitoring before the end of the scheduled time.

This can also be done from the connections menu. For more information, see Planned outage.

### Add

Create a planned outage. For more information, see Planned Outage Details.

### Edit

Edit the selected planned outage. For more information, see Planned Outage Details.

Unavailable during the outage period.

### Remove

Remove the selected planned outage.

### Close

Close this dialog and save changes.

### Help

Open this help page.


 {% include links.html %}
