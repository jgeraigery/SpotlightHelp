---
title: Availability Group - Quorum Failure Imminent alarm
tags: availability_group_alarms
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_alarm_quorumfailureimminent.html
id: alarm_AvailabilityGroup_QuarumFailureImminent
folder: ConnectAvailabilityGroup
---

﻿This alarm is raised under the following circumstances:

*  Multiple nodes have been made unavailable. If one more node fails then the cluster (Availability Group) will be made unavailable (High Alarm).
*  If one more node fails then the cluster (Availability Group) will be made unavailable (Medium Alarm).
*  A node within the cluster is made unavailable (Low Alarm).
*  The Quorum has been forced (Information Alarm).

{% include note.html content="The threshold values (0-4) don't represent nodes but represent 5 different quorum states for cluster of various node numbers. " %}



{% include links.html %}
