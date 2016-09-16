---
title: Log of user actions
summary: "Spotlight maintains an audit log of user actions. This log is a historical record of who changed what configuration when."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_logofuseractions.html
folder: SpotlightEnterprise
---

The log is located in the Spotlight Diagnostic Server installation folder:

...\Agent\log\UserActionLog.csv

The data for the log is retrieved from the Playback Database.

For the following user actions the log records:
* The Spotlight user making the change.
* The time the change was made.
* The configuration that was changed (if applicable).
* The configuration value before and after the change (if applicable).

## Log of user actions - Changes to Configure \| Spotlight

### Configure Ribbon Tab

#### Connections

Manage the connections monitored by Spotlight. The log records all applied changes.

#### Alarms

Set the thresholds and severities that determine when an alarm is raised. The log records all changes as applied to a monitored connection or template.

#### Alarm Actions

Set actions for Spotlight to take when an alarm is raised. The log records all saved changes.

#### Scheduling

Spotlight collects data according to set schedules. The log records all changes to these schedules as applied to a monitored connection or template.

#### Planned Outage

Changes to Planned Outage are recorded in the log of user actions.

#### SQL Analysis

The SQL Analysis dialog is used to determine what data is collected and displayed in the SQL Analysis - Workload View and the SQL Server | SQL Activity Drilldown \| SQL Analysis page. The log records all changes to the SQL Analysis dialog as applied to a monitored connection or template.

#### SQL Server Response Time

The log records changes to the SQL statement used to measure SQL Server response time as applied to a monitored connection or template.

#### Custom Counters

The log records changes to the configuration of custom counters as applied to a monitored connection or template.

#### Error Log Entries

The log records changes to the error log entries Spotlight is configured to scan the SQL Server error log for, as applied to a monitored connection or template.

#### Monitored Files

The log records changes to the list of files tracked for size by Spotlight as applied to a monitored connection or template.

#### Spotlight

Changes to the configuration of the Spotlight Client are not recorded in the log of user actions. The Spotlight Client is configured by changes to:
* Configure \| Spotlight \| Change Display
* Configure \| Spotlight \| Troubleshoot Spotlight

#### Diagnostic Server


The log does not record changes to the Spotlight Client connected to the Spotlight Diagnostic Server. The log does not record changes made to the Select a Diagnostic Server dialog.

The log does record changes to the configuration of the Diagnostic Server:
* •Configure PagerDuty
* Configure the auto-update facility
* Configure the Diagnostic Server's mail server
* Configure the Playback Database
* Configure the SNMP Trap
* Configure the Spotlight Statistics Repository
* Configure the use of Extended Events
* Federate Diagnostic Servers


#### Spotlight Cloud

The log records changes to the configuration - upload data to the Spotlight Cloud.

#### User Experience


Changes to User Experience are not recorded in the log of user actions.

#### Configuration Templates

Changes to Configuration Templates (Save, Delete, Rename) are recorded in the log of user actions.


## Log of user actions - Changes to the Spotlight License

### Help \| About \| Product license


### Help \| About \| Product license

Changes to the product license are recorded in the log of user actions.


## Log of user actions - When an alarm is acknowledged, snoozed or ignored

### Monitor \| Alarms | Action

#### Acknowledge

The log records when an alarm is acknowledged.

#### Snooze Alarm

The log records when an alarm is snoozed.

#### Ignore Alarm

The log records when an alarm is ignored.


## Log of user actions - on monitored SQL Server

### Monitor \| SQL Server Drilldowns

#### SQL Activity

The log records when a user kills a session from the Spotlight Client. That is command Sessions | Kill Session.

#### Databases

The log records when a user runs the Update Statistics command on selected indexes from the Spotlight Client. This command is run from the Indexes page of the Databases drilldown.

#### Support Services

The log records when a user starts a SQL agent job from the Spotlight Client. That is command SQL Agent Jobs | Start Job.

The log records when a user changes the running state (Start / Stop) of a service from the Spotlight Client. This change is actioned from the Service Status page of the Support services drilldown.

The log records when a user takes the following actions on Cluster Services from the Spotlight Client:
* Take Offline - Makes a cluster resource or cluster group unavailable.
* Bring Online - Starts a cluster resource or group.
* Move Group - Moves a cluster group to another node of the cluster.


#### Configuration

The log records when a user changes a configuration parameter from the Spotlight Client.

#### Error Log

The log records when a user archives the current error log file and opens a new log file from the Spotlight Client. That is command Cycle Error log.


## Log of user actions - on monitored Windows Server


### Monitor \| Windows Drilldowns

#### Processes

The log records when a user:
* Terminates a process from the Spotlight Client.
* Changes the running state (start, stop, pause, resume) of a service or device from the Spotlight Client.



{% include links.html %}
