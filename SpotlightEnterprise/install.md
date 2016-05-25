---
title: Install
tags: [setup]
keywords: setup, install
summary: "Spotlight Mobile operates in an environment where Spotlight on SQL Server and / or Spotlight on Oracle is installed. Use Spotlight Mobile to monitor your Spotlight connections remotely via your mobile device. Spotlight Mobile features include a heatmap, alarms list, alarm details and the ability to snooze and acknowledge alarms."
sidebar: p_enterprise_sidebar
permalink: /enterprise_install/
---


## Permissions required during installation

### The Windows user installing Spotlight
When installing the Spotlight Diagnostic Server, Windows administrator privileges are required to register the
Spotlight Diagnostic Server as a Windows service and to create the Windows user groups that are used to
authenticate Spotlight clients.
When installing the Spotlight Diagnostic Server on a remote machine, the Windows account on the Spotlight
client must have Windows administrator privileges on the Spotlight Diagnostic Server host. The local computer
must be able to authenticate this user.

### Elevated privileges
In many cases, the Spotlight installer will run at elevated privileges in order to perform the required actions.
These privileges can specifically be allowed or disallowed by system administrators by means of standard
Microsoft Installer (MSI) policy settings.
If the Spotlight Diagnostic Server user does not have privileges to start services, that privilege is granted by
Spotlight during the installation process, if possible.

### Multiple users of a system
If multiple users of a system install Spotlight for use, the additional users must be local administrators.

## Install
Run the Spotlight on SQL Server installer. During installation you will be prompted to supply details for the
Spotlight Client, Spotlight Diagnostic Server and Playback Database.

### Types of installation

Typical | Select to install the Spotlight Diagnostic Server on a computer networked to the current computer. Select to install the Spotlight Client on the current computer to connect to a preexisting Spotlight Diagnostic Server.
Compact | Select to install the Spotlight Client and Spotlight Diagnostic Server on the current computer.

### About the Spotlight Client installation

Install location

Default installation folder (32 bit system) | C:\Program Files\Dell\Spotlight on SQL Server
Default installation folder (64 bit system) | C:\Program Files (x86)\Dell\Spotlight on SQL Server

NOTE: Do not install the Spotlight Client in the same location as an existing (but different entity of) Spotlight.
If you install a different Spotlight after you have installed Spotlight Enterprise, do not install the new Spotlight in the Spotlight Enterprise directory.

### About the Spotlight Diagnostic Server installation

Component | Description
----------|------------
Install location | Default installation folder for the Diagnostic Server (32bit and 64bit systems):
C:\Program Files\Dell\Diagnostic Server
During a Typical install the diagnostic server can be installed remotely. Consider installing the Spotlight Diagnostic Server on a computer that is always switched on. Some services require Internet access; see Spotlight services requiring Internet access.
Diagnostic Server Account | The Spotlight Diagnostic Server will run under this Windows account. Enter a domain user account or select the local system account. These credentials can later be used to authenticate Spotlight connections to monitor SQL Server instances and Windows Server.
Diagnostic Server Users | Spotlight uses the Spotlight diagnostic user groups to authenticate the Spotlight Client to the Spotlight Diagnostic Server, to authenticate a user's right to configure Spotlight and execute actions on monitored systems. The Windows user installing Spotlight (on the Spotlight Client) is automatically added to all Spotlight diagnostic user groups. For more information, see Spotlight diagnostic user groups on page 39.
Add more users to the Spotlight diagnostic user groups if required. Members of these groups can be Windows users or Windows domain groups. Aliases are not supported.
Autoupdate
Diagnostic
Server
Selected The Spotlight Diagnostic Server will receive minor updates (scripts and
configuration) automatically. Ensure the Spotlight Diagnostic Server can access
the Internet. For more information, see Spotlight services requiring Internet
access on page 16.
Not
Selected
All updates to the Spotlight Diagnostic Server will require a new version and
installation of Spotlight on SQL Server.
Spotlight on SQL Server Enterprise 11.6
Deployment Guide
10

### About the Playback Database installation

Component | Description
----------|------------
Instance | Select the SQL Server instance to install the Playback Database on. The Playback Database can be installed on the same Windows Server as the Spotlight Diagnostic Server or a different server dependent on the size of the deployment. For more information, see The size and shape of your deployment on page 7.
Authentication | Select Windows or SQL Server authentication.
Database | Optionally rename the database. The default name is SpotlightPlaybackDatabase. If the database has not already been created, click Create to create the database.

## Upgrade

Use the Spotlight installer to upgrade from version 10.0 or later of Spotlight on SQL Server. To upgrade from an earlier version of Spotlight than 10.0, upgrade to at least version 10.0 before upgrading to 11.6. To upgrade from 10.5.0, first upgrade to 10.5.2 and then upgrade to 11.6.

### Backup before upgrade
Backup all Spotlight configuration and saved collection data. For more information, see Backup Spotlight data on page 23.

### Upgrade
On each Spotlight client, run the Spotlight on SQL Server executable.

NOTE:

*  Following upgrade of the Spotlight Diagnostic Server, the Playback Database and Spotlight Statistics Repository are automatically upgraded the next time they are accessed by the Spotlight Diagnostic Server. If in your environment the Playback Database / Spotlight Statistics Repository are replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then reenable replication.
*  If your enterprise has multiple Spotlight Clients then ensure all Spotlight Clients are included in the upgrade process. If the Spotlight Client and Spotlight Diagnostic Server are running different versions of Spotlight on SQL Server, the client will be unable to connect to the Spotlight Diagnostic Server.

### Preservation of configuration information
The following information on the Spotlight Diagnostic Server is preserved when you upgrade:

*  Connection properties for all monitored servers (including changes to scheduling and alarms)
*  Enterprise views
*  Collection properties
*  Alarm Actions (These include running a program and sending an email.)
*  Planned Outages
*  Global options such as user-created Error Log rules
*  Configuration information for the Spotlight Statistics Repository (this applies only if you installed the Spotlight Statistics Repository from an earlier version of Spotlight on SQL Server) and the Playback Database.

### Alarms requiring acknowledgment
The Spotlight factory settings for alarms requiring acknowledgment changes on upgrade from Spotlight 11.2. Only Connection Failure alarms are now factory set to require acknowledgment.

The alarms that were factory set to require acknowledgment in Spotlight 11.2 and earlier are as follows. They are included here so you can choose to manually enable them to require acknowledgment again post upgrade if required.

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

### Monitoring your Spotlight on SQL Server connections on a mobile device
If you used Spotlight 11.1.x or earlier to monitor your Spotlight on SQL Server connections on a mobile device and intend to continue monitoring your connections on a mobile device then the following additional upgrade instructions are required.

1. Uninstall the **Spotlight Web Publisher** via **Windows \| Control Panel \| Programs and Features**. The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. It is now important that you uninstall it. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server.

2. From the Spotlight Client, click **Configure \| Spotlight Cloud**. Select **Upload data to Spotlight Cloud**. Ensure your Spotlight Cloud (Spotlight Essentials) account details are correct.

## Uninstall

Multiple Spotlight clients and servers may be involved. Uninstall the Spotlight Diagnostic Server before you uninstall all Spotlight clients.

### 1. Optionally, backup before uninstall
Backup all Spotlight configuration and saved collection data. For more information, see Backup Spotlight data on page 23.

### 2. Uninstall the Spotlight Diagnostic Server

For the Windows server on which the Spotlight Diagnostic Server is installed:

1. Open Windows Control Panel.
2. Select Programs and Features
3. Select Spotlight Diagnostic Server and click Remove.
NOTE: A running Spotlight Diagnostic Server is automatically shut down before being uninstalled.

### 3. Uninstall Spotlight Clients

Repeat for each Windows server on which a client is installed:

1. Open Windows Control Panel.
2. Select Programs and Features
3. Select Spotlight on SQL Server Enterprise and click Remove.

### The Playback Database and Spotlight Statistics Repository
The Playback Database and Spotlight Statistics Repository are not removed when Spotlight is uninstalled. You may delete them independently. You may use the Playback Database again with another Spotlight installation.
