---
title: Connections Display
summary: "The left hand side of the Spotlight Client window lists the monitored databases, instances and servers in your enterprise. Connections are grouped according to connection type. Additionally, you can group connections into Custom views. You can search for connections by name, type or tag."
sidebar: p_enterprise_sidebar
permalink: enterprise_connect_display.html
folder: SpotlightEnterprise
---



## Search by Name, Type or Tag

Filter the list of connections on the Spotlight Client **Connections** pane. To filter this list of connections, type text in the **Search** field. The search matches against the connection name, connection type and connection tags.

Name | The display name for the connection in Spotlight.
Type | The connection type: Analysis Services, Hyper-V, SQL Server, Windows Server etc.
Tag | Tags are a free form organizational tool that may be optionally applied to Spotlight connections.

## Custom views and other views

### All, Recent, Connection type

Grouping / View | Description
----------------|------------
Customized views | Show custom views.
All | All monitored connections.  
Recent | The 9 most recently viewed connections.
Connection type(s) | Groups monitored connections by connection type. For example, 'SQL Server' groups all monitored SQL Servers.  

### Color and number

Alongside the connection type or custom view there are color and number indicators. The color indicates alarm severity. Each connection is colored according to the highest severity alarm raised against the connection or a component of that connection. The number indicates the number of connections in that color.

### Left click

Left click on a connection type or custom view to display a Heat map, Spotlight Today, Alarms by Time or Alarm log for the connections in the group.

### Right click

Right click on a connection type or custom view.

Right click menu | Description
-----------------|------------
Connection Manager | Open the Connection Manager. The Connection Manager is used to add Spotlight connections and configure existing Spotlight connections.
View Spotlight Today | Show the Spotlight connections in this group in Spotlight Today. Spotlight Today lists recent alarms and alarms requiring acknowledgment.
View Alarm Log | Show logged alarms for the Spotlight connections in this group.
View Alarms By Time | Show the Spotlight connections in this group in Alarms by Time. Alarms by Time shows the start time, duration, and severity of alarms.
Rename view | For Custom Views only, rename this custom view
Delete view | For Custom Views only, delete this custom view
Properties | For Custom Views only, view/edit the properties of this custom view.

## Connections

From the Spotlight Client, Connections pane, expand the connection type or custom view to list connections by name.

### Left click

Left click on the Spotlight Client, Connections pane, connection name to show the Spotlight Overview page for the connection.

### Right click

Right click on the Spotlight Client, Connections pane, connection name for further actions.

Right Click menu | Description
---------------------|------------
Open | Open the Spotliht Overview page for the connection. This shows the performance of the connection at the component level.
Connection Manager | Open the Connection Manager. The Connection Manager is used to add Spotlight connections and configure existing Spotlight connections.
View Spotlight Today | Show the Spotlight connection in Spotlight Today. Spotlight Today lists recent alarms and alarms requiring acknowledgment.
View Alarm Log | Show the Spotight connection in the Alarm log.
View Alarms By Time | Show the Spotlight connection in Alarms by Time. Alarms by Time shows the start time, duration, and severity of alarms.
Disable Monitoring | Disable monitoring this connection.
Resume Monitoring | During a Planned Outage, click to resume monitoring this connection before the end of the scheduled time.
Properties | View / edit the properties of this connection: connection details, tags and monitoring properties.

{% include links.html %}
