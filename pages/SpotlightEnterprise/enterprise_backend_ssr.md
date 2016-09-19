---
title: Spotlight Statistics Repository
summary: "Long term history for reporting and trending is stored in the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ssr.html
folder: SpotlightEnterprise
---

## Deployment

The Spotlight Statistics Repository is deployed on SQL Server. For specifications see the Spotlight Enterprise Release Notes.

The Spotlight Statistics Repository is not created during the installation of Spotlight Enterprise. The Spotlight Statistics Repository is (optionally) enabled in the Spotlight Client for the Spotlight Diagnostic Server following installation of Spotlight.

 Many Spotlight Diagnostic Server can connect to one Spotlight Statistics Repository.

## Configuration

Use a Spotlight Client to enable, create and Configure the Spotlight Statistics Repository.

## Maintenance


### Reporting and Trending

See how to use the data collected in the Spotlight Statistics Repository.

### Backup Spotlight data

The Spotlight Statistics Repository is deployed on SQL Server. The backup procedure is the same as for any other SQL Server database.

### Maintenance plan for Spotlight Statistics Repository and Playback Database

Configure the database maintenance schedule

It is highly recommended that regular maintenance is performed to maintain efficient data retrieval.


### Configure \| Scheduling

Configure the reporting schedules that determine how often data is collected for the Spotlight Statistics Repository.

You can reduce the size of the repository by:
* Limiting the number of collections archived
* Reducing how often data is collected
* Reducing the data retention period.


### Schema of the Spotlight Statistics Repository

Build on the example reports or create your own reports by querying the data from the Spotlight Statistics Repository yourself.

### Database Objects and Privileges


Click for information on the Spotlight Statistics Repository User Privileges and Roles and Spotlight Statistics Repository Objects Created.

### Upgrade

Following upgrade of the Spotlight Diagnostic Server, the Spotlight Statistics Repository is automatically upgraded the next time it is accessed by the Spotlight Diagnostic Server. This may be some time following the upgrade of the Spotlight Diagnostic Server, depending on how often the Spotlight Statistics Repository is accessed.

If in your environment the Spotlight Statistics Repository is replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade the Spotlight Statistics Repository, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication.



{% include links.html %}
