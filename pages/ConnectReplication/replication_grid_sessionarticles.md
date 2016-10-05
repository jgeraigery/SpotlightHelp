---
title: Articles Processed in the Selected Session
last_updated: July 29, 2016
summary: "Shows article statistics for the selected session on the Merge Agent."
sidebar: c_replication_sidebar
permalink: replication_grid_sessionarticles.html
id: SessionArticles.grdSessionArticles
folder: ConnectReplication
---

Columns in this grid include:

## Article

Name of each article in the publication, and the following processing phases for the entire publication:

* Initialization (This refers to starting the Merge Agent; this is not synonymous with initializing a subscription, which involves applying a snapshot.)
* Schema changes and bulk inserts.
* Upload changes to Publisher.
* Download changes to Subscriber.

## % of Total

Percentage of total processing time that each phase accounts for in the selected session.

## Duration

Amount of time spent in each processing phase. The time represents elapsed time if the Merge Agent is currently running for the session and total time if the Merge Agent has run previously.

## Inserts

Number of rows inserted in this phase of the selected session.

## Updates

Number of rows updated in this phase of the selected session.

## Deletes

Number of rows deleted in this phase of the selected session.

## Conflicts

Number of conflicts in the selected session.

## Retries

Number of retries in the selected session.

## Schema Changes

Number of schema changes in the selected session. Schema changes can result from: schema changes being replicated from the publication database; adding or dropping articles; and changes to article or publication properties.

{% include links.html %}
