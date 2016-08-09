---
title: Configure Pager Duty
summary: "Enter PagerDuty account details for the Spotlight Diagnostic Server (to fulfill on Configure | Alarm Actions | Alarm Action | Send PagerDuty incident)."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_pagerduty.html
folder: SpotlightEnterprise
---



## Requirements

The Spotlight Diagnostic Server requires access to the Internet.

 Prior to following these instructions ensure you have your PagerDuty API Access Key and Service API key. The instructions in the Spotlight on SQL Server Integration Guide on the PagerDuty web site provide you with the necessary steps: www.pagerduty.com/docs. See also PagerDuty.

PagerDuty is a third party product (www.pagerduty.com).


## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure PagerDuty**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured for pager duty.

## Specify your PagerDuty account details.

### API Access Key

The API Access Key authenticates the Spotlight Diagnostic Server to your PagerDuty account.

### Service API Key

The Service API Key links the Spotlight Diagnostic Server to the PagerDuty service.


### tips

TIP: Click **Trigger Test** Incident to verify the Spotlight Diagnostic Server can successfully send an incident report to PagerDuty.

PagerDuty receives incident reports from the Spotlight Diagnostic Server according to the Alarm Action Rules set in the Alarm Action Editor. No incident reports are sent until you create and enable appropriate rules. See Configure \| Alarm Actions.




{% include links.html %}
