---
title: Remove (break apart) a federation
summary: "How to remove a Spotlight Diagnostic Server from the federation and the implications of removing the Spotlight Diagnostic Server."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_federation_remove.html
folder: SpotlightEnterprise
---

## Steps to remove a Spotlight Diagnostic Server from the federation

1. Open a Spotlight Client in the federation.
2. From the Spotlight Client, click **Configure \| Diagnostic Server \| Federate Diagnostic Servers**.
3. Select the Spotlight Diagnostic Server to remove.
4. Click **Remove**.
5. Confirm your request to remove the Spotlight Diagnostic Server from the federation.

{% include imageClient.html file="figure_federation_Remove-DS-from-Federation.png" alt="Remove a Spotlight Diagnostic Server from the federation" %}

## The federation now the Spotlight Diagnostic Server has been removed

### Monitored connections
Spotlight Clients connected to the federation can no longer monitor connections from the removed Spotlight Diagnostic Server.

Spotlight Clients with the removed Spotlight Diagnostic Server as their primary server are no longer connected to the federation.

### Custom views
The Custom Views in the federation no longer show monitored connections from the removed Spotlight Diagnostic Server.

### Alarm Actions
All Alarm Actions with condition "Where the Diagnostic Server is…" the removed Spotlight Diagnostic Server are removed from the federation.

### Planned Outages
Planned Outages for the federation no longer show monitored connections from the removed Spotlight Diagnostic Server.

### Configuration templates
All Configuration templates remain available to the federation.

### Spotlight license
The Spotlight license for the federation does not change. Note that if the Configuration server is removed from the federation the Spotlight license does change to the license of the federation's new Configuration server.


## The Spotlight Diagnostic Server that was removed from the federation

### Monitored connections
Spotlight Clients with the removed Spotlight Diagnostic Server as their primary server are no longer connected to the federation. They monitor connections directly from the Spotlight Diagnostic Server.

### Custom views
Any Spotlight Client connecting to the Spotlight Diagnostic Server will have access to all Custom Views from the federation. The Custom Views show only connections monitored directly from the Spotlight Diagnostic Server.

### Alarm Actions
Alarm Actions with condition "Where the Diagnostic Server is…" the removed Spotlight Diagnostic Server are available to the Spotlight Diagnostic Server when it is removed from the federation. Alarm Actions from the federation that do not have the condition "Where the Diagnostic Server is…" are also available to the Spotlight Diagnostic Server when it is removed from the federation.

### Planned Outages
Any Spotlight Client connecting to the Spotlight Diagnostic Server will have access to all Planned Outages on connections monitored by that Spotlight Diagnostic Server.

### Configuration templates
The configuration templates from the federation remain accessible to the Spotlight Diagnostic Server after it has been removed from the federation.

### Spotlight license
The Spotlight Diagnostic Server takes on the Spotlight license that was given to it when it joined the federation; that is the Spotlight license applied to the Configuration server at the time the Spotlight Diagnostic Server joined the federation.

{% include links.html %}
