---
title: Requirements
summary: "The Spotlight Management Pack for SCOM requires the following."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_scom_requirements.html
folder: SpotlightEnterprise
---


## SCOM
SCOM (System Center Operations Manager) 2012 and above as deployed in your organization.

## Spotlight
Spotlight on SQL Server on SQL Server Enterprise 11 or later.

Spotlight on SQL Server Enterprise 11.1 or later is required to snooze / unsnooze and acknowledge alarms.

In the deployment of Spotlight, consider the following:

* It is recommended that the Spotlight Diagnostic Server and SCOM Management Server be installed on different host computers.
* The Spotlight Client is required to configure Spotlight, manage Spotlight connections and configure alarms.
* The Spotlight Client is not required by SCOM. The SCOM Console and SCOM Management Server communicate directly with the Spotlight Diagnostic Server.

## User Privileges
The Windows user(s) running the SCOM Console and SCOM Management Server must be member(s) of the Spotlight Diagnostic Administrators Group for each Spotlight Diagnostic Server. This ensures that a secure connection to the Spotlight Diagnostic Server can be made through Port 40403 and that Spotlight information can be retrieved.

{% include links.html %}
