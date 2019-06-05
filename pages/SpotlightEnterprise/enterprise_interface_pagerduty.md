---
title: PagerDuty
summary: "PagerDuty® is a third party product (www.pagerduty.com). Spotlight can be configured to send an incident report to a PagerDuty service when a Spotlight alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_pagerduty.html
folder: SpotlightEnterprise
---

## Use Cases

These use cases follow Spotlight and PagerDuty integration.

Spotlight | PagerDuty
----------|----------
A Spotlight alarm is raised satisfying the conditions for an incident to be raised in PagerDuty. | A new incident is raised in PagerDuty.
The alarm severity level changes in Spotlight; the alarm is still not resolved. | The incident is updated in PagerDuty with the new severity level.
The alarm's severity level changes in Spotlight such that the alarm is resolved. | The incident is resolved in PagerDuty.
The alarm is acknowledged (Acknowledge) in Spotlight (Spotlight Client, Spotlight Cloud web site or Spotlight Cloud Mobile) | The incident is resolved in PagerDuty.
The alarm is snoozed (Snooze) in Spotlight (Spotlight Client, Spotlight Cloud web site or Spotlight Cloud Mobile) | The incident is updated in PagerDuty.
No change in Spotlight. | The incident is acknowledged or resolved in PagerDuty.


## Configuration

### In PagerDuty:

1. Log in to your PagerDuty account. Create a PagerDuty service for Spotlight to send alarm notifications to. Select **Configuration \| Services**.
2. From the Services page, click **Add New Service**.
3. Create a name for the service. In General Settings, enter a Name for your new service. Then, in Incident Settings, specify the Escalation Policy, Notification Urgency, and Incident Behavior for your new service.
4. Select your app from the Integration Type menu choose **Use our API** directly and Select **Events API v1** then enter an Integration Name.
5. Click **Add Service**.
6. On the PagerDuty service page (for Spotlight Enterprise), take note of the Integration Key for later use (in Spotlight Enterprise).

### Use a Spotlight Client to apply these configurations to the Spotlight Diagnostic Server.

1. Use the Spotlight Client to **Configure PagerDuty**. At the end of this step, verify Spotlight can successfully send an incident to PagerDuty.
2. Use the Spotlight Client to **Configure \| Alarm Actions**. Create one or more Alarm Action Rules to Send Alarm to PagerDuty.


## Deployment

This section refers to the deployment of Spotlight with PagerDuty.

### Spotlight Diagnostic Server


Use a Spotlight Client to **Configure PagerDuty** and **Configure \| Alarm Actions** for the Spotlight Diagnostic Server. Alarms are raised for the connections monitored through the Spotlight Diagnostic Server according to the alarm configurations applied to the Spotlight Diagnostic Server.

Ensure the Spotlight Diagnostic Server has access to the Internet. For more information, see [Spotlight services requiring Internet access][enterprise_backend_ds_internetaccess].


{% include links.html %}
