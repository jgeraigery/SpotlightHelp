---
title: Download and Setup Spotlight Extensions
summary: "Download the Spotlight Extensions installer from the Spotlight web site. Run the installer to install a Spotlight Diagnostic Server (to collect Spotlight monitoring data) and a Playback Database (to store recent monitoring history)."
sidebar: p_extensions_sidebar
permalink: extensions_setup.html
folder: SpotlightExtensions
---



## Download and install Spotlight Extensions

1. Confirm an appropriate SQL Server Management Studio is installed and other [requirements are met][extensions_requirements].
2. [Download Spotlight Extensions](https://www.spotlightessentials.com/download/register).
3. Run the Spotlight Extensions installer.

## Setup the Diagnostic Server
During installation you will be prompted to supply details for the Spotlight Diagnostic Server (to collect monitoring data) and Playback Database (to store recent history). The Diagnostic Server collects monitoring data from your SQL Server environment so that it can be displayed in Spotlight Extensions and the web. The Diagnostic Server is a Windows service.


### Install location

Default installation folder for the Diagnostic Server:

```
C:\Program Files\Quest Software\Diagnostic Server
```

{% include tip.html content="Consider installing the Spotlight Diagnostic Server on a computer that is always switched on. The Spotlight Diagnostic Server requires Internet access." %}

### Diagnostic Server Account

The Spotlight Diagnostic Server will run under this Windows account. Enter a domain user account or select the local system account. These credentials can later be used to authenticate Spotlight connections to monitor SQL Server instances.

### Diagnostic Server Users

Spotlight uses the Spotlight diagnostic user groups to authenticate a user's right to execute actions on monitored systems. The Windows user installing Spotlight Extensions is automatically added to all Spotlight diagnostic user groups.

Add more users to the Spotlight diagnostic user groups if required. Members of these groups can be Windows users or Windows domain groups. Aliases are not supported.

### The Playback Database
The Spotlight Diagnostic Server stores recent monitoring data in the Playback Database.

#### Instance
Select a SQL Server instance to install the Playback Database on.

#### Authentication
Select Windows or SQL Server authentication.

#### Database
Optionally rename the database. The default name is **SpotlightPlaybackDatabase**. If the database has not already been created, click **Create** to create the database.


{% include links.html %}
