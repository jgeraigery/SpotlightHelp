---
title: Configure Alarms
tags: [configure_monitoring,apply_configuration_to]
summary: "Set the thresholds and severities that determine when an alarm is raised. Disable an alarm. Set an alarm to require acknowledgment. Configure keyed alarms. Collect additional diagnostic information on an alarm."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarms.html
id: 212
folder: SpotlightEnterprise
---


All alarms in Spotlight, including Diagnostic Server and operational alarms, can be configured.

{% include tip.html content="Before you change the alarm configurations you may like to backup the current configurations. You can do this by backing up the \Agent\Conf folder in the Spotlight Diagnostic Server installation folder." %}


The kinds of configuration include:

*  Disable an alarm
*  Set an alarm to require acknowledgment
*  Configure keyed alarms - apply different severities to individual keys in an alarm.
*  Change the severity level or number of severities. (Change severity information)
*  Collect additional diagnostic information
*  Do not alarm for certain values


## Configure alarms from the Spotlight Client

Click **Configure \| Alarms**.


## Select template or connection to configure

Option | Description
-------|------------
Factory Settings | Select to show the settings shipped with Spotlight. These settings can be reapplied to a connection. These settings cannot be changed.
Connection | Select a Spotlight connection to show / change alarm configurations for that connection.
Template | Select a template to show / change / reapply a template configuration. Select a template to delete or rename that template. The templates you have previously saved are listed. For more information, see Configuration templates.


## Select an alarm to configure

The table of alarms is as follows.

Column | Description
-------|------------
Name | The name of the alarm.
Type | The alarm applies to this connection type.
Modified | Yes if the alarm is set to other than the Factory Settings.

Double click on an alarm to configure the alarm.

Information about each alarm is documented under the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "alarms_by_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>

## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.

## Close the dialog

### OK

Save the alarm configuration(s) for the selected connection or template.

### Cancel

Discard changes to this screen.


{% include links.html %}
