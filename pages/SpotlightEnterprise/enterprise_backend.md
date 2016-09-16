---
title: Data collection and storage
summary: "Components of Spotlight that collect and store data"
sidebar: p_enterprise_sidebar
permalink: enterprise_backend.html
folder: SpotlightEnterprise
---



## Spotlight Diagnostic Server

The Spotlight Diagnostic Server is at the core of the Spotlight on SQL Server architecture. All Spotlight data passes through the Spotlight Diagnostic Server. The Spotlight Diagnostic Server is a Windows service. It runs under Windows credentials.

## Playback Database

Recent history is stored in the Playback Database. The Playback Database is deployed on SQL Server. There is one Playback Database per Spotlight Diagnostic Server.

## Spotlight Statistics Repository

Long term history for reporting and trending is stored in the Spotlight Statistics Repository. The Spotlight Statistics Repository is deployed on SQL Server. Deployment of the Spotlight Statistics Repository is optional per Spotlight Diagnostic Server.

## Spotlight Cloud
 
Upload health performance data to the Spotlight Cloud. Deployment is optional per Spotlight Diagnostic Server.


{% include links.html %}
