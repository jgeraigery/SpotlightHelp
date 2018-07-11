---
title: Plan
summary: "The Optimizer Plan Visualization control provides an interactive and intuitive way to view your plan and statement."
sidebar: c_sqlserver_sidebar
id: SQL_Statement
permalink: sqlserver_plan.html
folder: ConnectSQLServer
---


Menu | Description
-----|------------
{% include inline_imageClient.html file="tb_plan_analysis.png" alt="Analysis" %} | Click to show Analysis of Query for the selected plan. Click **View** to show the Execution Plan. Click **More** to show the SQL Statement.
{% include inline_imageClient.html file="tb_plan_execution.png" alt="Execution Plan" %} | Click to show the Execution Plan.
{% include inline_imageClient.html file="tb_plan_operation.png" alt="Operation" %} | Click to show operation of each session for the selected plan. Note that you can show/hide columns using **Organize Columns**.
{% include inline_imageClient.html file="tb_plan_sql.png" alt="SQL" %} | Click to show the SQL statement for the selected plan.


{% include tip.html content="While the Session Status is running there is an option to **View SQL for Batch**." %}

{% include note.html content="Optimizer Plan Visualization is not available in Playback mode. Display of the SQL Statement is available in Playback mode." %}


{% include links.html %}
