---
title: Store SQL Text and Query Plans in Playback
summary: "Configure the Spotlight Diagnostic Server to store SQL Text and Query Plans in the Playback database."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_storesqltextqueryplans.html
id: 710
folder: SpotlightEnterprise
---


## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
   {% include imageClient.html file="tb_config_dserver.png" alt="Configure Diagnostic Server" %}
2. Select **Store SQL Text and Query Plans in Playback**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured to store SQL text and Query Plans in Playback.


## Select to store SQL Text and Query Plans in Playback

When selected, Spotlight stores SQL query statements and plans in the Playback Database. This data will be available during playback of events and data collected in the recent past in the **SQL Server \| SQL Activity drilldown \| Sessions page** and the **SQL Server \| SQL Activity drilldown \| Query Execution Statistics page**.

{% include note.html content="This setting applies to all SQL Server monitored through the Spotlight Diagnostic Server. You can disable for individual SQL Server via [SQL Server \| Connection Details][sqlserver_connect_details]." %}


## Disable: Store SQL Text and Query Plans in Playback

SQL Text and Query Plans will no longer be stored in the Playback Database for All SQL Server monitored through this Spotlight Diagnostic Server.  This data will no longer be available during playback of events and data collected in the recent past in the **SQL Activity drilldown \| Sessions page** and the **SQL Activity drilldown \| Query Execution Statistics page**.

{% include links.html %}
