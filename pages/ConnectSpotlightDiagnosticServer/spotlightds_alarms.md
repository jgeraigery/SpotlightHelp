---
title: Spotlight Diagnostic Server Alarms
last_updated: July 29, 2016
tags: [alarms,alarms_by_connection_type]
summary: ""
sidebar: c_spotlightds_sidebar
permalink: spotlightds_alarms.html
folder: ConnectSpotlightDiagnosticServer
---



## List of alarms that can be raised against the Spotlight Diagnostic Server

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "spotlightds_alarms" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>



{% include links.html %}
