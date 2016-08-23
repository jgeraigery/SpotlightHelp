---
title: Database Mirroring Grid
last_updated: July 29, 2016
summary: "Shows statistics relating to either the principal or mirror server depending on which server Spotlight is connected to."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_databasemirroring.html
id: HighAvailability_DBMirroring.grdDBMirroring
folder: ConnectSQLServer
---



## Database Name

Name of the mirrored database.

## Role

Current mirroring role of the server instance. For example, Principal, Mirror.

## Mirroring State

State of the database. For example, Suspended, Disconnected, Synchronizing, Pending Failover, Synchronized.

## Partner

The name of the partnering server. If the Database Name column names the Principal then the Partner column names the Mirror. If the Database Name column names the Mirror then the Partner column names the Principal.

## Unsent Log (MB)

Size of the unsent log in the send queue on the principal.

## Unrestored Log (MB)

Size of the redo queue on the mirror.

## Send Rate (KB/s)

Send rate of log from the principal to the mirror in kilobytes per second.

## Recovery Rate (KB/s)

Redo rate on the mirror in kilobytes/sec.

## Time Behind

Approximate system-clock time of the principal to which the mirror database is currently caught up. This value is meaningful only on the principal server instance.

## Average Delay

Average delay on the principal server instance for each transaction because of database mirroring. In high-performance mode (that is, when the SAFETY property is set to OFF), this value is generally 0.

## Local Time

System clock time on the local server instance when this row was updated.

## Log Generation Rate (KB/s)

Amount of log generated since preceding update of the mirroring status of this database in kilobytes/sec.

## Time Recorded

Time at which the row was recorded by the database mirroring monitor. This is the system clock time of the principal.

## Transaction Delay (ms)

Total delay for all transactions in milliseconds.

## Transaction/sec

Number of transactions that are occurring per second on the principal server instance.

## Witness

The name of the witness.

## Witness Status

Connection status of the witness, if applicable, in the database mirroring session of the database. For example, Unknown, Connected, Disconnected.


{% include links.html %}
