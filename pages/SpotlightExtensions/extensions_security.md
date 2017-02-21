---
title: Security and Data Handling
summary: ""
sidebar: p_extensions_sidebar
permalink: extensions_security.html
folder: SpotlightExtensions
---

## How often is data collected? Is this configurable?
The data is collected at regular times. Most data is collected daily, but some data such as wait statistics and SQL are collected at hourly intervals, or once per day. This is not configurable by the customer.

## Will Spotlight Extensions run any traces on the system, or is all data captured from Dynamic Management Views?
Spotlight Extensions does not run traces. All data is captured by the Dynamic Management View.

## When is data uploaded to the Spotlight website?
Uploads occur every hour.

## Is data temporarily stored anywhere? Where?
Yes, performance data is collected and temporarily stored in the Diagnostic Server which is installed under C:\%Program Files%\Dell\Spotlight Developer Diagnostic Server\Agent folder. This performance data is then zipped, uploaded and then deleted once per day.

## What data is being sent by the Spotlight Extensions?
Spotlight Extensions collects system configuration and performance metrics from your SQL Server environment and uploads it to SpotlightEssentials.com. Once it's uploaded we store it for analysis and consumption by the end user. From the data and subsequent analysis Spotlight Essentials is able to generate a picture of your systems health and performance. To find out more please review the information available on the data handling and security page.



{% include links.html %}
