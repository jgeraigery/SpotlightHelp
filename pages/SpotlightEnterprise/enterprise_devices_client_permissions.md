---
title: Permissions for the Spotlight Client
summary: "The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to access the Spotlight Diagnostic Server, to configure the Spotlight Diagnostic Server, to acknowledge and snooze alarms, and execute actions on monitored systems like kill and pause."
sidebar: p_enterprise_sidebar
permalink: enterprise_client_permissions.html
folder: SpotlightEnterprise
---

The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups to access the Spotlight Diagnostic Server. The Spotlight Diagnostics User groups are created on install of the Spotlight Diagnostic Server. The Spotlight diagnostic user groups are as follows.
•Administrator - Spotlight Diagnostic Administrators
• User - Spotlight Diagnostic Users
•Read-only - Spotlight Diagnostic Read-Only

 The following tables document the permissions granted to each level of membership. For membership information and to increase your level of membership, see Spotlight diagnostic user groups.

Table 71: Permission to configure Spotlight









Configure Ribbon Tab

Administrator

User

Read-only





 Connections

Add/Delete connection profiles

Yes

Yes

No



Add/Replace/Delete tags

Yes

Yes

No



Enable/Disable monitoring connections

Yes

Yes

No




 Alarms



Yes

Yes

No




 Alarm Actions

Alarm Action Editor

Yes

Yes

No



Run a program when a threshold is reached

Yes

No

No




 Scheduling



Yes

Yes

No




 Planned Outage

Add, edit and remove planned outagaes

Yes

No

No




 SQL Analysis



Yes

Yes

No




 SQL Server Response Time



Yes

No

No




 Custom Counters



Yes

Yes

No




 Error Log Entries



Yes

Yes

No




 Monitored Files



Yes

Yes

No




 Spotlight

Change Display

Yes

Yes

Yes



Troubleshoot Spotlight

Yes

Yes

Yes




 Diagnostic Server

Select a Diagnostic Server

Yes

Yes

Yes



Configure the database maintenance schedule

Yes

Yes

No



Configure PagerDuty

Yes

Yes

No



Configure the auto-update facility

Yes

Yes

No



Configure the Diagnostic Server's mail server

Yes

Yes

No



Configure the Playback Database

Yes

Yes

No



Configure the SNMP Trap

Yes

Yes

No



Configure the Spotlight Statistics Repository

Yes

Yes

No



Configure the use of Extended Events

Yes

Yes

No



Federate Diagnostic Servers

Yes

Yes

No




 Spotlight Cloud

Configure uploading to Spotlight Cloud

Yes

Yes

No




 User Experience



Yes

Yes

No



Configuration Templates

Apply Configuration To…

Yes

Yes

No



Save as Template

Yes

Yes

No



Delete Template

Yes

Yes

No



Rename Template

Yes

Yes

No


Table 72: Permission to acknowledge, snooze and ignore alarms from the Spotlight Client









Monitor | Alarms | Action

Administrator

User

Read-only





 Acknowledge



Yes

Yes

No




 Snooze Alarm



Yes

Yes

No




 Ignore Alarm



Yes

Yes

No


Table 73: Permission to execute tasks on a monitored SQL Server from the Spotlight Client









Monitor | SQL Server Drilldowns

Administrator

User

Read-only





 SQL Activity

Sessions | Kill Session

Yes

No

No




 Databases

Indexes | Update Statistics

Yes

No

No




 Support Services

SQL Agent Jobs |  Start Job

Yes

No

No



Service Status | Start / Stop Service

Yes

No

No




Cluster Services | Take Offline

Cluster Services | Bring Online

Cluster Services | Move Group

Yes

No

No




 Configuration

Change parameter

Yes

No

No




 Error Log


Cycle Error log

Yes

No

No


Table 74: Permission to execute tasks on a monitored Windows Server from the Spotlight Client









Monitor | Windows Drilldowns

Administrator

User

Read-only





 Processes

Processes | Terminate

Yes

No

No



Services | Start

Yes

No

No



Services | Stop

Yes

No

No



Services | Pause

Yes

No

No



Services | Resume

Yes

No

No


{% include links.html %}
