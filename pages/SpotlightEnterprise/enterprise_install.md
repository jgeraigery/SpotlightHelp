---
title: Install
tags: [setup]
keywords: setup, install
summary: "Spotlight Mobile operates in an environment where Spotlight on SQL Server and / or Spotlight on Oracle is installed. Use Spotlight Mobile to monitor your Spotlight connections remotely via your mobile device. Spotlight Mobile features include a heatmap, alarms list, alarm details and the ability to snooze and acknowledge alarms."
sidebar: p_enterprise_sidebar
permalink: enterprise_install.html
folder: SpotlightEnterprise
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
Run the Spotlight Enterprise installer. During installation you will be prompted to supply details for the
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
installation of Spotlight Enterprise.
Spotlight on SQL Server Enterprise 11.6
Deployment Guide
10

### About the Playback Database installation

Component | Description
----------|------------
Instance | Select the SQL Server instance to install the Playback Database on. The Playback Database can be installed on the same Windows Server as the Spotlight Diagnostic Server or a different server dependent on the size of the deployment. For more information, see The size and shape of your deployment on page 7.
Authentication | Select Windows or SQL Server authentication.
Database | Optionally rename the database. The default name is SpotlightPlaybackDatabase. If the database has not already been created, click Create to create the database.



{% include links.html %}
