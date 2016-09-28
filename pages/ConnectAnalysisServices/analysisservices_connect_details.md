---
title: Analysis Services connection details
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for SQL Server Analysis Services."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_connect_details.html
folder: ConnectAnalysisServices
---



## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.


## Address

The connect string used to link to the server (that is, the Server Name, Server Instance Name, or IP address).

## Instance

The instance name of the Analysis Services server. This is filled in automatically by Spotlight as the content to follow the "/" in the address.

## Connection

Select the Windows server hosting the Analysis Services server. This is required. If the Windows server host is not in the list of connections then click **Create** to add it to the list.


  {% include tip.html content="Click Create to add a Windows server to the list. This opens Windows Server \| Connection Details." %}




{% include links.html %}
