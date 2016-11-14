---
title: Backup Spotlight Data
summary: "Backup all Spotlight configuration and saved collection data regularly and before upgrade or uninstall."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_backupdata.html
folder: SpotlightEnterprise
---




## Spotlight Diagnostic Server

To backup the Spotlight Diagnostic Server, back up the Diagnostic Server\Agent folder.

```
C:\Program Files\Quest Software\Diagnostic Server\Agent
```

{% include tip.html content="To backup just the Spotlight configuration (configuration of connections, alarms and scheduling), backup the **Diagnostic Server\Agent\Conf** folder." %}


## Playback Database

The Playback Database is deployed on SQL Server. The backup procedure for the Playback Database is the same as for any other SQL Server database.


## Spotlight Statistics Repository

The Spotlight Statistics Repository is deployed on SQL Server. The backup procedure for the Spotlight Statistics Repository is the same as for any other SQL Server database.

{% include note.html content="Creation and use of the Spotlight Statistics Repository is optional in a Spotlight Enterprise deployment." %}

{% include links.html %}
