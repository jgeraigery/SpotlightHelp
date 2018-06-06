---
title: Data handling and Security
summary: ""
sidebar: p_cloud_sidebar
permalink: cloud_legal_datahandlingsecurity.html
folder: SpotlightCloud
---


## What data are we uploading?
Any user of various Quest Software products can opt-in to send system configuration and performance metrics from SQL Server to SpotlightCloud.io. Data is collected and then sent periodically. Once it is uploaded we store it for analysis and consumption by the end user. From the data and subsequent analysis SpotlightCloud.io is able to generate a picture of your system's health and performance. The actual source of the data is documented below in Appendix A.

## How is customer data transferred from on-premise to Cloud Connect?
When data is uploaded to cloud Connect it is sent via https to a cloud-based service running in Microsoft Azure. The low-level security protocols utilized during the data-transfer will depend on the client and the server.

## Where is customer data stored?
As of April 2018, all data is uploaded to Azure datacenters in North America. The datacenters utilized include: *North Central*, *South Central* and *East US2*.

The best place to go is the [Windows Azure](https://azure.microsoft.com/en-us/overview/trusted-cloud/) site itself.

## How long is customer data kept?
Data uploaded to Cloud Connect is kept indefinitely. However, we make no promises about how long we'll keep customers' data. Quest may purge 'old data' in order to keep our financial costs under control.

## How does Quest obfuscate Personally Identifiable Information (PII)?
"We don't" is the short answer. Data collected via on-premise software is uploaded to Cloud Connect and stored "verbatim". So there is no effort spent on obfuscating any PII that was uploaded. For example, if we collect SQL statement text, we don't attempt to strip out any 'variables' from that text (e.g. in the case where the variable's value is a credit card number).

## How are users authenticated on the Spotlight Clients (Web, Mobile, Spot-X, DS-Configuration Tool)?

* Standards based authentication protocol OIDC.
* Claim based secured and signed authentication token

## Where can I find security and compliance information on the Windows Azure Platform?
The best place to go is the [Windows Azure](https://azure.microsoft.com/en-us/overview/trusted-cloud/) site itself.

## Appendix A
The following data is collected from monitored connections by the Spotlight Diagnostic Server. It is uploaded as a JSON.

1.	master.sys.sql_logins
     1.	name,
     2.	principal_id,
     3.	type,
     4.	is_disabled,
     5.	create_date
     6.	modify_date,
     7.	default_database_name,
     8.	default_language_name,
     9.	credential_id,
     10.	owning_principal_id,
     11.	is_policy_checked,
     12.	is_expiration_checked,
2.	sys.databases
3.	sys.dm_exec_sessions
4.	sys.dm_exec_connections
5.	sys.dm_exec_requests
6.	sys.dm_exec_cached_plans
7.	sys.dm_os_sys_info
8.	sys.dm_os_host_info
9.	sys.dm_os_wndows_info
10.	sys.configurations
11.	sys.master_files
12.	sys.dm_db_missing_index_groups
13.	sys.dm_db_missing_index_group_stats
14.	sys.dm_db_missing_index_details
15.	sys.dm_os_process_memory
16.	sys.dm_os_sys_memory
17.	sys.dm_exec_query_stats
18.	sys.dm_exec_sql_text
19.	sys.dm_exec_query_plan
20.	sys.dm_io_virtual_file_stats
21.	sys.dm_os_wait_stats
22.	msdb.dbo.sysjobs
23.	msdb.dbo.sysjobshistory
24.	msdb.dbo.sysjobsactivity
25.	msdb.dbo.sysalerts
26.	msdb.dbo.backupmediafamily
27.	msdb.dbo.backupset
28.	msdb.dbo.log_shipping_monitor_history_detail
29.	msdb.dbo.log_shipping_primary_databases
30.	msdb.dbo.log_shipping_secondary
31.	msdb.dbo.log_shipping_monitor_error
32.	msdb.dbo.log_shipping_primary_secondaries
33.	sys.database_mirroring
34.	sys.dm_server_services
35.	tempdb.sys.dm_db_session_space_usage
36.	tempdb.sys.dm_db_task_space_usage
37.	sys.dm_tran_active_snapshot_database_transactions
38.	sys.dm_db_index_physical_stats
39.	sys.dm_os_performance_counters
40.	sys.dm_exec_procedure_stats
41.	sys.fulltext_catalogs
42.	sys.dm_hadr_availability_group_states
43.	sys.availability_group_listeners
44.	sys.availability_replicas
45.	sys.dm_hadr_cluster
46.	sys.dm_hadr_cluster_members
47.	sys.dm_hadr_database_replica_states
48.	sys.dm_hadr_database_replica_cluster_states
49.	sys.sysusers
      1. hasdbaccess for user “guest” only
50.	sys.xp_msver
51.	\<database\>.sys.allocation_units
52.	\<database\>.sys.database_files
53.	\<database\>.sys.data_spaces
54.	\<database\>.sys.dm_db_index_usage_stats
55.	\<database\>.sys.dm_db_partition_stats
56.	\<database\>.sys.partitions
57.	\<database\>.sys.filegroups
58.	\<database\>.sys.internal_tables
59.	\<database\>.sys.objects
60.	\<database\>.sys.dm_db_xtp_table_memory_stats
61.	\<database\>.sys.index_columns
62.	\<database\>.sys.indexes
63.	\<database\>.sys.columns
64.	\<database\>.sys.schemas
65.	\<database\>.sys.database_principals

{% include links.html %}
