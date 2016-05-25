---
title: Configure connections
keywords: sample
summary: "Spotlight connects to the SQL Server, Windows Server and other supported connection types in your enterprise. Spotlight monitors the activity and performance of these connections. Use this screen to add and remove connections and configure connection properties."
sidebar: p_enterprise_sidebar
permalink: /enterprise_cfg_connect/
---



## Add new connection

Double click Add new connection. You may be prompted to enter New Connection Details.
You will be prompted to fill in the connection properties.

Properties | Description
-----------|------------
Details | The connection details are required. The details are dependent on the connection type.
Tags | Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.

## Discover

Double click Discover from the list of All connections, SQL Server or Windows.

The Connection Discovery Wizard is used to locate resources on the network to add as Spotlight connections. The Connection Discovery Wizard can be used to locate SQL Server instances or Windows Servers. See the Connection Discovery Wizard.

## Diagnose

Double click on the connection or click Diagnose to open the connection Spotlight home page.

## Properties

Right click the connection and select Properties.

Properties | Description
-----------|------------
Details | The details are dependent on the connection type.
Tags | Replace / add / delete tags for the connection. Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.
Monitoring | Edit connection monitoring settings

## Delete

Right-click the connection and select Delete.

If you have customized the alarms set for this connection or the scheduling information then those customizations will be deleted with the connection. You may like to backup your customizations before you delete the connection. To do so, backup the \Agent\Conf folder in the Spotlight Spotlight Diagnostic Server installation folder.
