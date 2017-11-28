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
   {% include imageClient.html file="tb_config_dserver.png" alt="Configure Diagnostic Server" %}
2. Select **Configure the database maintenance schedule**.

## Select the Diagnostic Server

If the Spotlight Diagnostic Server is federated you will be prompted to select the Spotlight Diagnostic Server to configure. Please configure each Spotlight Diagnostic Server in the federation (one at a time) independent of each other.

## Set the maintenance schedule

### Run maintenance procedure for the Playback database / Statistics repository.

Enable / disable maintenance procedures.

{% include note.html content="It is highly recommended that regular maintenance is performed to maintain efficient data retrieval." %}

{% include note.html content="If your enterprise deploys multiple Spotlight Diagnostic Server and multiple Spotlight Diagnostic Server direct data to the same Spotlight Statistics Repository ([Configure the Spotlight Statistics Repository][enterprise_cfgds_ssr]) then **Enable** maintenance procedures for one of these Spotlight Diagnostic Server only. One maintenance plan script maintains the whole Spotlight Statistics Repository database." %}

### Run maintenance procedures…

Configure the maintenance schedule. By default, maintenance procedures run for the Playback Database and Spotlight Statistics Repository 3am daily.

{% include links.html %}
