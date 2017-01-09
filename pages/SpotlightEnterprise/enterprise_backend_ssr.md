---
title: Spotlight Statistics Repository
summary: "Long term history for reporting and trending is stored in the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ssr.html
folder: SpotlightEnterprise
---

## Deployment

The Spotlight Statistics Repository is deployed on SQL Server.

The Spotlight Statistics Repository is not created during the installation of Spotlight on SQL Server Enterprise. The Spotlight Statistics Repository is (optionally) enabled in the Spotlight Client for the Spotlight Diagnostic Server following installation of Spotlight.

 Many Spotlight Diagnostic Server can connect to one Spotlight Statistics Repository.

## Configuration

Use a Spotlight Client to enable, create and [Configure the Spotlight Statistics Repository][enterprise_cfgds_ssr].

Configure the reporting schedules that determine how often data is collected for the Spotlight Statistics Repository. You can reduce the size of the repository by
limiting the number of collections archived, reducing how often data is collected and reducing the data retention period. [Configure Scheduling][enterprise_cfgmonitor_scheduling]

## Use

The [reports][enterprise_display_reports] use the data collected in the Spotlight Statistics Repository. Reports are used for long term statistical analysis and planning. Use the reports shipped with Spotlight on SQL Server Enterprise or create your own reports by querying the data from the Spotlight Statistics Repository yourself.

## Maintenance

### Backup Spotlight data

The Spotlight Statistics Repository is deployed on SQL Server. The backup procedure is the same as for any other SQL Server database.

### Maintenance plan for Spotlight Statistics Repository and Playback Database

It is highly recommended that regular maintenance is performed to maintain efficient data retrieval. [Configure the database maintenance schedule.][enterprise_cfgds_databasemaintenanceschedule]

### Database Objects and Privileges

Browse information on the Spotlight Statistics Repository User Privileges and Roles and Spotlight Statistics Repository Objects Created. [Database Objects and Privileges][enterprise_backend_dobjectsandprivileges]

### Upgrade

Following upgrade of the Spotlight Diagnostic Server, the Spotlight Statistics Repository is automatically upgraded the next time it is accessed by the Spotlight Diagnostic Server. This may be some time following the upgrade of the Spotlight Diagnostic Server, depending on how often the Spotlight Statistics Repository is accessed.

{% include note.html content="If in your environment the Spotlight Statistics Repository is replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade the Spotlight Statistics Repository, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication." %}


{% include links.html %}
