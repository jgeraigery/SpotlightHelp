---
title: New Connection Details dialog
tags: [connection_details]
summary: "This dialog may be opened from Configure | Connections on request to add a new connection."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_newdetails.html
id: 40104
folder: SpotlightEnterprise
---



## Select Diagnostic Server

In a federated system you will be prompted to select the Spotlight Diagnostic Server. 

Notes on this are as follows:

* A SQL Server instance should be monitored on the same Spotlight Diagnostic Server as the SQL Server host.
* Where Windows hosts are in a virtual environment the Windows host should be monitored by the same Spotlight Diagnostic Server as the associated Hyper-V / VMware server.
* A single Spotlight Diagnostic Server is designed to monitor a maximum of 100 SQL Servers, Analysis Services or Replication instances and 100 Windows servers. Exceeding this recommended limit on 32 bit environments may result in poor performance or product instability, due to the 1 Gb memory limit. On 64 bit environments theoretically more connections can be monitored as the 1 Gb limit no longer applies, however testing of this has been limited.

## Select connection type

If requested, from the drop-down list, choose the type of connection you want to add.

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
