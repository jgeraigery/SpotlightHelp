---
title: Service Status grid
last_updated: July 29, 2016
summary: "The Services Status grid shows the current status of each SQL Server support service."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_servicestatus.html
id: supportservices2.grdsupportservices2
folder: ConnectSQLServer
---


## The columns in the grid are:

### Service

The SQL Server support service.

### State

The state of the SQL Server support service. For example, Active, Inactive, Not Installed, Not Configured.

### State Changed

The time and date that the state of the service last changed.

## How to start and stop services

You can **start** and **stop** services by right-clicking a service and selecting the appropriate option from the shortcut menu.

The start/stop service feature is fully **cluster aware**. If your server is running on a cluster, the start/stop service function requests that the cluster software take the cluster resource offline, rather than just stopping the service manually. This prevents the cluster service from failing the resource over to another node.

{% include note.html content="To use the Start and Stop options when connected to SQL Server 2005, in addition to the Spotlight user being a member of the Spotlight Diagnostics Administrators group, the Diagnostic Server must be connected to the SQL Server as a sysadmin level user and xp_cmdshell must be enabled on the SQL Server. If the Diagnostic Server is not connected as a sysadmin user and /or xp_cmdshell is disabled, the Start and Stop options will not perform the expected service control actions when they are used." %}

{% include note.html content="SQL Mail and SQL Agent Mail are not services and cannot be started or stopped. The Support Service Status panel displays their current configuration status only." %}

{% include links.html %}
