---
title: Configuration templates
tags: [configure_monitoring]
summary: "Save Spotlight monitoring configurations to a template"
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_templates.html
folder: SpotlightEnterprise
---


## How to create a template

1. Open the Spotlight Configure page specific to the template you want to create (for example **Configure \| Alarms**). Any of the following Spotlight configurations can be saved to a template.

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

2. Select a template or connection that will be the basis of the new template.
3. Click **Save as Template** to open the **Save to Template dialog**. You have now created a new template based on the configuration of the selected connection or template.

   {% include imageClient.html file="pane_configure_saveastemplate_new.png" alt="Create the new template." %}

4. The newly saved template is now selected in the configuration dialog. Any changes you make to the configuration will be applied to this template.
5. Configure as appropriate.
6. Click **OK** to save changes to the template and close the configuration dialog.

   {% include imageClient.html file="pane_configure_saveastemplate_change.png" alt="Select the new template" %}


## How to apply a template configuration to Spotlight connections

1. Open the Spotlight Configure page specific to the template (for example **Configure \| Alarms**).
2. Select the template.
3. Click **Apply configuration to….**
4. If you have made changes to the configuration then you will be prompted to save those changes to the template.
5. For an alarm or scheduling configuration, Choose configurations to apply.
6. Select the Spotlight connections to apply the configuration to. For more information, see Select connections.
7. Preview changes to the configuration of the Spotlight connections. For more information, see Preview changes.

## How modify a template

1. Open the Spotlight Configure page specific to the template (for example **Configure \| Alarms**).
2. Select the template.
3. Modify the configuration.
4. Click **OK**.

## How to delete a template

1. Open the Spotlight Configure page specific to the template (for example **Configure \| Alarms**).
2. Select the template.
3. Click **Delete Template**.

## How to rename a template

1. Open the Spotlight Configure page specific to the template (for example **Configure \| Alarms**).
2. Select the template.
3. Click **Rename Template**.

{% include imageClient.html file="pane_configure_templateapply.png" alt="Save changes to the template configuration" %}

{% include tip.html content="The Spotlight **Factory Settings Template** is applicable to **Configure \| Alarms** and **Configure \| Scheduling**. The Spotlight Factory Settings Template cannot be deleted, renamed or otherwise changed. Select the Spotlight Factory Settings Template to show the Spotlight Factory default configuration." %}

{% include links.html %}
