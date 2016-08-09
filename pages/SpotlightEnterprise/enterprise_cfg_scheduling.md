---
title: Configure Scheduling
tags: [configure_monitoring]
summary: "Configure Spotlight's data collection schedules. How often is data collected? On what day? At what time?"
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_scheduling.html
folder: SpotlightEnterprise
---



## Configure scheduling from the Spotlight Client

Click Configure \| Scheduling.


## Select template or connection to configure

Option | Description
-------|------------
Factory Settings | Select to show Factory Settings for Spotlight data collection schedules. These are the settings shipped with Spotlight. These settings cannot be changed.
Connection | Select a Spotlight connection to show / change the schedules for that connection.
Template | Select a template to show / change / reapply a template configuration. The configuration templates you have previously saved are listed. For more information, see Configuration templates.

## Spotlight Statistics Repository

Option               | Description
---------------------|------------
Store reporting data | Select to store reporting data in the Spotlight Statistics Repository for the selected connection. Reporting data is used by Reporting and Trending requires the Spotlight Statistics Repository to be configured (Configure the Spotlight Statistics Repository.
Do not collect and store reporting data |  Do not store reporting data in the Spotlight Statistics Repository for the selected connection. No future data will be stored in the Spotlight Statistics Repository for the selected connection. No future data will be available for Reporting and Trending for the selected connection.

## Select a collection

The table of collections is as follows.

### Name
Double click an item to modify the collection schedule (Configure a schedule).

Click for more information in the help as to how the collections are used.

### Type
The collection relates to this connection type.

### Modified

Yes | The collection schedule has modified from the default.
No | The collection schedule is set as per the Factory Settings.


### Collect in background

Is Spotlight scheduled to collect data from this collection in the background? How often? Background schedules are used when the Spotlight home page or drilldowns are not being viewed. The data is stored for Playback in the Playback Database.

Keywords may be

Not collecting | Spotlight is not currently collecting data for this collection. This is configurable.
Not collectable | Spotlight does not collect data for this collection and Spotlight cannot be configured to collect data for this collection.
Collected automatically | Spotlight collects data for this collection automatically.

### Collect for reporting

Is Spotlight scheduled to collect data from this collection for reporting? How often? Reporting schedules are used by Reporting and Trending. Reporting schedules are stored in the Spotlight Statistics Repository.

### Keep for

For how long is data from this collection stored in the Spotlight Statistics Repository.



## Reuse this configuration

Column | Description
-------|------------
Apply configuration to… | Optionally, apply this configuration to other connections.
Save to Template | Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to Delete or Rename the template. For more information on Templates, see Configuration templates.

## Close the dialog

Click | Description
------|------------
OK | Save changes to the collections for the selected connection or template.
Cancel | Discard changes to this screen.

## Notes

* Before you change a collection's schedule you may like to backup the current schedules. You can do this by backing up the \\Agent\\Conf folder in the Spotlight Diagnostic Server installation folder.
* Some collections cannot be scheduled for reporting. They may gather too much data or there may be no value in the data for the purpose of reporting. Other collections are only collected for reporting so cannot be scheduled to run in the background.
* The background and reporting schedules for some collections cannot be modified.
* Real time schedules are used to view data live on the Spotlight home page or drilldowns. Real time schedules cannot be modified.





{% include links.html %}
