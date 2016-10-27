---
title: Maintenance plan for Spotlight Statistics Repository and Playback Database
summary: "It is recommended that a maintenance plan for both the Spotlight Statistics Repository and the Playback Database is implemented."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_maintenanceplan.html
folder: SpotlightEnterprise
---


Both the Spotlight Statistics Repository and Playback Database support a large number of monitored servers and automatically maintain the age of data available. Due to the nature of the automatic purging of old data, the data may become fragmented and this may decrease the efficiency of data retrieval operations over time.

This topic provides guidance on how to configure and automate the maintenance of the Spotlight Statistics Repository and the Playback Database.

## Database configuration

The Spotlight Statistics Repository and the Playback Database do not require the database to be run under the Full Recovery model. However, since Spotlight uses the model system database to create the repository, your Spotlight repository may inherit the Full Recovery setting. Unless you are required to use the Full Recovery model and are prepared to perform regularly scheduled log file backups, we recommend you change the repository recovery model to Simple. Doing so will help maintain a considerably smaller transaction log file.

To change the repository database to Simple recovery, run the following command:

```
ALTER DATABASE [SpotlightStatisticsRepository] SET RECOVERY SIMPLE;
```

## Fragmentation and index performance

The Spotlight Statistics Repository implements a star schema because of the data warehousing-style simplicity it offers for data storage and retrieval. The star schema implements a primary fact table that references a number of dimension tables. The fact table holds collections and alarm data, and the dimension tables hold definition information on everything from instance information to collection names. Spotlight maintains the age of the data in the repository, but the continuous INSERT and DELETE operations performed for data insertion and purging can lead to fragmentation. Fragmentation will eventually lead to increased CPU and I/O resource consumption.

Although the Playback Database uses a simpler schema, its data will also become fragmented over time as new data is inserted and old data purged.

To best address performance concerns, fragmentation should be minimized and index statistics should be kept up-to-date. Spotlight's scheduled maintenance feature does this automatically. By default, the Spotlight Diagnostic Server runs maintenance procedures daily at 3am for the Playback Database and Spotlight Statistics Repository. The maintenance schedule can be changed in Spotlight Options. See [Configure the database maintenance schedule][enterprise_cfgds_databasemaintenanceschedule].

## Database backup

The Spotlight Statistics Repository and Playback Database should be included in the list of important databases which have a disaster recovery plan associated with them. The implementation of this task is dependent on the policies and infrastructure of your organization.

{% include links.html %}
