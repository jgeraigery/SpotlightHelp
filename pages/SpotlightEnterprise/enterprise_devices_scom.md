---
title: Spotlight Management Pack for SCOM
summary: "The Spotlight Management Pack for SCOM is appropriate for organizations that use SCOM (System Center Operations Manager) as their centralized monitoring system and wish to use Spotlight as their tool of choice for SQL Server monitoring."
sidebar: p_enterprise_sidebar
permalink: enterprise_devices_scom.html
folder: SpotlightEnterprise
---

Following deployment of the Spotlight Management Pack for SCOM you will be able to use a SCOM Console to:

* Manage a work flow of Spotlight alarms through SCOM alerts (for example raise SCOM tickets).
* View data from monitored Spotlight connections.
* Snooze, unsnooze and acknowledge raised Spotlight alarms.

## Download and deployment

To download the Spotlight Management Pack for SCOM and view the demonstration videos see: https://www.spotlightessentials.com/download.

 To deploy the Spotlight Management Pack for SCOM, refer to the Spotlight Management Pack for SCOM User Guide.

## Requirements

The Spotlight Management Pack for SCOM requires the following:

### SCOM


SCOM (System Center Operations Manager) 2012 and above as deployed in your organization.

### Spotlight


Spotlight on SQL Server Enterprise 11 or later.

Spotlight on SQL Server Enterprise 11.1 or later is required to snooze / unsnooze and acknowledge alarms.

In the deployment of Spotlight, consider the following:

* It is recommended that the Spotlight Diagnostic Server and SCOM Management Server be installed on different host computers.
* The Spotlight Client is required to Configure Spotlight, Configure \| Connections and Configure \| Alarms.
* The Spotlight Client is not required by SCOM. The SCOM Console and SCOM Management Server communicate directly with the Spotlight Diagnostic Server.


### User Privileges

The Windows user(s) running the SCOM Console and SCOM Management Server must be member(s) of the Spotlight diagnostic user groups for each Spotlight Diagnostic Server. This ensures that a secure connection to the Spotlight Diagnostic Server can be made through Port 40403 and that Spotlight information can be retrieved.



{% include links.html %}
