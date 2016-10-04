---
title: Select connections
summary: "This dialog is opened as one of a series when using Apply configuration to… to apply a configuration to selected connections."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_selectconnections.html
folder: SpotlightEnterprise
---

## Search

{% include imageClient.html file="pane_selectconnections_search.png" alt="Search" %}

Optionally, use the search field to search for Spotlight connections. Type text in this field to identify connections matching this text in their name, type or tag.

### Name

The display name of the connection in Spotlight.

### Type

The connection type: Analysis Services, Hyper-V, SQL Server, Windows Server etc.

### Tag

Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection. For more information on tags, see Connection Properties \| Tags.

## Select

Select from the connections monitored by Spotlight. This list is adjusted as applicable to the configuration to be applied. For example, a Spotlight configuration for a SQL Server instance can be applied to other SQL Server instances, but may not be applicable to Windows Server connections.

{% include imageClient.html file="pane_selectconnections_connectiontypes.png" alt="Connection Type" %}

## Selected

The Selected Connections list is a list of the connections that you have selected. The configuration will be applied to these connections.

To remove a connection from this list, select the connection and click **Remove**.


{% include links.html %}
