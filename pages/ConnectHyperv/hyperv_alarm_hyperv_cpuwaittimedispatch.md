---
title: Hyper-V CPU wait time per dispatch Alarm
summary: "The CPU wait time per dispatch alarm alarm is raised when the average queue time for the virtual machine waiting for CPU to become available exceeds a threshold."
sidebar: c_hyperv_sidebar
toc: false
permalink: hyperv_alarm_cpuwaittimedispatch.html
folder: ConnectHyperv
---



The average queue time should remain under 60,000ns. This alarm is raised when the average queue time exceeds 60ms. A high alarm is raised when the average queue time exceeds 100ms.

## When the alarm is raised

There is CPU starvation.

*  Look at the Windows Server \| CPU Drilldown \| Virtualized CPU page \| CPU wait time per dispatch chart.
*  See your Hyper-V administrator for ways to address this issue.


{% include links.html %}
