---
title: Wait Details Grid
last_updated: July 29, 2016
summary: "The Waits Detail grid shows detailed wait statistics for the SQL Server instance currently being monitored."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_waitsdetail.html
id: sqlactivity_waitstats.spotlightgrid1
folder: ConnectSQLServer
---


## Wait Type

The type of the wait.

## Category

The category that this wait belongs to. The following categories are used in Spotlight: AlwaysOn, Backup, CLR, DBM, DTC, IO, Latch, Lock, Memory, MISC, Network, Preemptive, ServiceBroker, SOS.

## Waiting Tasks Rate (tasks/s)

The rate at which tasks are waiting on this wait type.

## Wait Time Rate (ms/s)

The rate at which waits on this wait type are occurring.

## Signal Wait Time Rate: (ms/s)

The rate at which signal waits on this wait type are occurring.

## Resource Wait Time Rate (ms/s)

The rate at which resource waits on this wait type are occurring.

## Waiting Tasks Total

The total number of waits on this wait type.

## Wait Time Total (ms)

The total wait time for this wait type, in milliseconds.

## Wait Time Total (%)

The ratio of wait time for this wait type as a percentage of the wait time for all wait types (excluding 'Total' wait type).

## Signal Wait Time Total (ms)

The total signal wait time for this wait type, in milliseconds.

## Signal Wait Time Total (%)

The ratio of signal wait time for this wait type as a percentage of the signal wait time for all wait types (excluding 'Total' wait type).

## Resource Wait Time Total (ms)

The total resource wait time for this wait type, in milliseconds.

## Resource Wait Time Total (%)

The ratio of resource wait time for this wait type as a percentage of the resource wait time for all wait types (excluding 'Total' wait type).

## Max Wait Time (ms)

The maximum wait time for this wait, in milliseconds. This statistic is not available for SQL Server 2000.


{% include links.html %}
