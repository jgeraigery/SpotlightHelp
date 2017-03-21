---
title: Upgrade Spotlight Enterprise
summary: "Upgrade Spotlight Enterprise using the Spotlight Enterprise installer."
sidebar: p_enterprise_sidebar
permalink: enterprise_upgrade.html
folder: SpotlightEnterprise
---



## Backup first
[Backup all Spotlight configuration and saved collection data][enterprise_backend_backupdata].

## Run the Spotlight Enterprise executable on each Spotlight Client
If your enterprise has multiple Spotlight Clients then ensure all Spotlight Clients are included in the upgrade process. If the Spotlight Client and Spotlight Diagnostic Server are running different versions of Spotlight Enterprise, the client will be unable to connect to the Spotlight Diagnostic Server.
 
If Spotlight Enterprise is deployed as a federated system of multiple Spotlight Diagnostic Server then make sure all the Spotlight Diagnostic Server in the federation are included in the upgrade process.

## Upgrade the Playback Database and Spotlight Statistics Repository
Following upgrade of the Spotlight Diagnostic Server, the Playback Database and Spotlight Statistics Repository are automatically upgraded the next time they are accessed by the Spotlight Diagnostic Server.

{% include note.html content="If in your environment the Playback Database / Spotlight Statistics Repository are replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication." %}

## Frequently Asked Questions

### What configuration information is preserved on upgrade?
The following information on the Spotlight Diagnostic Server is preserved when you upgrade:

*  Connection properties for all monitored servers (including changes to scheduling and alarms)
*  Collection properties
*  Alarm Actions (These include running a program and sending an email.)
*  Planned Outages
*  Global options such as user-created Error Log rules
*  Configuration information for the Spotlight Statistics Repository (this applies only if you installed the Spotlight Statistics Repository from Spotlight on SQL Server) and the Playback Database.

### Which versions of Spotlight can I upgrade from?

Upgrade to Spotlight Enterprise from Spotlight on SQL Server 10.0 or above.

To upgrade from an earlier version of Spotlight on SQL Server than 10.0, upgrade to at least version 10.0 first.

To upgrade from Spotlight on SQL Server 10.5.0, first upgrade to 10.5.2 and then upgrade to Spotlight Enterprise.

### File paths on upgrade from Spotlight on SQL Server Enterprise
There is no change in the default installation path for the Spotlight Diagnostic Server on upgrade from Spotlight on SQL Server

```
C:\Program Files\Quest Software\Diagnostic Server
```

The default file path of the Spotlight Client on upgrade from Spotlight on SQL Server is as before

```
C:\Program Files (x86)\Quest Software\Spotlight on SQL Server
```

The default file path of the Spotlight Client on a clean install (not an upgrade) is

```
C:\Program Files (x86)\Quest Software\Spotlight Enterprise
```


### Spotlight on SQL Server Enterprise 11.2 and alarms requiring acknowledgment
The Spotlight factory settings for alarms requiring acknowledgment changes on upgrade from Spotlight on SQL Server Enterprise 11.2. Only Connection Failure alarms are now factory set to require acknowledgment.

The alarms that were factory set to require acknowledgment in Spotlight on SQL Server Enterprise 11.2 and earlier are as follows. They are included here so you can choose to manually enable them to require acknowledgment again post upgrade if required.

*  Availability Group - Failed Over
*  Clusters - Failed over
*  Diagnostic Server - Auto Update Success
*  Error Log - Error Count
*  LiteSpeed Backup Failed
*  LiteSpeed Backup Warning
*  Locks - Blocked Processes
*  Locks - Deadlocks
*  Mirroring Failedover
*  SQL Agent - Jobs Failed

### Spotlight on SQL Server Enterprise 11.1.x or earlier and Spotlight Mobile
If you used Spotlight on SQL Server 11.1.x or earlier to monitor your Spotlight connections on a mobile device and intend to continue monitoring your connections on a mobile device then the following additional upgrade instructions are required.

1. Uninstall the **Spotlight Web Publisher** via **Windows \| Control Panel \| Programs and Features**. The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. It is now important that you uninstall it. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server.

2. From the Spotlight Client, click **Configure \| Spotlight Cloud**. Select **Upload data to Spotlight Cloud**. Ensure your Spotlight Cloud (Spotlight Essentials) account details are correct.

{% include links.html %}
