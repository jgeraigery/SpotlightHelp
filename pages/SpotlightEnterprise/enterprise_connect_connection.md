---
title: Monitoring connections and Spotlight Enterprise connection displays
keywords: sample
summary: "The left hand side of the Spotlight Client window lists the monitored databases, instances and servers in your enterprise. These are grouped according to connection type. Additionally, you can group connections into Custom views."
sidebar: p_enterprise_sidebar
permalink: enterprise_connection.html
folder: SpotlightEnterprise
---

Spotlight monitors the activity and performance of these connections.

## Customized views





## Displays  of all monitored connections

The Heatmap, Spotlight Today, Alarms by Time and the Alarm Log can be used to


Click Monitor | Spotlight Today from the Spotlight ribbon to show all monitored connections in Spotlight Today.

Spotlight Today can show a custom view (Custom views) of monitored connections. Click on a custom view or connection type from the Connections pane (Monitored connections) then click Spotlight Today from the display pane.

To open Spotlight Today for just one connection, right click on the connection in the Connections pane (Monitored connections) and select Spotlight Today.


## Real time displays monitoring all connections of a connection type



## Real time displays monitoring all connections in a customized view




## Real time displays monitoring a single connection





## Color and number

Alongside the connection type or custom view there are color and number indicators. The color indicates alarm severity. Each connection is colored according to the highest severity alarm raised against the connection or a component of that connection. The number indicates the number of connections in that color.


## Monitored databases, instances and servers in your enterprise

Grouping / View | Description
----------------|------------
Search | Filter the list of connections on the Connections pane. The search matches against the connection name, connection type and connection tags.  
Add Custom View | Create a custom view.  
Customized views | Show custom views.
All | Show all monitored connections.  
Recent | Show the 9 most recently viewed connections.
Analysis Services | Show all monitored SQL Server Analysis Services servers.  
Availability Groups | Show all monitored Always On Availability Groups. An availability group is a set of user databases that fail over together.
Hyper-V | Show the status of all virtual machines on a Hyper-V server.  
Replication | Show all monitored SQL Server Replication environments.  
SQL Azure | Show all monitored SQL Azure databases.  
SQL Server | Show all monitored SQL Server instances.  
VMware | Show the status of all virtual machines on a monitored VMware server.  
Windows | Show all monitored Windows Servers.
Spotlight Diagnostic Server | Show the status of Spotlight Diagnostic Server in the Spotlight deployment.  



## Spotlight displays for custom views and connection type

Click on a connection type or custom view to display a Heat map, Spotlight today, Alarms by time or Alarm log for connections in the view.

### Right click on a connection type or custom view.

Right click menu | Description
-----------------|------------
Connection Manager | Add connections and configure existing connections.
View Spotlight Today | Show recent alarms and alarms requiring acknowledgment.
View Alarm Log | Show logged alarms.
View Alarms By Time | Show the start time, duration, and severity of alarms.
Rename view | Rename this custom view
Delete view | Delete this custom view
Properties | View/edit the properties of this custom view.

## Spotlight displays for a single Spotlight connection

Expand the connection type or custom view to list connections by name.

Click on the connection name to show the Spotlight Home Page for the connection (Spotlight home page).

### Right click on a connection.

Right Click / Select | Description
Open | Show the performance of this connection at the component level.
Connection Manager | Add connections and configure existing connections.
View Spotlight Today | Show recent alarms and alarms requiring acknowledgment.
View Alarm Log | Show logged alarms for this connection.
View Alarms By Time | Show the start time, duration, and severity of alarms for this connection.
Disable Monitoring | Disable monitoring this connection.
Resume Monitoring | During a Planned Outage, click to resume monitoring this connection before the end of the scheduled time.
Properties | View / edit the properties of this connection.

{% include links.html %}
