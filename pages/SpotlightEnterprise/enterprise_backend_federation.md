---
title: Federation
summary: "In a deployment where there are multiple Spotlight Diagnostic Server you may choose to federate the deployment."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_federation.html
folder: SpotlightEnterprise
---


## Does the deployment need more than one Spotlight Diagnostic Server?

The standard Spotlight configuration has one Spotlight Diagnostic Server. More than one Spotlight Diagnostic Server may be required when:

* The number of connections to monitor exceeds the design of one Spotlight Diagnostic Server. A single Spotlight Diagnostic Server is designed to monitor a maximum of 100 SQL Servers, Analysis Services or Replication instances and 100 Windows servers.
* Your organization is suited to the deployment of geographic hubs, where each geographic region deploys its own Spotlight Diagnostic Server.

## Multiple Spotlight Diagnostic Server where there is no federation

Multiple Spotlight Diagnostic Server may be deployed separately. A Spotlight Client monitors connections from one Spotlight Diagnostic Server at a time. The deployments do not share custom views, templates and alarm actions.

{% include imageClient.html file="figure_federation_deployment-Project-0A-and-0B.png" %}

## Federated Spotlight Diagnostic Server

When the deployment is federated a Spotlight Client monitors connections from all Spotlight Diagnostic Server in the federation. Spotlight Clients in the federation share the same custom views, templates, alarm actions and list of planned outages.

{% include imageClient.html file="figure_federation_Federation-of-DS.png" %}


{% include links.html %}
