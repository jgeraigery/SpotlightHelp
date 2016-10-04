---
title: Apply configuration to...
tags: [configure_monitoring]
summary: "Apply the configuration of a template or connection to one or more connections."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_applyconfig.html
folder: SpotlightEnterprise
---


## The **Apply configuration to…** button is at the bottom of the following Spotlight configuration dialogs.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "apply_configuration_to" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


## There are four parts to the process:

1. From the configuration dialog, select a template or connection.
2. Click the **Apply configuration to…** button to apply the configuration of the selected template or connection.
3. **Choose configurations** - for an alarm or scheduling configuration.
4. **Select connections** - The configuration will be applied to the selected connections.
5. **Preview changes** - Preview the changes to the configuration for the selected connections.

{% include imageClient.html file="pane_configure_applyconfigurationto.png" alt="Apply the selected template or connection configuration to the selected connections" %}


{% include tip.html content="The Spotlight **Factory Settings Template** is applicable to **Configure \| Alarms** and **Configure \| Scheduling**. Select the Spotlight Factory Settings Template to reapply the default configuration to selected connections." %}


{% include links.html %}
