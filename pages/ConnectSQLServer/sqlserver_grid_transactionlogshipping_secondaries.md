---
title: Transaction Log Shipping Secondaries grid
last_updated: July 29, 2016
summary: "Shows statistics relating to the secondary database in the log shipping configuration."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_transactionlogshipping_secondaries.html
id: HighAvailability_LogShippingSecondaries.grdLogShippingSecondaries
folder: ConnectSQLServer
---



## Primary Server

Name of the primary instance in the log shipping configuration.

## Primary Database

Name of the primary database in the log shipping configuration.

## Backup Source Directory

Directory where transaction log backup files from the primary server are stored.

## Monitor Server

Name of the instance being used as a monitor server in the log shipping configuration.

## Last Copied Date

Date and time of the last copy operation to the secondary server.

## Secondary Database

Name of the secondary database in the log shipping configuration.

## Restore Delay

Amount of time that the secondary server will wait before restoring a given backup file. The default is 0 minutes.

## Last Restored Date

Date and time of the last restore operation on the secondary database.

## Secondary Server

Name of the secondary instance in the log shipping configuration.

## Last Restored Latency

Amount of time that elapsed between the log backup being created on the primary and when it was restored on the secondary.

## History Retention Period

Amount of time that log shipping history records are retained for the secondary database before being deleted.

## Copy Job Enabled

Whether copy jobs are enabled.

## Restore Job Enabled

Whether restore jobs are enabled.

## Backup Destination Directory

Directory on the secondary server where backup files are copied to.

## Block Size

Size that is used as the block size for the backup device.

## Buffer Count

Total number of buffers used by the backup or restore operation.

## Copy Job ID

ID associated with the copy job on the secondary server.

## Disconnect Users

If set to Yes, users will be disconnected from the secondary database when a restore operation is performed. The default is No.

## File Retention Period

How long a backup file is retained on the secondary server before being deleted.

## Last Copied File

Filename of the last backup file copied to the secondary server.

## Last Restored File

Filename of the last backup file restored to the secondary database.

## Max Transfer Size

Size of the maximum input or output request issued by SQL Server to the backup device.

## Monitor Server Security Mode

Security mode used to connect to the monitor server. For example, Windows or SQL Server.

## Restore All

If set to Yes, the secondary server will restore all available transaction log backups when the restore job runs. If set to No, it stops after one file has been restored.

## Restore Job ID

ID associated with the restore job on the secondary server.

## Restore Mode

Restore mode for the secondary database. For example, NORECOVER, STANDBY.

## Restore Threshold

Number of minutes allowed to elapse between restore operations before an alert is generated.

## Secondary ID

ID for the secondary server in the log shipping configuration.

## Threshold Alert

Alert to be raised when the restore threshold is exceeded.

## Threshold Alert Enabled

Whether threshold alerts are enabled. For example, Enabled, Disabled, Unknown.

{% include links.html %}
