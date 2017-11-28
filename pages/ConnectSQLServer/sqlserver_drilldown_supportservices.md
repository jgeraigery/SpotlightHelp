---
title: Support Services drilldown
last_updated: October 16, 2017
summary: ""
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_supportservices.html
folder: ConnectSQLServer
---



## How to open the Support Services drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Support Services** from the ribbon.
   {% include imageClient.html file="tb_drilldown_support.png" alt="Support Services drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Support Services drilldown

### SQL Agent Jobs page
Investigate jobs that are defined, their current status and the latest execution message

#### SQL Agent Jobs grid
Lists all SQL Server Agent Jobs that are defined in this server and their current status.

Failed jobs are highlighted with a red "X" icon, successfully completed jobs are shown with a green "check" icon, and jobs that are currently running are shown with a blue "!" icon.


To start a job from the grid, select the job and click **Start Job**. Membership of the Spotlight Diagnostic Administrators group is required to perform this operation.




#### Job History grid
Shows the execution messages for each step in a job. Job messages may not be available for all jobs.

#### SQL Agent Jobs Status chart
Shows the status of jobs over time, making it easy to determine when a job ran, and when it succeeded or failed.

When a job executes, Spotlight adds it to this chart (Running), identifying the time it started.

When the job finishes, Spotlight checks the completion status (Success or Failure) and changes the color of the job accordingly, making it easy to see exactly when a job started and ended.



### Service Status page
Investigate the current and historical status of each SQL Server support service.

#### Service Status grid
Shows the current status of each SQL Server support service.

You can start and stop services by right-clicking a service and selecting the appropriate option from the shortcut menu. You must be a member of the Spotlight Diagnostics Administrators group to stop and start services from Spotlight.

The start/stop service feature is fully cluster aware. If your server is running on a cluster, the start/stop service function requests that the cluster software take the cluster resource offline, rather than just stopping the service manually. This prevents the cluster service from failing the resource over to another node.

To use the Start and Stop options when connected to SQL Server 2005 or later, in addition to the Spotlight user being a member of the Spotlight Diagnostics Administrators group, the Diagnostic Server must be connected to the SQL Server as a sysadmin level user and xp_cmdshell must be enabled on the SQL Server. If the Diagnostic Server is not connected as a sysadmin user and /or xp_cmdshell is disabled, the Start and Stop options will not perform the expected service control actions when they are used.

SQL Mail and SQL Agent Mail are not services and cannot be started or stopped. The Support Service Status panel displays their current configuration status only.


#### Service Status History chart
Shows the status of each SQL Server support service over time. You can see exactly when each support service was and was not running, and whether a service has been installed.

SQL Mail and SQL Agent Mail are not services and cannot be started or stopped. The Service Status History chart displays their current configuration status only.


### SQL Agent Alerts page
Investigate defined SQL Server agents alerts.

#### SQL Agent Alerts grid
Lists all SQL Server Agent alerts that are defined in this SQL Server, highlighting the type of alert (Event Alert or Performance Alert), as well as how often the event has occurred, and the date and time of its last occurrence.

#### Alert Occurrences chart
Shows you when recent SQL agent alerts have occurred, and how many have occurred in the collection period. The legend on the right indicates the types of alerts that are currently displayed in the chart.


### Cluster Services page
Investigate the state of your current Microsoft Cluster Server.

The Cluster Services grid displays information about the state of your current Microsoft Cluster Server.

You can view the status of each cluster resource and group, as well as the status of any cluster resources owned by each server (node) in the cluster. Spotlight Enterprise highlights any unusual conditions such as resources offline, or cluster nodes down.

You can also perform the following basic cluster control operations on some resources by right-clicking the grid and selecting an option from the shortcut menu. You must be a member of the Spotlight Diagnostic Administrators group to perform these operations.

**Take Offline** - This makes a cluster resource or cluster group unavailable. For example, taking the SQL Server resource offline will stop the MSSQLServer service. This option is available only for groups and resources that are currently online. Additionally, you cannot take a resource offline if that would cause the SQL Server, to which Spotlight is currently connected, to be taken offline.

**Bring Online** - Starts a cluster resource or group. This is the opposite of Take Offline. This option is available only for resources and groups that are offline.

**Move Group** - Moves a cluster group to another node of the cluster. This will prompt you for the machine that the group should be moved to.  All cluster resources in this group will be brought online on the node you specify.



### DTC page
Investigate the performance of the Distributed Transaction Coordinator (DTC).

{% include note.html content="The DTC page is not supported for SQL Server hosted on Unix/Linux operating systems." %}

{% include note.html content="The DTC Details page provides additional data on SQL Server transactions within SQL Server. If the server that Spotlight is currently connected to has more than one instance running then details reported in this page are for all instances of SQL Server on the current machine, not only the instance currently under analysis." %}

### Full Text Search page
Shows performance details for all full-text indexes on the server. In full-text indexing, a separate catalog is maintained that indexes each word in a database field as a separate index entry.

If some of the details are incomplete for all of the rows, the Full Text Search Service may not be running. Check the Services Status grid on the Service Status page to confirm this.


{% include links.html %}
