---
title: CPU drilldown
last_updated: July 29, 2016
summary: "Drilldown on recent processor activity as measured by the Windows server."
sidebar: c_windows_sidebar
permalink: windows_drilldown_cpu.html
folder: ConnectWindows
---

## CPU page

Investigate performance details for each CPU on the Windows server.

### CPU Utilization chart
Shows the CPU utilization for all the processors on the Windows server. Each processor is represented by a single line on the chart, and by an item in the legend at the top right of the chart.

To view CPU utilization analyzed according to processing mode, see the Total CPU Utilization chart on the Processing page in the CPU drilldown.

### Server Work Queues chart
Shows the number of threads (program execution units) that are waiting to run on each processor. A sustained queue length greater than four may indicate processor congestion.

### Interrupts chart
Shows the number of interrupts per second per CPU on the Windows server. Each CPU is represented by a single graph on the chart, and by an item in the legend at the top right of the chart.

The Interrupts chart is designed to show if any CPUs on the system are bearing a disproportionate level of the I/O load.

### Kilobytes Transferred chart
Shows the number of kilobytes per second transferred per CPU on the Windows server. Each CPU is represented by a single graph on the chart, and by an item in the legend at the top right of the chart.


## Processing page

Investigate overall performance details across all CPUs on the Windows server.

### Total CPU Utilization chart
Shows the combined CPU utilization for all processors on the Windows server. The following are displayed:

* **User** - The percentage of CPU time that is being consumed in User mode. (User mode is a restricted processing mode designed for applications, environment subsystems, and integral subsystems.)
* **Kernel** - The percentage of CPU time that is being consumed in privileged mode. (Privileged mode is designed for operating system components and allows direct access to hardware and all memory.)

### Processor Queue Length chart
Shows the total number of threads (program execution units) that are waiting to be run on ALL processors. A sustained processor queue length greater than ten can indicate processor congestion.

To view Server Work Queues for the individual CPUs in the system, see the CPU Utilization chart on the CPU page in the CPU drilldown.

### Total Process and Thread Count chart
Shows the total number of Windows processes and threads that exist.

A process is one instance of an application program or system service that is currently executing on the server. Each process will have one or more threads which are the basic entity that can be scheduled. Sophisticated application processes such as SQL Server or Exchange can have dozens of threads running concurrently.

### Context Switching chart
Shows the rate at which Windows has been processing context switches.

A Context Switch occurs when a processor switches from one thread to another. Context switches occur when a running thread voluntarily relinquishes the processor, is preempted by a higher priority ready thread, or switches between user-mode and privileged (kernel) mode to use an Executive or subsystem service.


## Virtualized CPU page (VMWare server host)

Investigate CPU usage for the virtual machine.

### CPU Usage Percent
Shows usage statistics for the CPU of the virtual machine as percentages of the theoretical maximum CPU available to the virtual machine.

* **Overhead %** - Percentage of CPU that is being consumed by other virtual machines or by VMware itself.
* **Idle %** - Percentage of CPU that is idle.
* **Used %** - Percentage of CPU being used by this virtual machine.
A low idle percentage indicates that the virtual machine may not be getting the CPU time it requires. This can be seen in the chart when the overhead and used percentages meet.

### CPU Usage MHz
Shows how much CPU the virtual machine is using, in megahertz.


## Virtualized CPU page (Hyper-V server host)

Investigate CPU usage for the virtual machine.

### CPU Usage
Show CPU usage statistics.

* Guest - CPU usage of this virtual machine.
* Remote - CPU usage of this virtual machine on CPUs that were not allocated to this virtual machine. More technically, this refers to the CPU usage of this virtual machine on a NUMA node it is not allocated to. If this figure is consistently high then it could indicate an issue with the CPU configuration.
* Hypervisor - CPU usage of the Hypervisor.

### CPU wait time per dispatch
Show the average queue time for the virtual machine waiting for CPU to become available.

The average queue time should remain under 60,000ns. If the average queue time exceeds 60,000ns then an alarm is raised. A high Hyper-V CPU wait time per dispatch alarm is raised if the average queue time exceeds 100,000ns.

The current value for this metric is displayed on the Windows Server \| Spotlight Overview page \| CPU Panel \| Virtualization Overhead control.

### Host Processor Usage
Show the load on the logical processor and virtual processor.

* **Logical Processor Total Runtime** - A logical processor is an actual CPU on the Hyper-V server.
* **Virtual Processor Total Runtime** - A virtual processor is the Hyper-V equivalent of a processor for a virtual machine. Items assigned to a virtual processor run on a logical processor, but not necessarily the same logical processor each time.

A logical processor executes items for many virtual processors. All items to be executed are placed in a queue and the logical processor executes all that is queued.




{% include links.html %}
