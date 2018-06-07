---
title: Configure the use of Extended Events
summary: "Either request the Spotlight Diagnostic Server not use (use) Extended Events to collect data from monitored SQL Server instances (SQL Server 2008 and above) or customize the Spotlight Diagnostic Server use of Extended Events via advanced options."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_extendedevents.html
id: 708
folder: SpotlightEnterprise
---


The Spotlight Diagnostic Server (by default) uses Extended Events to collect data from monitored SQL Server instances (SQL Server 2008 and above). The data is used by:

* SQL Server \| Workload Analysis Drilldown
* SQL Server \| Wait Events Drilldown
* Deadlock checks: SQL Server \| SQL Activity Drilldown, Locks - Deadlocks Alarm.

Use this screen to either request that the Spotlight Diagnostic Server not use Extended Events to collect data from monitored SQL Server instances or to customize the Spotlight Diagnostic Server use of Extended Events via advanced options.

{% include note.html content="This setting affects all SQL Server monitored through the Spotlight Diagnostic Server. To configure the use of Extended Events per monitored SQL Server, see [SQL Server \| Connection Details][sqlserver_connect_details]." %}

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
   {% include imageClient.html file="tb_config_dserver.png" alt="Configure Diagnostic Server" %}
2. Select **Configure the use of Extended Events**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured in its use of Extended Events.

## Configure the use of Extended Events.

### Deselect the use of Extended Events

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will stop collecting data for the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown. This will not show up immediately on the user interface as the drilldowns will continue to show historical data till no data is available.

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will use SQL Server Trace to collect data for deadlock checks.

### Select to use Extended Events

This is the default setting. If you select to use Extended Events (following a period of time when the use of Extended Events was deselected) the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown may take a few minutes to repopulate with data.

### Advanced Options
Advanced Options controlling the Event Session properties are available only when the use of Extended Events is selected. For more information than is documented here refer to the Microsoft Web Site: [https://docs.microsoft.com/en-us/sql/t-sql/statements/create-event-session-transact-sql](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-event-session-transact-sql).

{% include note.html content="If you are unfamiliar with Event Session Properties then do not modify the default settings. Click **Reset to Defaults**" %}

#### Max Memory
EventSessionMaxMemory (number represents KB)
From https://docs.microsoft.com/en-us/sql/t-sql/statements/create-event-session-transact-sql
MAX MEMORY =size [ KB ]
Specifies the maximum amount of memory to allocate to the session for event buffering. The default is 8 MB. size is a whole number and can be a kilobyte (KB) or a megabyte (MB) value.

#### Event Retention Mode
EventSessionEventRetentionMode (enum. One of: [ ALLOW_SINGLE_EVENT_LOSS, ALLOW_MULTIPLE_EVENT_LOSS ])
EVENT RETENTION MODE =

{ ALLOW_SINGLE_EVENT_LOSS | ALLOW_MULTIPLE_EVENT_LOSS }
Specifies the event retention mode to use for handling event loss.
ALLOW_SINGLE_EVENT_LOSS
An event can be lost from the session. A single event is only dropped when all the event buffers are full. Losing a single event when event buffers are full allows for acceptable SQL Server performance characteristics, while minimizing the loss of data in the processed event stream.
ALLOW_MULTIPLE_EVENT_LOSS
Full event buffers containing multiple events can be lost from the session. The number of events lost is dependant upon the memory size allocated to the session, the partitioning of the memory, and the size of the events in the buffer. This option minimizes performance impact on the server when event buffers are quickly filled, but large numbers of events can be lost from the session.

#### Max Dispatch Latency
EventSessionMaxDispatchLatency (number represents seconds)
MAX DISPATCH LATENCY =

{ seconds SECONDS | INFINITE }
Specifies the amount of time that events will be buffered in memory before being dispatched to event session targets. By default, this value is set to 15 seconds.
seconds SECONDS
The time, in seconds, to wait before starting to flush buffers to targets. seconds is a whole number. The minimum latency value is 1 second. However, 0 can be used to specify INFINITE latency.

#### Memory Partition Mode
EventSessionMemoryPartitionMode (enum. One of: [ NONE, PER_NODE, PER_CPU ])
MEMORY PARTITION MODE =

{ NONE | PER_NODE | PER_CPU }
Specifies the location where event buffers are created.
NONE
A single set of buffers are created within the SQL Server instance.
PER_NODE
A set of buffers are created for each NUMA node.
PER_CPU
A set of buffers are created for each CPU.

#### Min Duration
ExtendedEventMinDuration (long, the starting minDuration to use for WE and WA to collect. Default value is 0)

{% include links.html %}
