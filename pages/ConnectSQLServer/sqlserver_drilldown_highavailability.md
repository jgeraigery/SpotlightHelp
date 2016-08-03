---
title: High Availability drilldown
last_updated: July 29, 2016
summary: "The High Availability drilldown shows statistics about the servers involved in transaction log shipping and database mirroring."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_highavailability.html
folder: ConnectSQLServer
---

Mirroring alarms are disabled by default. It is important to configure alarm thresholds that are appropriate to your environment before enabling these alarms. For more information, see Configure \| Alarms.


## Transaction Log Shipping page
Log Shipping Monitor History Detail not available for SQL Server 2000.

### Transaction Log Shipping Primaries grid
Shows statistics relating to the primary database in the log shipping configuration.

### Transaction Log Shipping Secondaries grid
Shows details about the secondary database involved in the log shipping configuration for the primary database selected in the grid above.

### Transaction Log Shipping History grid
If the Primaries page is selected, this grid shows the history for backup jobs on the primary database. If the Secondaries page is selected, this grid shows the history for copy and restore jobs on the secondary database.

### Transaction Log Shipping Secondaries grid
Shows statistics relating to the secondary database in the log shipping configuration.




## Database Mirroring page

This feature is not available for SQL Server 2000.

### Database Mirroring grid
Shows statistics relating to either the principal or mirror server depending on which server Spotlight is connected to.

### Database Mirroring Details
Shows the size of the unsent log on the principal server, the size of the redo queue on the mirror server, and the send rate between the two.




{% include links.html %}
