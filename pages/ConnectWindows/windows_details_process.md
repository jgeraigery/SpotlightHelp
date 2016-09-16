---
title: Process details
last_updated: July 29, 2016
summary: "Details of the selected Windows process. Select the process on the Processes grid."
sidebar: c_windows_sidebar
permalink: windows_details_process.html
folder: ConnectWindows
---

## Process Name

The image name of the application. This can be used as a parameter in system programs, such as the TASKKILL.EXE command on Windows systems.

## Process ID

This is unique to each process running on the system. This can be used as a parameter in system programs, such as the TASKKILL.EXE command on Windows systems.

## Memory Usage

The current size of the working set of the selected process.

The working set is the set of memory pages touched recently by the threads in the process.

## Virtual Memory Size

The current size of the memory allocated to the process that cannot be shared with other processes.

## Virtual Address space

The current size of the total address space of the process.

A process is limited to 2GB of address space no matter how much free RAM may be available.

## Processor

The percentage of CPU time that the program is currently consuming. This is an instantaneous result.

## CPU User mode

The percentage of CPU time that the program is currently consuming in user mode.

(User mode is a restricted processing mode designed for applications, environment subsystems, and integral subsystems.)

## CPU Kernel mode

The percentage of CPU time that the program is currently consuming in privileged mode.

(Privileged mode is designed for operating system components and allows direct access to hardware and all memory.)

## Command Line

The command line used to launch the process.

## Service(s)

The services (if any) associated with the current process.

## Elapsed Time

How long it has been since the process was started.

## Handles

The overall number of resources that the program currently has open. A handle is a value used to uniquely identify a resource so that a program can access it.

## Threads

The number of active threads in the program. A thread is a program execution unit.

## Priority

The priority of the program. Program priorities range from 1 to 31, and depend on what the program is currently executing.

Programs started in Real Time mode run with a priority of 16 to 31, whereas programs with High, Normal or Low settings run in a priority range of 1 to 15.

## Page faults / second

An instantaneous view of how many page faults are occurring for the program.

## Reads / second

Shows the number of I/O reads (such as hard disk reads and memory reads) being performed by the process.

## Writes / second

Shows the number of I/O writes (such as hard-disk writes and memory writes) being performed by the process.

## IO / second

Shows the number of I/O accesses (such as hard disk reads and writes, and memory reads and writes) being performed by the process.

{% include links.html %}
