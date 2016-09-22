---
title: Uninstall
tags: [setup]
keywords: setup, install
summary: "Spotlight Mobile operates in an environment where Spotlight on SQL Server and / or Spotlight on Oracle is installed. Use Spotlight Mobile to monitor your Spotlight connections remotely via your mobile device. Spotlight Mobile features include a heatmap, alarms list, alarm details and the ability to snooze and acknowledge alarms."
sidebar: p_enterprise_sidebar
permalink: enterprise_uninstall.html
folder: SpotlightEnterprise
---


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

{% include links.html %}
