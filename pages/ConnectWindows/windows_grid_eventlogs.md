---
title: Event logs grid
last_updated: July 29, 2016
summary: "This shows recent event log items that have occurred on the Windows Server. The Windows Event Log is where application or operating system information is written and can be accessed by system administrators."
sidebar: c_windows_sidebar
permalink: windows_grid_eventlogs.html
id: EventLog.EventGrid
folder: ConnectWindows
---


## To use the Event logs grid

Select the type of log and date range and click **View Events**.
Start {% include imageClient.html file="tb_drilldown_eventlog_view.png" alt="View Events" %}

## The grid contains the following columns:

### Date/Time

When the entry was entered into the Windows event log. Not when it was brought into Spotlight Enterprise.

### Event ID

Identifies the specific event that was logged.

### Message

A description of the event that was logged.

{% include tip.html content="To display the complete message, double-click the event in the grid." %}

### Source

The software that logged the event.

### Type

The type of entry logged. See the following descriptions:

Warning | There is something out of the ordinary but not an outright failure.
Error | Something has failed.
Information | General information on what is happening on the system.
Security | There are many security-based message types. These come from the security log and the system auditing that has been configured on the system.

### Category

The category of the event. This is used in auditing, and is primarily used by the security log.

### User

Shows which user account instigated the event log item (this is particularly pertinent to security items).

### Computer

The name of the machine where the event occurred.


{% include links.html %}
