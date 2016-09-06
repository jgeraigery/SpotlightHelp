---
title: DTC Details Chart
last_updated: July 29, 2016
summary: "Shows data related to DTC (Distributed Transaction Coordinator) performance."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_dtcdetails.html
id: supportservices2_dtc.chtsupportservices2_dtc
folder: ConnectSQLServer
---


<note type="note">The DTC Details page provides additional data on SQL Server transactions. If the server that Spotlight Enterprise is currently connected to has more than one instance running then details reported in this page are for all instances of SQL Server on the current machine, not only the instance currently under analysis.</note>

The DTC Details chart displays data of the following aspects of DTC performance:

## Aborted Transactions

The number of distributed transactions that were rolled back.

## Active Transactions

The number of distributed transactions that are currently active.

## Committed Transactions/sec

The number of distributed transactions that are committed per second.

## In Doubt Transactions

Transactions that have passed phase 1 of the two phase commit (have committed the local transaction), and are awaiting a response from the DTC to either commit or rollback (phase 2).

## Response time Average

The average time difference between the Begin transaction and the corresponding Commit transaction.

## Transactions/sec

The number of distributed transactions performed per second.


{% include links.html %}
