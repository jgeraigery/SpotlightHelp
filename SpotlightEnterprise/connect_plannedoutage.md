---
title: Planned Outage
keywords: sample
summary: "Let Spotlight know the scheduled maintenance times for monitored connections. During the outage period, Spotlight will treat these connections as unavailable, so will not raise alarms or collect data."
sidebar: p_enterprise_sidebar
permalink: /enterprise_connect_plannedoutage/
---


## During a planned outage

Spotlight views and connections in planned outage

Icon | Ribbon Select | Description
-----|---------------|------------
![Heatmap]({{ "/imagesClient/tb_alarms_heatmap.png" | prepend: site.baseurl }}) | Monitor \| Heat Map | Connections are removed from the heat map while they are in planned outage.
![Alarms by time]({{ "/imagesClient/tb_alarms_time.png" | prepend: site.baseurl }}) | Monitor \| Alarms by Time | A Monitored Server Planned Outage alarm is raised when planned outage begins. This information alarm clears when the planned outage completes.
![Alarm log]({{ "/imagesClient/tb_alarms_log.png" | prepend: site.baseurl }}) | Monitor \| Alarm Log |
![Spotlight overview page]({{ "/imagesClient/tb_drilldown_home.png" | prepend: site.baseurl }}) | Monitor \| Home | During a planned outage, all controls are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control.

## Schedule a planned outage

To schedule maintenance times

*  Click Configure \| Planned Outage.


## Resume monitoring

If the connections become available before the scheduled time then you can request Spotlight resume monitoring manually.

Ways to request Spotlight resume monitoring manually

Connections menu | Configure \| Planned Outage  
-----------------|----------------------------
Resume monitoring of the connection. Right click the connection and select Resume Monitoring | Resume monitoring of an outage item on the Planned Outage grid. An item may apply to multiple connections. From the Planned Outage grid, select the outage item and click Resume Monitoring to resume monitoring all connections on this item.





 Note: If your Planned Outage grid has multiple items that overlap in time and involve multiple connections then Spotlight will follow this simple rule:- Command Resume Monitoring overrides any and all outage plans active at that time. For example, say there are two planned outage items from 1 pm to 3 pm. Connection A is scheduled for both items. At 2 pm select item 1 and Resume Monitoring. Spotlight will resume monitoring connection A even though the planned outage period from item 2 still has connection A in outage.
