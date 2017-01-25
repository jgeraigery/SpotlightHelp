---
title: Configure a schedule
summary: "Configure a Spotlight collection schedule."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_schedule.html
folder: SpotlightEnterprise
---



## From the Spotlight Client

1. Click **Configure \| Scheduling**.
2. Select a Spotlight connection. The configuration will be applied to the selected connection.
3. Double click on the collection.


## Factory Settings

ON | Return the settings for this collection to their default schedule.
OFF | Modify the background and / or reporting schedules for this collection.

{% include note.html content="You cannot modify the Factory Settings Template. If you cannot see an option to clear Factory Settings then you are browsing the Factory Settings Template. To modify the settings for this schedule, close this dialog and select either a Spotlight Connection or a different template from the Background Schedules dialog." %}

## To modify the background schedule (Playback Database)

### Collect data when Spotlight is not connected

Selected | Store data from this collection in the Playback Database according to the given schedule, regardless of whether a Spotlight Client is open.
Not Selected | Collect data from this collection and store in the Playback Database only while a Spotlight Client is open. Do not collect data from this schedule while all Spotlight Clients are closed.

### Collect data every

Click the link to set the background collection schedule.

Data can be collected at regular intervals or at a scheduled time on scheduled days of the week.

## To modify the reporting schedule (Spotlight Statistics Repository)

### Store reporting data in the Spotlight Statistics Repository

Selected | Store data from this collection in the Spotlight Statistics Repository.
Not Selected | Data for this collection will not be available for the tables and charts in Spotlight Reporting and Trending.


### Keep data for

Specify how long you want the data stored for in the Spotlight Statistics Repository.

If a connection is deleted, data for the deleted connection is stored in the Spotlight Statistics Repository for two months before being removed.


## Note:

* Not all collections run both schedules. Some collections cannot be set to record data for reporting as they either gather too much data or there is no value in the data for the purposes of reporting. Other collections run only for reporting and are therefore not run in background mode.
* Before you change the scheduling configurations you may like to backup the current schedules. You can do this by backing up the \\Agent\\Conf folder in the Spotlight Diagnostic Server installation folder.
* The schedules of some collections cannot be modified.
* Some collections are used for multiple displays (Spotlight Overview page components and drilldowns). Modifying a collection schedule may impact more than just one display.


{% include links.html %}
