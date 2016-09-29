---
title: Log Buffer Space Wait alarm
last_updated: July 29, 2016
summary: "The Log Buffer Space Wait alarm occurs if the amount of time spent waiting for space in the redo log buffer exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_logbufferspacewait.html
id: Home.RedoBuffer.Redo buffer space wait.Alarm
folder: ConnectOracle
---


 The redo buffer improves session performance by buffering redo log changes in memory. However, if the redo buffer is too small, or if the redo log writer is too slow, sessions may spend time waiting for space to be made available in the redo buffer.

Increasing the size of the initialization parameter **LOG_BUFFER** can help. However, if the real problem is the speed of the redo log writer process, then consider the recommendations in Improve Redo Log Writer Performance.





{% include links.html %}
