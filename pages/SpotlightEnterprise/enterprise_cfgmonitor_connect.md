---
title: Configure Connections
tags: [connection_details,configure_monitoring]
summary: "Request Spotlight on SQL Server Enterprise monitor your SQL Server, Windows Server and other connection types. Remove connections and configure connection properties."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect.html
folder: SpotlightEnterprise
---



## Add Connections

From the Spotlight Client

1. Click **Configure \| Connections**.
2. Double click **Add new connection**. You may be prompted to enter **New Connection Details**.
3. You will be prompted to fill in the connection properties.

The connection properties for a new connection are entered on two tabs: **Details** and **Tags**. The connection details are required. The details are dependent on the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "connection_details_for_each_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>

Connection **Tags** are optional. Connection Tags are a free form organizational tool that may be applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.

## Discover Connections

The Connection Discovery Wizard is used to locate resources on the network and add those resources as Spotlight connections. The Connection Discovery Wizard can be used to locate SQL Server instances or Windows Servers.

From the Spotlight Client

1. Click **Configure \| Connections**.
2. Double click **Discover** from the list of All connections, SQL Server or Windows.



## Diagnose Connections

From the Spotlight Client

1. Click **Configure \| Connections**.
2. Double click on the connection or click **Diagnose** to open the Spotlight Overview page for the connection.


## Edit Connection Properties

From the Spotlight Client

1. Click **Configure \| Connections**.
2. Right click on the connection and select **Properties**.

The connection properties for an existing connection are shown on three tabs: **Details**, **Tags** and **Monitoring**.

The connection **Details** are  dependent on the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "connection_details_for_each_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>

Replace / add / delete **Tags** for the connection. Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.
Monitoring | Edit connection monitoring settings

## Delete the connection

From the Spotlight Client

1. Click **Configure \| Connections**.
2. Right-click on the connection and select **Delete**.

If you have customized the alarms set for this connection or the scheduling information then those customizations will be deleted with the connection. You may like to backup your customizations before you delete the connection. To do so, backup the \Agent\Conf folder in the Spotlight Spotlight Diagnostic Server installation folder.

{% include links.html %}
