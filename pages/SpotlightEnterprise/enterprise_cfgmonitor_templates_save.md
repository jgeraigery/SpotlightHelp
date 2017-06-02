---
title: Save to template
summary: "Save this Spotlight configuration to a template."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_templates_save.html
folder: SpotlightEnterprise
---


## Template name

Give the template a name.

If a template with this name already exists, Spotlight will ask you if you would like to replace it. For each Spotlight configuration, template names must be unique.

## Description

Optionally, enter a textual description for the template.

## Templates can be saved for the following Spotlight configurations:

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "apply_configuration_to" %}
<li><a href="{{ page.url | remove_first:'/' }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


{% include links.html %}
