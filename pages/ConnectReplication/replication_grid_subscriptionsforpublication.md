---
title: Subscriptions for Publication grid
last_updated: July 29, 2016
summary: "Shows information about the subscriptions for the selected publication."
sidebar: c_replication_sidebar
permalink: replication_grid_subscriptionsforpublication.html
id: Subscriptions.grdSubscriptions
folder: ConnectReplication
---

Columns in this grid include:

## Status

Maximum status of the agents associated with the publication. For example, Started, Succeeded, In progress, Idle, Retrying, Failed.

## Subscription

Subscription name.

## Subscription Type

Type of subscription. For example, Push, Pull, Anonymous.

## Publisher

Name of the publisher instance.

## Publication

Publication name.

## Publication Type

Type of publication. For example, Snapshot, Transactional, Merge.

## Latency

Highest latency, in seconds, for data changes propagated by the Log Reader or Distribution Agents for a transactional publication.

## Distribution /Merge Agent

Name of the Distribution or Merge Agent for the subscription. Click the link to see detailed information about the agent.

## Log Reader Agent

Name of the Log Reader Agent for the subscription. Click the link to see detailed information about the agent.

## Snapshot Agent

Name of the Snapshot Agent for the subscription. Click the link to see detailed information about the agent.

## Estimated Time Behind

The estimated time delay in delivering commands to the subscriber.
The Estimated Time To Apply alarm is raised if the time exceeds a threshold.

## Pending Commands

Commands that are waiting execution on the subscriber.

{% include links.html %}
