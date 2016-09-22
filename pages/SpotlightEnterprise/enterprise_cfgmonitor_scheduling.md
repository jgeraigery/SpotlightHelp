---
title: Configure Scheduling
tags: [configure_monitoring]
summary: "Configure Spotlight's data collection schedules. How often is data collected? On what day? At what time?"
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_scheduling.html
folder: SpotlightEnterprise
---



## Configure Spotlight's data collection schedules from the Spotlight Client

Click **Configure \| Scheduling**.


## Select template or connection to configure

Option | Description
-------|------------
Factory Settings | Select to show the data collection schedules shipped with Spotlight. These settings cannot be changed. These settings can be reapplied to a connection.
Connection | Select a Spotlight connection to show / change the data collection schedules for that connection. Optionally use the options at the bottom of the screen to apply the same configuration to other Spotlight connections or save the configuration as a template.
Template | Select a template to show / change / reapply a template configuration. Select a template to delete or rename that template. The templates you have previously saved for Spotlight data collection schedules (for this connection type) are listed.

## Store reporting data?

### Store reporting data

Select to store reporting data in the Spotlight Statistics Repository for the selected connection. Reporting data is used by Reporting and Trending requires the Spotlight Statistics Repository to be configured (Configure the Spotlight Statistics Repository.

### Do not collect and store reporting data

Do not store reporting data in the Spotlight Statistics Repository for the selected connection. No future data will be stored in the Spotlight Statistics Repository for the selected connection. No future data will be available for Reporting and Trending for the selected connection.

## Select a collection to modify the collection schedule

The table of collections is as follows.

Column | Description
-------|------------
Name | The name of the collection.
Type | The collection relates to this connection type.
Modified | Yes if the collection schedule is set to other than the Factory Settings. No if the collection schedule is set as per the Factory Settings.

Double click on a collection to modify the collection schedule.

Information about each collection is documented under the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "collections" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>

### Collect in background

Is Spotlight scheduled to collect data from this collection in the background? How often? Background schedules are used when the Spotlight Overview page or drilldowns are not being viewed. The data is stored for Playback in the Playback Database.

Keywords may be
Keyword | Description
--------|------------
Not collecting | Spotlight is not currently collecting data for this collection. This is configurable.
Not collectable | Spotlight does not collect data for this collection and Spotlight cannot be configured to collect data for this collection.
Collected automatically | Spotlight collects data for this collection automatically.

### Collect for reporting

Is Spotlight scheduled to collect data from this collection for reporting? How often? Reporting schedules are used by Reporting and Trending. Reporting schedules are stored in the Spotlight Statistics Repository.

### Keep for

For how long is data from this collection stored in the Spotlight Statistics Repository.


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.


## Close the dialog

### OK

Save changes to the collections for the selected connection or template.

### Cancel

Discard changes to this screen.




## Notes

* Before you change a collection's schedule you may like to backup the current schedules. You can do this by backing up the \\Agent\\Conf folder in the Spotlight Diagnostic Server installation folder.
* Some collections cannot be scheduled for reporting. They may gather too much data or there may be no value in the data for the purpose of reporting. Other collections are only collected for reporting so cannot be scheduled to run in the background.
* The background and reporting schedules for some collections cannot be modified.
* Real time schedules are used to view data live on the Spotlight Overview page or drilldowns. Real time schedules cannot be modified.





{% include links.html %}
