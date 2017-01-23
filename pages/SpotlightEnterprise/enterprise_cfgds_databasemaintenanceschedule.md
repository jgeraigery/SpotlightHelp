---
title: Configure the database maintenance schedule
summary: "Schedule a time for the Spotlight Diagnostic Server to run maintenance procedures for the Playback Database and Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_databasemaintenanceschedule.html
id: 704
folder: SpotlightEnterprise
---


It is highly recommended that regular maintenance is performed to maintain efficient data retrieval. Scheduling automatic maintenance is just one step in the recommended maintenance plan. For more information, see [Maintenance plan for Spotlight Statistics Repository and Playback Database][enterprise_backend_maintenanceplan].

## Configure the database maintenance schedule from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the database maintenance schedule**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server has an independently configured database maintenance schedule.

## Set the maintenance schedule

### Run maintenance procedure for the Playback database / Statistics repository.

Enable / disable maintenance procedures.

{% include note.html content="It is highly recommended that regular maintenance is performed to maintain efficient data retrieval." %}


### Run maintenance procedures…

Configure the maintenance schedule. By default, maintenance procedures run for the Playback Database and Spotlight Statistics Repository 3am daily.

{% include links.html %}
