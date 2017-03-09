---
title: Permission to use Spotlight
summary: "The Spotlight Client is granted permission to run Spotlight, acknowledge, snooze and ignore alarms, configure Spotlight and execute tasks on monitored Windows Server and SQL Server according to the membership of the Windows credentials used to run the Spotlight Client. Spotlight uses membership of the Spotlight diagnostic user groups, Windows groups created on install of Spotlight, to authenticate Spotlight Client access to the Spotlight Diagnostic Server. The Windows credentials used to run the Spotlight Client must be a member of at least one of the three groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_client_permissions.html
folder: SpotlightEnterprise
---


## Permission to use Spotlight

The Windows credentials used to run the Spotlight Client must be a member of at least one of the three groups for the given Spotlight Diagnostic Server: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

## Acknowledge, snooze and ignore alarms

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to acknowledge, snooze and ignore alarms. There are three Windows groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

Action | Administrator | User | Read-only
-------|---------------|------|----------
Acknowledge | Yes | Yes | No
Snooze Alarm | Yes | Yes | No
Ignore Alarm | Yes | Yes | No


## Configure Monitoring

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to configure the Spotlight Diagnostic Server. There are three Windows groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

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
SQL Server Response Time | Yes | No | No
Custom Counters | Yes | Yes | No
Error Log Entries | Yes | Yes | No
Monitored Files | Yes | Yes | No
Apply Configuration To… | Yes | Yes | No
Configureation templates (Save, Delete, Rename) | Yes | Yes | No


## Configure the Diagnostic Server

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to configure the Spotlight Diagnostic Server. There are three Windows groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

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

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to execute actions on monitored SQL Server. There are three Windows groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

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

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to execute actions on monitored Windows server. There are three Windows groups: Spotlight Diagnostic Administrators, Spotlight Diagnostic Users, Spotlight Diagnostic Read-Only. Your Network Administrator can add members, increase and decrease your membership as required.

Windows Server drilldowns | Administrator | User | Read-only
------------------------------|---------------|------|----------
Processes \| Terminate | Yes | No | No
Services \| Start | Yes | No | No
Services \| Stop | Yes | No | No
Services \| Pause | Yes | No | No
Services \| Resume | Yes | No | No


{% include links.html %}
