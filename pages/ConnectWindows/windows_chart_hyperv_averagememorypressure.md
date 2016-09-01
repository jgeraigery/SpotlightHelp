---
title: Average memory pressure (Hyper-V)
last_updated: July 29, 2016
summary: "Show the proportion of memory on the Hyper-V server consumed by all the virtual machines on the server over time."
sidebar: c_windows_sidebar
permalink: windows_chart_hyperv_averagememorypressure.html
id: VirtualizedMemory.HyperV.AverageMemoryPressure
folder: ConnectWindows
---



Ideally the proportion should be consistently reported around 80, definitely below 100 and no spikes above 100. Some highly tuned systems that are very dense may run higher than 80.

So long as the proportion stays under 100 there is enough available memory to service all virtual machines on the Hyper-V server. If the proportion exceeds 100 then virtual machine(s) are doing paging operations with the virtual machine itself and there will be performance degradation.

<note type="note">This chart is applicable to Hyper-V servers configured for dynamic memory allocation. If the Hyper-V server is configured for static memory assignment then no data is available. Dynamic memory allows Hyper-V administrators to assign a dynamic allocation of memory to a virtual machine that draws from a pool of memory on the Hyper-V server.</note>



{% include links.html %}
