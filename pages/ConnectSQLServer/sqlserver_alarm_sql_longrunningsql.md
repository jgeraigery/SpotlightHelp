---
title: SQL - Long Running SQL alarm
tags: [sqlserver_alarms]
last_updated: October 16, 2017
summary: "The SQL - Long Running SQL alarm is raised when SQL has been running longer than a configured time. Because the (configured time) is unique to each environment, the SQL - Long Running SQL alarm, by default, is not configured."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_sql_longrunningsql.html
id: longrunningsql.alarm
folder: ConnectSQLServer
---




## Scenario

You work in an OLTP environment and often get complaints about delays in server processing. You want to be notified when SQL on a particular server is running longer than expected so you can investigate what is causing the delay. You configure Spotlight Enterprise to raise a medium severity alarm when it detects SQL running for longer than five minutes. When the SQL - Long Running SQL alarm is raised, you use the Sessions page to view the long running SQL.


## When the alarm is raised

Open the **SQL Server \| SQL Activity Drilldown \| Sessions page**. View the long running SQL.


## Did you upgrade from Spotlight Enterprise 12.1 to Spotlight Enterprise 12.2?
If you used Spotlight Enterprise 12.1 to configure a new seveity to the SQL - Long Running SQL alarm, then on upgrade to Spotlight Enterprise 12.2 the reporting of the duriation of time of the raised alarm in the description will be incorrect. To correct this issue, pleae replace the function *toDurationFromMS* with *toDurationFromSec* in the Alarm Setting description. This issue is specific to upgrades from Spotlight Enterprise 12.1 to 12.2 and configurations saved using Spotlight Enterprise 12.1. Other versions of Spotlight Enterprise, fresh installs and upgrades from Spotlight Enterprise 12.0 and earlier are not affected.

## Configuration

In Spotlight Enterprise, from a Spotlight Client:

1. Click **Configure \| Alarms**.
2. To apply the alarm configuration to a connection, select the connection from the drop down list.
3. Locate the alarm SQL - Long Running SQL. Double click on the alarm to configure the settings.
4. Clear the Factory Settings control for the SQL - Long Running SQL alarm and so you can modify the settings for this alarm.
5. Click **Add Severity** and select a severity.

   Scenario: Click **Add Severity** and select **Medium**.
   1. Select the check box of the new severity.
   2. Copy and paste the text in the Description cell from the Normal severity to the new severity.
   3. In the Start cell, type the duration in seconds, of how long the SQL should run for before the alarm is raised.

   Scenario: In the **Start** cell, type 300 .

   {% include tip.html content="You can also configure alarm severities using keys. In the SQL - Long Running SQL alarm, the key is the SPID." %}

6. Click **OK** to close the dialog for the SQL - Long Running SQL alarm.
7. From the dialog to Configure Alarms, you can continue to configure more alarms for the selected connection (or template). When you have finished you may choose to apply the configuration(s) to other connections or save the configuration(s) to a template.
8. Click **OK** to save the alarm configuration(s) for the selected connection (or template).

{% include links.html %}
