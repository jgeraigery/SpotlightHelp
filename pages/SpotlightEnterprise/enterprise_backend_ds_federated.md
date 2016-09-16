---
title: Deployment of federated Spotlight Diagnostic Server
summary: "The standard Spotlight configuration has one Spotlight Diagnostic Server. All connections are monitored through the Spotlight Diagnostic Server."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ds_federated.html
folder: SpotlightEnterprise
---

More than one Spotlight Diagnostic Server may be required when:

* The number of connections to monitor exceeds the design of one Spotlight Diagnostic Server. A single Spotlight Diagnostic Server is designed to monitor a maximum of 100 SQL Servers, Analysis Services or Replication instances and 100 Windows servers.
* Your organization is suited to the deployment of geographic hubs, where each geographic region deploys its own Spotlight Diagnostic Server.

Multiple Spotlight Diagnostic Server are deployed separately or as a federation.


## Separate Spotlight deployments

A Spotlight Client monitors connections from one Spotlight Diagnostic Server at a time. The deployments do not share custom views, templates and alarm actions.

## Federation

A Spotlight Client monitors connections from all Spotlight Diagnostic Server in the federation. Spotlight Clients in the federation share the same custom views, templates, alarm actions and list of planned outages.


For more information, refer to the Spotlight on SQL Server Enterprise Federation Guide.


{% include links.html %}
