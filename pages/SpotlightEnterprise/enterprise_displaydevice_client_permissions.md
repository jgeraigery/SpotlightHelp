---
title: Permission to use Spotlight
summary: "The Spotlight Client is granted permission to run Spotlight, access data and make changes according to the membership of the Windows credentials used to run the Spotlight Client. The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. These groups are created when the Spotlight Diagnostic Server is installed."
sidebar: p_enterprise_sidebar
permalink: enterprise_displaydevice_client_permissions.html
folder: SpotlightEnterprise
---



 The following tables document the permissions granted to each level of membership. For membership information and to increase your level of membership, see Spotlight diagnostic user groups.



## Acknowledge, snooze and ignore alarms

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to acknowledge, snooze and ignore alarms. The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only.

Action | Administrator | User | Read-only
-------|---------------|------|----------
Acknowledge | Yes | Yes | No
Snooze Alarm | Yes | Yes | No
Ignore Alarm | Yes | Yes | No


## Configure Monitoring

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to access the Spotlight Diagnostic Server, to configure the Spotlight Diagnostic Server, to acknowledge and snooze alarms, and execute actions on monitored systems like kill and pause.

Action | Administrator | User | Read-only
-------|---------------|------|----------
Connections: Add/Delete connection profiles | Yes | Yes | No
Connections: Add/Replace/Delete tags | Yes | Yes | No
Connections: Enable/Disable monitoring | Yes | Yes | No
Configure Alarms | Yes | Yes | No
Alarm Action Editor | Yes | Yes | No
Alarm Actions \| Run a program | Yes | No | No
Scheduling | Yes | Yes | No
Planned Outage (Add, Edit, Remove) | Yes | No | No
SQL Analysis | Yes | Yes | No
SQL Server Response Time | Yes | No | No
Custom Counters | Yes | Yes | No
Error Log Entries | Yes | Yes | No
Monitored Files | Yes | Yes | No
Apply Configuration To… | Yes | Yes | No
Configureation templates (Save, Delete, Rename) | Yes | Yes | No


## Configure the Diagnostic Server

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to configure the Spotlight Diagnostic Server. The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only.

Action | Administrator | User | Read-only
-------|---------------|------|----------
Select a Diagnostic Server | Yes | Yes | Yes
Configure the database maintenance schedule | Yes | Yes | No
Configure PagerDuty | Yes | Yes | No
Configure the auto-update facility | Yes | Yes | No
Configure the Diagnostic Server's mail server | Yes | Yes | No
Configure the Playback Database | Yes | Yes | No
Configure the SNMP Trap | Yes | Yes | No
Configure the Spotlight Statistics Repository | Yes | Yes | No
Configure the use of Extended Events | Yes | Yes | No
Configure uploading to Spotlight Cloud | Yes | Yes | No
Federate Diagnostic Servers | Yes | Yes | No


## Configure the Spotlight Client

Action | Administrator | User | Read-only
-------|---------------|------|----------
Change Display  | Yes | Yes | Yes
Troubleshoot Spotlight  | Yes | Yes | Yes
User Experience | Yes | Yes | No


## Execute tasks on monitored SQL Server

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to execute actions on monitored SQL Server. The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only.

SQL Server drilldowns | Administrator | User | Read-only
---------------------------------|---------------|------|----------
SQL Activity \| Sessions \| Kill Session | Yes | No | No
Databases \| Indexes \| Update Statistics | Yes | No | No
Support Services \| SQL Agent Jobs \|  Start Job | Yes | No | No
Service Status \| Start / Stop Service | Yes | No | No
Cluster Services \| Take Offline | Yes | No | No
Cluster Services \| Bring Online | Yes | No | No
Cluster Services \| Move Group | Yes | No | No
Configuration \| Change parameter | Yes | No | No
Error Log \| Cycle Error log | Yes | No | No


## Execute tasks on monitored Windows Server

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to execute actions on monitored Windows server. The Windows credentials used to run the Spotlight Client must be a member of at least one of the following groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only.

Windows Server drilldowns | Administrator | User | Read-only
------------------------------|---------------|------|----------
Processes \| Terminate | Yes | No | No
Services \| Start | Yes | No | No
Services \| Stop | Yes | No | No
Services \| Pause | Yes | No | No
Services \| Resume | Yes | No | No


{% include links.html %}
