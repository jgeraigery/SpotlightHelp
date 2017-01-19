---
title: Enter / Edit Connection Details
tags: [connection_details]
summary: "Request Spotlight Enterprise monitor your SQL Server, Windows Server and other connection types. Add and remove connections and configure connection properties."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_details.html
id: 40101
folder: SpotlightEnterprise
---



## Enter / Edit Connection Details from the Spotlight Client

From the Spotlight Client, click **Configure \| Connections**.

To add a connection, double click **Add new connection**. You may be prompted to fill in the **New Connection Details** dialog.
To edit the details of an existing connection, right click on the connection and select **Properties**.

## The connection details are dependent on the connection type

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


{% include links.html %}
