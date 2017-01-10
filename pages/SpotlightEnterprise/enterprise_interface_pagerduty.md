---
title: PagerDuty
summary: "PagerDuty® is a third party product (www.pagerduty.com). Spotlight can be configured to send an incident report to a PagerDuty service when a Spotlight alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_pagerduty.html
folder: SpotlightEnterprise
---

## Use Cases

These use cases follow Spotlight and PagerDuty integration.


### A Spotlight alarm is raised satisfying the conditions for an incident to be raised in PagerDuty.


A new incident is raised in PagerDuty.

### The alarm severity level changes in Spotlight; the alarm is still not resolved.


The incident is updated in PagerDuty with the new severity level.

### The alarm's severity level changes in Spotlight such that the alarm is resolved.

The incident is resolved in PagerDuty.

### The alarm is acknowledged (Acknowledge)

 in Spotlight (Spotlight Client, Spotlight web site or Spotlight Mobile)


The incident is resolved in PagerDuty.


### The alarm is snoozed (Snooze)

in Spotlight (Spotlight Client, Spotlight web site or Spotlight Mobile)


The incident is updated in PagerDuty.




No change in Spotlight.


The incident is acknowledged or resolved in PagerDuty.


## Configuration

In PagerDuty:

1. Log in to your PagerDuty account. Configure an API access key to create an authentication for Spotlight to use to send alarm notifications to your PagerDuty account. Select Configuration \| API Access.
2. On the PagerDuty API Access Keys page, provide a Description for the API Access Key and click Create Key.
3. On the PagerDuty API Access Keys page, take note of the API Key for later use (in Spotlight).
4. Create a PagerDuty service for Spotlight to send alarm notifications to. Select Configuration \| Services.
5. From the Services page, click Add New Service.
6. Create a name for the service. Assign an escalation policy. Select Use our API directly. Click Add Service.
7. On the PagerDuty service page (for Spotlight Enterprise), take note of the Service API Key for later use (in Spotlight Enterprise).

Use a Spotlight Client to apply these configurations to the Spotlight Diagnostic Server.

1. Use the Spotlight Client to Configure PagerDuty. At the end of this step, verify Spotlight can successfully send an incident to PagerDuty.
2. Use the Spotlight Client to Configure \| Alarm Actions. Create one or more Alarm Action Rules to Send Alarm to PagerDuty.


## Deployment

This section refers to the deployment of Spotlight with PagerDuty.

### Spotlight Diagnostic Server


Use a Spotlight Client to Configure PagerDuty and Configure \| Alarm Actions for the Spotlight Diagnostic Server. Alarms are raised for the connections monitored through the Spotlight Diagnostic Server according to the alarm configurations applied to the Spotlight Diagnostic Server.

Ensure the Spotlight Diagnostic Server has access to the Internet. For more information, see Spotlight services requiring Internet access.


{% include links.html %}
