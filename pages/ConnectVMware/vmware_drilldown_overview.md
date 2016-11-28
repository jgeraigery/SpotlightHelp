---
title: Spotlight Overview page for VMware connections
summary: "Use the Spotlight Overview page to diagnose bottlenecks and problem areas on a single VMware connection."
tags: [overview_page,overview_page_for_each_connection_type]
sidebar: c_vmware_sidebar
permalink: vmware_drilldown_overview.html
folder: ConnectVMware
---


## How to open (and Use) the Spotlight Overview page
The Spotlight Overview page can be opened from:
* [Spotlight Client][enterprise_display_overview]
* [Spotlight Mobile][mobile_overview]

## The Spotlight Overview page components for a VMware connection
The components of the Spotlight Overview page are specific to the VMware connection.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "vmware_overview" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>




{% include links.html %}
