---
title: Transaction Log Shipping History Grid
last_updated: July 29, 2016
summary: "If the Primaries page is selected, this grid shows the history for backup jobs on the primary database. If the Secondaries page is selected, this grid shows the history for copy and restore jobs on the secondary database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_transaction_logshippinghistory.html
id: HighAvailability_LogShippingDetailsHistory.grdLogShippingDetailsHistory
folder: ConnectSQLServer
---



## Session ID

Session ID for the backup, copy, or restore job.

## Database Name

Name of the database associated with this record. Primary database for backup, secondary database for restore, or empty for copy.

## Session Status

Status of the session. For example, Starting, Running, Success, Error, Warning.

## Log Time

Date and time the record was created.

## Message

Message text.

## Agent ID

Primary ID for backup jobs or the secondary ID for copy or restore jobs.

## Agent Type

Type of log shipping job. For example, Backup, Copy, Restore.

## Log Time UTC

Date and time the record was created, in Coordinated Universal Time.

{% include links.html %}
