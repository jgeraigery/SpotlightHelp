---
title: Configure Connections
tags: [connection_details]
summary: "Connect Spotlight to the SQL Server, Windows Server and other supported connection types in your enterprise. Add and remove connections and configure connection properties."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_details.html
folder: SpotlightEnterprise
---



## Add new connection

From the Spotlight Client

1. Click Configure \| Connections.
2. Double click **Add new connection**. You may be prompted to enter New Connection Details.
3. You will be prompted to fill in the connection properties. The details are dependent on the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "connection_details" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>

## Properties

From the Spotlight Client

1. Click Configure \| Connections.
2. Right click the connection and select **Properties**.
3. The details are dependent on the connection type.



{% include links.html %}
