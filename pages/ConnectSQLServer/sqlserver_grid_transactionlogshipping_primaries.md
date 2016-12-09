---
title: Transaction Log Shipping Primaries grid
last_updated: July 29, 2016
summary: "Shows statistics relating to the primary database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_transactionlogshipping_primaries.html
id: HighAvailability_LogShippingPrimaries.grdLogShippingPrimaries
folder: ConnectSQLServer
---



## Primary Database

Name of the primary database in the log shipping configuration.

## Backup Directory

Directory where transaction log backup files from the primary server are stored.

## Backup Retention

How long a log backup file is retained in the backup directory before being deleted.

## Monitor Server

Name of the instance being used as a monitor server in the log shipping configuration.

## Last Backup Date

Date and time of the last log backup operation.

## Primary Server

Name of the primary instance in the log shipping configuration.

## History Retention

How long log shipping history records are retained for the primary database before being deleted.

## Backup Job Enabled

Whether backup jobs are enabled.

## Backup Compression

Whether the log shipping configuration overrides the server-level backup compression behavior. For example, Enabled, Default, Disabled. This column is available only for SQL Server 2008.

## Backup Job ID

ID of the backup job on the primary server.

## Backup Share

Network path to the backup directory on the primary server.

## Backup Threshold

Number of minutes allowed to elapse between backup operations before an alert is generated.

## Last Backup Date UTC

Date and time of the last transaction log backup operation on the primary database, in Coordinated Universal Time.

## Last Backup File

Path and filename of the most recent transaction log backup.

## Monitor Server Security Mode

Security mode used to connect to the monitor server. For example, Windows or SQL Server.

## Primary ID

ID of the primary database.

## Threshold Alert

Alert to be raised when the restore threshold is exceeded.

## Threshold Alert Enabled

Whether threshold alerts are enabled.


{% include links.html %}
