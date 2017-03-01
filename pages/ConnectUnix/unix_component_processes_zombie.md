---
title: Zombie Processes
last_updated: February 15, 2017
summary: "Unix expects a parent process to acknowledge the termination of any child process. If it fails to do so, the terminated child process is classified by the kernel as a zombie."
sidebar: c_unix_sidebar
permalink: unix_component_processes_zombie.html
id:
folder: ConnectUnix
---

A high number of zombie processes indicates that one or more processes are not handling their child processes properly. A zombie's parent process may need to be killed in order to eliminate its zombie child process.

{% include links.html %}
