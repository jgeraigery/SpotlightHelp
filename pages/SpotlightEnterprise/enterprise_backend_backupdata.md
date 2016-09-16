---
title: Backup Spotlight Data
summary: "Backup all Spotlight configuration and saved collection data regularly and before upgrade or uninstall."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_backupdata.html
folder: SpotlightEnterprise
---




## Spotlight Diagnostic Server


Back up the Diagnostic Server\Agent folder.

C:\Program Files\Dell\Diagnostic Server\Agent

 

TIP: To backup just the Spotlight configuration (configuration of connections, alarms and scheduling), backup the Diagnostic Server\Agent\Conf folder.


## Playback Database

Backup the Playback Database. The Playback Database is deployed on SQL Server. The backup procedure is the same as for any other SQL Server database.


## Spotlight Statistics Repository

If a Spotlight Statistics Repository is deployed in your environment then back it up. The Spotlight Statistics Repository is deployed on SQL Server. The backup procedure is the same as for any other SQL Server database.


{% include links.html %}
