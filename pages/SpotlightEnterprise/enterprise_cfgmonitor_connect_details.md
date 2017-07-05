---
title: Enter / Edit Connection Details
tags: [connection_details]
summary: "Enter / Edit Connection Details for your SQL Server, Windows Server and other connection types."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_details.html
id: 40101
folder: SpotlightEnterprise
---



## Open this dialog from the Spotlight Client

1. From the Spotlight Client, click {% include inline_imageClient.html file="tb_config_connections.png" alt="Configure Connections" %} **Configure \| Connections**.
2. To add a connection, double click **Add new connection**. You may be prompted to fill in the **New Connection Details** dialog.
   To edit the details of an existing connection, right click on the connection and select **Properties**.

## The connection details are dependent on the connection type

Click on the connection type for more details:

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "connection_details_for_each_connection_type" %}
<li><a href="{{ page.url | remove_first:'/' }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


{% include links.html %}
