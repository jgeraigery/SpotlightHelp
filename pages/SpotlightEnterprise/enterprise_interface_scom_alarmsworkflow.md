---
title: Workflow for Spotlight alarms
summary: "A new SCOM Spotlight Alert is raised each time a Spotlight alarm is raised or the severity of a Spotlight alarm changes. All Spotlight alarms can be managed through the SCOM alerts work flow."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_scom_alarmsworkflow.html
folder: SpotlightEnterprise
---


## Monitor Spotlight alarms

Open the SCOM Console. From the Monitoring pane select **Active Alerts**. Each SCOM alert is listed on the Active Alerts table.

### Active Alerts table

#### Source
The connection the Spotlight alarm was raised against.

#### Name
The name of the Spotlight alarm.

#### Resolution State
The resolution state of the Spotlight Alert. Note that when the Spotlight alarm is resolved the SCOM Alert is NOT automatically resolved.

#### Created
The date and time the Spotlight Alert was raised.

{% include note.html content="The visible fields on the Active Alerts table can be personalized with Custom Fields from the Spotlight Alert. For definitions of the Spotlight Alert Custom Fields, right click on a Spotlight Alert in the Active Alerts table and select **Properties \| Custom Fields**." %}


### Show Alert Details

Select a Spotlight Alert on the Active Alerts table to view the Alert Details and Description

#### Diagnostic Server
The name of the Spotlight Diagnostic Server. The Spotlight alarm is raised against a connection that is monitored through this Spotlight Diagnostic Server.

#### Connection
The display name of the Spotlight Connection. The Spotlight alarm is raised against this connection.

#### Technology
The Spotlight Connection Type; for example SQL Server or Windows.

#### Display Name
The display name of the Spotlight alarm.

#### Severity
The severity of the Spotlight alarm.

#### Details
The details of the Spotlight alarm.

#### First Raised
The earliest known time the same Spotlight alarm was raised against the connection (as sourced from the Playback Database).

#### Last Raised
The most recent time the same Spotlight alarm was raised against the connection. For an alarm that has been raised repeatedly this could be a more recent time than the time of this alarm.

#### Is Snoozed
True if the Spotlight alarm has been snoozed. The Spotlight Alarm can be snoozed in Spotlight or the SCOM Console.

#### Snoozed By
If the Spotlight alarm Is Snoozed - Snoozed By records the user that snoozed the alarm.

#### Snoozed Until
If the Spotlight alarm Is Snoozed - Snoozed Until records the time the alarm is snoozed till.

#### Requires Acknowledgment
True if the Spotlight alarm is configured to require acknowledgment.


### Further detail and / or make changes

Right click a Spotlight Alert on the Active Alerts table for further detail and / or to make changes

#### View or edit settings for this rule \| Overrides
Override parameters of this Spotlight Alert such as priority and severity. Note that the Spotlight Management Pack for SCOM is sealed so an alternative destination management pack is required.

#### Properties \| General

Change the properties of the Spotlight Alert.

Owner | Assign an owner to the Spotlight Alert.
Ticket ID | Assign a Ticket ID to the Spotlight Alert.
Alert Status | Change the Alert status as appropriate.

#### Properties \| Product Knowledge
Show help on Spotlight Alerts.

#### Alert Context
Show all details of the Spotlight alarm.

#### Custom Fields
Show details of the Spotlight alarm that can be displayed as Custom Fields on the Active Alerts table.


## Spotlight Alerts rule

You may want to override the defaults to the Spotlight Alerts rule. By default: Spotlight Alerts are enabled, have a warning severity, medium priority and the rule is run every 60 seconds. The rule properties for Spotlight Alerts can be overridden for an individual connection, group of connections or globally.

Open the SCOM Console.

1. From the Authoring pane select **Management Pack Objects \| Rules**. Look for Spotlight Alerts.
2. Right click on the Spotlight Alerts rule and select **Properties**.
3. Open the **Overrides** tab.
4. Click **Disable** to disable the Spotlight Alerts rule. Click **Override** to override one or more parameters of this rule. Click on an override to override properties of the rule. Note that the Spotlight Management Pack for SCOM is sealed so an alternative destination management pack is required.


## Send notifications to subscribers when criteria is matched relating to the Spotlight Alerts rule

Setup SCOM to send notifications when Spotlight Alerts match a defined Subscription criteria.

Open the SCOM Console. Expand **Tasks \| Subscription**, click **Create** to open the Notification Subscription Wizard.

### The Notification Subscription Wizard

#### Description
Give a name to the Notification Subscription. Optionally, provide a description.

#### Criteria
Select criteria as appropriate. A notification will be sent on all selected criteria being matched.

In addition to your own criteria, ensure the following criteria are selected.

Criteria | Description
---------|------------
raised by any instance in a specific group | The **Group Search dialog** opens when you select this criteria. From the Management Pack dropdown, select **Spotlight Management Pack**.
raised by instances with a specific name | The **Object Search dialog** opens when you select this criteria. From the Look for dropdown, select **Spotlight Management Pack**.

#### Subscribers
Add subscribers as appropriate. On all selected criteria being matched, SCOM will send a notification to the selected subscribers.



{% include links.html %}
