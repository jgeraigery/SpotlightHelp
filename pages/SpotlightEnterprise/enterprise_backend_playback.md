---
title: Playback Database
summary: "Recent historical information (collected from monitored connections) is stored in the Playback Database."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_playback.html
folder: SpotlightEnterprise
---

## Deployment

The Playback Database is deployed on SQL Server. For specifications, see the Spotlight on SQL Server Enterprise Release Notes.

The Playback Database is created by the Spotlight installer.

There is one Playback Database per Spotlight Diagnostic Server.

## Configuration

Use a Spotlight Client to Configure the Playback Database.

## Maintenance

### Playback

See how to use the data collected in the Playback Database.

### Backup Spotlight data

The Playback Database is deployed on SQL Server. The backup procedure is the same as for any other SQL Server database.

### Maintenance plan for Spotlight Statistics Repository and Playback Database

Configure the database maintenance schedule

It is highly recommended that regular maintenance is performed to maintain efficient data retrieval.

### Configure \| Scheduling

Configure Spotlight's data collection schedules. How often is data collected? On what day? At what time?

### Database Objects and Privileges

Click for information on the Playback Database User Privileges and Roles and Playback Database Objects Created.

### Upgrade

Following upgrade of the Spotlight Diagnostic Server, the Playback Database is automatically upgraded the next time it is accessed by the Spotlight Diagnostic Server.

If in your environment the Playback Database is replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade the Playback Database, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication.



{% include links.html %}
