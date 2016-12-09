---
title: SQL Agent Jobs grid
last_updated: July 29, 2016
summary: "The SQL Agent Jobs grid lists all SQL Server Agent Jobs that are defined in this server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sqlagentjobs.html
id: SQLSupportServices_AgentJobs.SQLAgentJobsGrid
folder: ConnectSQLServer
---


It highlights the **current status** of each job (running, succeeded, or failed).

**Failed** jobs are highlighted with a red "X" icon, successfully completed jobs are shown with a green "check" icon, and jobs that are currently running are shown with a blue "!" icon.

To start a job from the grid, right-click the job and select **Start Job**. You must be a member of the Spotlight Diagnostic Administrators group to perform this operation.

The following columns are shown in the SQL Agent Jobs grid:

## Job Name

The name of the job.

## Job Category

The SQLAgent job category assigned to this job.

## Enabled

If the job can be run or not.

## Last Run Outcome

The outcome of the last run (**Success** or **Fail**).

## Current Status

The current status of the job (**Running** or **Inactive**).

## Last Run Time

The date/time on which the job last ran.

## Last Run Finish

The time the job finished.

## Current Run Duration

How long the current job has been running for. Note, this column displays information only whilst the job is running.

## Last Run Duration

How long the last run took (shown as d hh:mm:ss).

## Next Run Time

The date/time of the next scheduled run.

## Description

A brief description of the job.

## Average Run Duration

Average duration of all successful runs for this job. This column is hidden by default.

## Current Step \#

If the job is currently running, this shows the current step number. This column is hidden by default.

{% include links.html %}
