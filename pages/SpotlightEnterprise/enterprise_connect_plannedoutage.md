---
title: Planned Outage
keywords: sample
summary: "Let Spotlight know the scheduled maintenance times for monitored connections. During the outage period, Spotlight will treat these connections as unavailable, so will not raise alarms or collect data."
sidebar: p_enterprise_sidebar
permalink: enterprise_connect_plannedoutage.html
folder: SpotlightEnterprise
---

## Schedule a planned outage from the Spotlight Client

To schedule maintenance times, click **Configure \| Planned Outage**.


## Spotlight displays while a connection is in planned outage

Icon | Spotlight Display | Description
-----|---------------|------------
{% include inline_imageClient.html file="tb_alarms_heatmap.png" alt="Heatmap" %} | Heat Map | Connections are removed from the heat map while they are in planned outage.
{% include inline_imageClient.html file="tb_alarms_time.png" alt="Alarms by time" %} | Alarms by Time | A Monitored Server Planned Outage alarm is raised when planned outage begins. This information alarm clears when the planned outage completes.
{% include inline_imageClient.html file="tb_alarms_log.png" alt="Alarm log" %} | Alarm Log |
{% include inline_imageClient.html file="tb_drilldown_home.png" alt="Spotlight overview page" %} | Overview page | During a planned outage, all controls are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control.


## How to resume monitoring before the scheduled time

If the connections become available before the scheduled time then you can request Spotlight resume monitoring manually.

To resume monitoring for a single connection:- From the [Connections display][enterprise_connect_display], right click the connection and select **Resume Monitoring**.

To resume monitoring for multiple connections:- From the [Configure \| Planned Outage dialog][enterprise_cfgmonitor_plannedoutage], Planned Outage grid, select the outage item and click **Resume Monitoring** to resume monitoring all connections on this item. An item may apply to multiple connections.

{% include note.html content="If your Planned Outage grid has multiple items that overlap in time and involve multiple connections then Spotlight will follow this simple rule:- Command Resume Monitoring overrides any and all outage plans active at that time. For example, say there are two planned outage items from 1 pm to 3 pm. Connection A is scheduled for both items. At 2 pm select item 1 and Resume Monitoring. Spotlight will resume monitoring connection A even though the planned outage period from item 2 still has connection A in outage." %}

 {% include links.html %}
