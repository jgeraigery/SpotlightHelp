---
title: Database Objects and Privileges
summary: "This document covers information about database object creation, privilege/grant creation and requirements, and encryption security for Spotlight Enterprise. The Security and Encryption section identifies changes to Spotlight Enterprise that could affect your security auditing process for both client and server."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_dbobjectsprivileges.html
folder: SpotlightEnterprise
---

## User Privileges and Roles

Not applicable.

## Database Objects Created

Not applicable.

## Spotlight Statistics Repository User Privileges and Roles

The user must have the appropriate privileges required to update the tables of the Spotlight Statistics Repository.

## Spotlight Statistics Repository Objects Created

The following repository objects are created by Spotlight Enterprise in the Spotlight Statistics Repository:spotlight_daily_ssr_maintenance

spotlight_get_datasources

spotlight_get_domains

spotlight_get_monitored_objects

spotlight_get_table_columns

spotlight_get_table_data_instance

spotlight_get_table_keys

spotlight_get_table_range

spotlight_get_table_span

spotlight_get_tables

spotlight_get_technologies

spotlight_rep_alarms

spotlight_rep_alarms2

spotlight_rep_cache_hit_ratios

spotlight_rep_cpu_utilization

spotlight_rep_disk_growth

spotlight_rep_disk_statistics

spotlight_rep_growth_data_files

spotlight_rep_growth_data_files2

spotlight_rep_sql_batches_rate

spotlight_rep_top_sql

spotlight_rep_top_sql_summary

spotlight_rt_get_aggregated_workload_analysis

spotlight_rt_get_allsqlagentjobs

spotlight_rt_get_batch_data

spotlight_rt_get_batch_data2

spotlight_rt_get_custom_counter

spotlight_rt_get_failedsqlagentjobs

spotlight_rt_get_fileio_stats

spotlight_rt_get_mostcommonblock

spotlight_rt_get_point_data

spotlight_rt_get_point_data_top

spotlight_rt_get_sqlblockedmost

spotlight_rt_get_sqlblockingmost

spotlight_rt_get_waitstats

spotlight_sqlanalysis_results

spotlight_ssr_upgrade_info

spotlight_ssr_version






OBJECT NAME

OBJECT TYPE




spotlight_daily_ssr_maintenance

Procedure



spotlight_get_datasources

Procedure



spotlight_get_domains

Procedure



spotlight_get_monitored_objects

Procedure



spotlight_get_table_columns

Procedure



spotlight_get_table_data_instance

Procedure



spotlight_get_table_keys

Procedure



spotlight_get_table_range

Procedure



spotlight_get_table_span

Procedure



spotlight_get_tables

Procedure



spotlight_get_technologies

Procedure



spotlight_rep_alarms

Procedure



spotlight_rep_cache_hit_ratios

Procedure



spotlight_rep_cpu_utilization

Procedure



spotlight_rep_disk_growth

Procedure



spotlight_rep_disk_statistics

Procedure



spotlight_rep_growth_data_files

Procedure



spotlight_rep_sql_batches_rate

Procedure



spotlight_rep_top_sql

Procedure



spotlight_rep_top_sql_summary

Procedure



spotlight_rt_get_aggregated_workload_analysis

Procedure



spotlight_rt_get_allsqlagentjobs

Procedure



spotlight_rt_get_batch_data

Procedure



spotlight_rt_get_custom_counter

Procedure



spotlight_rt_get_failedsqlagentjobs

Procedure



spotlight_rt_get_fileio_stats

Procedure



spotlight_rt_get_mostcommonblock

Procedure



spotlight_rt_get_point_data

Procedure



spotlight_rt_get_point_data_top

Procedure



spotlight_rt_get_sqlblockedmost

Procedure



spotlight_rt_get_sqlblockingmost

Procedure



spotlight_rt_get_waitstats

Procedure



spotlight_sqlanalysis_results

Procedure



spotlight_ssr_upgrade_info

Procedure



spotlight_ssr_version

Procedure



spotlight_datasources

Table



spotlight_domains

Table



spotlight_monitored_objects

Table



spotlight_perfdata

Table



spotlight_stat_classes

Table



spotlight_stat_keys

Table



spotlight_stat_names

Table



spotlight_technologies

Table



spotlight_timestamps

Table


## Playback Database User Privileges and Roles

The user must have the appropriate privileges required to update the table of the playback database.

## Playback Database Objects Created

The following repository objects are created by Spotlight Enterprise in the playback database:






OBJECT NAME

OBJECT TYPE




spotlight_daily_pb_maintenance

Procedure



spotlight_playback_version

Procedure



spotlight_playback_alarms

Table



spotlight_playback_data

Table



spotlight_playback_states

Table


## Privileges / Grants Created

Not applicable.

## Privilege / Grant Requirements

Each SQL Server connection from the Diagnostic Server must have access to a SQL Server account that is a member of the sysadmin server role. This can be a SQL Server login (such as 'sa'), or the Diagnostic Server can be installed to run under a Windows account that is trusted by SQL Server.

The Spotlight user requires the following:
* PUBLIC access to all databases on the monitored instance.
* DATAREADER database role on the msdb database.
* To be granted VIEW SERVER STATE privilege.
* Execute permission on the following extended stored procedures: xp_enumerrorlogs , xp_readerrorlog, and xp_servicecontrol.
* To be granted VIEW DEFINITION privilege on all databases on the monitored instance.

## Spotlight Enterprise Security and Encryption

The following statement provides security and encryption information for Spotlight Enterprise.

Encryption is used by the product to encrypt the credentials that are used to connect to monitored connections and to store licensing configuration.


{% include links.html %}
