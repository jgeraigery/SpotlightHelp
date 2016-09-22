---
title: Planned Outage Details
summary: "Let Spotlight know the scheduled maintenance times for monitored connections. Spotlight will treat the monitored connections as unavailable at the scheduled times, so will not raise alarms or collect data during the outage period."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_plannedoutage_details.html
folder: SpotlightEnterprise
---


## To schedule maintenance times

To add a planned outage schedule click Configure \| Planned Outage \| Add.
To edit a planned outage schedule click Configure \| Planned Outage \| Edit.


## Connection

Select the connection(s) that will be in outage at the same time (following the same schedule).

## Description

Enter a description for this planned outage. You may want to state the reason for the outage.

## Frequency

### Once

This planned outage is scheduled to occur once only.

### Daily

This planned outage is scheduled to occur every day.

### Weekly

This planned outage is scheduled to occur on the selected days of the week.

### Monthly

This planned outage is scheduled to occur on the selected day of the selected months.

To schedule a planned outage for the last day of the month over multiple months select 31 as the day of the month. This will schedule the outage to the last day of the month regardless of whether the month has 31 days.

If the selected day of the month is 29, 30 or 31 then for months that have fewer than those number of days the planned outage will be scheduled for the last day of the month.


## Time and Duration

Enter the scheduled time and duration of this planned outage.
Enter the time as per the time zone of the Spotlight Diagnostic Server.

 {% include links.html %}
