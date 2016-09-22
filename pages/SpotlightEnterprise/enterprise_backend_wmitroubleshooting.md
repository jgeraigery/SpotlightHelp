---
title: Troubleshooting WMI
summary: "Spotlight uses WMI queries to retrieve performance counter information from Windows Server (and SQL Server host). Spotlight needs access to this information before it can connect to Windows Servers (and SQL Server hosts)."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_wmitroubleshooting.html
folder: SpotlightEnterprise
---

## WMI Test 1

This test checks that requests are reaching WMI.

Run this test from the Windows server being monitored.

1. Click Control Panel \| Administrative Tools \| Event Viewer to open the Event Viewer.
2. Click View \| Show Analytic and Debug Logs to select this menu option.
3. Click Applications and Service Logs
4. Click to expand Microsoft \| Windows \| WMI-Activity
5. Right click Trace \| Enable Log.

Tip: To save log entries, right click Trace | Save All Events As.

6. If nothing is displayed then the request never reached WMI. The issue is a security or networking issue.

If events with error messages are displayed then those events can be investigated. If you encounter WMI errors: For more information, see WMI errors.




## WMI Test 2

This test checks that Microsoft tools can connect to WMI.

Run this test from the Spotlight Diagnostic Server.
1. Login to the Spotlight Diagnostic Server under the account used to run the Spotlight Diagnostic Server.
2. Click Control Panel \| Administrative Tools \| Computer Management.
3. Right click Computer Management (Local) | Connect to another computer.
4. Specify the \\HOSTNAME where HOSTNAME is the name of machine you want to monitor with Spotlight.
5. Click Services and Applications.
6. Right click WMI Control | Properties to open the WMI Control Properties dialog.
7. Ensure the General tab is open.

If successful, try to monitor HOSTNAME with Spotlight again.



## WMI Test 3

This test checks that WMI is working and returns data properly.

If you encounter WMI errors: For more information, see WMI errors.


1. Run this command on the machine you want to monitor. Run this command locally from the command prompt.

```
wmic path Win32_PerfRawData_PerfDisk_LogicalDisk get FreeMegabytes
```

2. Run either of the following commands on the Spotlight Diagnostic Server.

```
wmic /node: HOSTNAME /user: DOMAIN\USER path Win32_OperatingSystem get BuildNumber, Caption, CSDVersion, Version
```

or

```
wmic /node: HOSTNAME /user: DOMAIN\USER path Win32_PerfRawData_PerfDisk_LogicalDisk get FreeMegabytes
```

### HOSTNAME

Identify the host computer you want to monitor with Spotlight. Use the fully qualified domain name, machine name or IP-address.

### DOMAIN\USER

Valid Windows login credentials.


## Additional testing

You may want to consider a WMI Diagnostic Utility provided by Microsoft. It is a utility to help system administrators diagnose and repair problems with the WMI service. See: http://www.microsoft.com/en-us/download/details.aspx?id=7684.



## WMI errors

The following is a guide to troubleshooting WMI errors.


### The RPC server is unavailable.

Exception from HRESULT: 0x800706BA


Spotlight is not able to establish a connection with the Windows server to be monitored.

Verify the following:

* The address of the server is entered correctly. Verify correct host name or IP address. For more information, see Windows Server | Connection Details. Verify the host is available (not currently shut down).
* The Remote Procedure Call (RPC) service is running on the Windows server to be monitored. Verity that "Remote Procedure Call (RPC)" is running and set to auto start after restart.
* TCP Port 135 is open to internal traffic on the Spotlight Diagnostic Server and the Windows server to be monitored.

 WMI opens an undetermined port in addition to port 135. This can be troublesome in a firewalled environment. Specifying a port range for WMI is recommended for this type of environment. For more information, see How to limit the number of ports used by WMI.

* The Windows server to be monitored is not blocked by the firewall.

Either configure WMI to use a fixed ports range (For more information, see How to limit the number of ports used by WMI.) or enable remote administration exception.

Follow these steps to enable remote administration exception.

On the Windows server to be monitored:

1) Open the Group Policy Object Editor (gpedit.msc), open Computer Configuration | Administrative Templates | Network | Network Connections | Windows Firewall

2) Open either Domain Profile or Standard Profile, depending on which profile you want to configure.

3) Enable the following exceptions: "Allow Remote Administration Exception" and "Allow File and Printer Sharing Exception".

https://msdn.microsoft.com/en-us/library/windows/desktop/aa394603(v=vs.85).aspx

* The "TCP/IP NetBIOS Helper" service is running. Verity that "TCP/IP NetBIOS Helper" is running and set to auto start after restart.
* The "Windows Management Instrumentation" service is running on the Windows server to be monitored. Verity that "Windows Management Instrumentation" is running and set to auto start after restart.


### Access is denied.

Exception from HRESULT: 0x80070005 (E_ACCESSDENIED)

The Windows user specified is unknown to the Windows server or does not have administrator rights.

For more information, see How to configure WMI with minimum required user permissions.


### WMI connection time outs

The timeout value defaults to the value DCOM specifies (usually 60 seconds).

You can adjust this value via dcomcnfg.exe

### WMI query failed: Invalid class.

[0x80041010]


The WMI class does not exist on the Windows server being monitored.

Solution: Recreate the WMI classes.



Windows Connections

Either of the following will recreate the WMI classes:
•
Open a command prompt window and run the following command:

wmiadap /f

•
Windows Server 2003: Use the Microsoft Extensible Counter List (Exctrlst) utility to enable the following counters:

Win32_PerfDisk, Win32_PerfNet, Win32_PerfOS and Win32_PerfProc.

http://download.microsoft.com/download/win2000platform/exctrlst/1.00.0.1/nt5/en-us/exctrlst_setup.exe

A reboot of the Windows server is required.




SQL Server Analysis Services Connections

Either of the following will recreate the WMI classes:

* Open a command prompt window on the server hosting the SQL Server Analysis Services instance. Run the following command:

```
wmiadap /f
```

* Unregister and re-register the WMI classes. To do so:

1. On the problematic machine with SQL Server Analysis Services installed, find out the SQL installation path. See below for the default installation path. Your installation path may be different.

SQL Server Analysis Services 2014

C:\Program Files\Microsoft SQL Server\MSAS12.MSSQLSERVER\OLAP\bin\Counters

SQL Server Analysis Services 2012

C:\Program Files\Microsoft SQL Server\MSAS11.MSSQLSERVER\OLAP\bin\Counters

SQL Server Analysis Services 2008

C:\Program Files\Microsoft SQL Server\MSAS10.MSSQLSERVER\OLAP\bin\Counters

SQL Server Analysis Services 2005

C:\Program Files\Microsoft SQL Server\MSSQL.2\OLAP\bin



Note: You are looking for the folder that contains the following files:

For unamed instances:

MSSQLServerOLAPService

perf-MSSQLServerOLAPServicemsmdctr.ini

For named instances:

MSOLAP$Your_SSAS_NamedInstanceName

perf-Your_SSAS_NamedInstanceNamemsmdctr.ini

If you need to check the named instance name, use services.msc.


2. At the command prompt, change folder to the installation path.

For example, cd C:\Program Files\Microsoft SQL Server\MSAS10.MSSQLSERVER\OLAP\bin\Counters

3. Run the following commands to unload and load counters:






unamed instances


unlodctr MSSQLServerOLAPService

lodctr perf-MSSQLServerOLAPServicemsmdctr.ini



named instances


 unlodctr MSOLAP$Your_SSAS_NamedInstanceName

 lodctr perf-Your_SSAS_NamedInstanceNamemsmdctr.ini

Tip: Replace Your_SSAS_NamedInstanceName with the SQL Server Analysis Services named instance name. If you need to check the named instance name, use services.msc.


4. Run the following command to parse all the performance libraries on the Windows server and refresh the performance counter classes on the Windows server:

wmiadap /f

5. Use wbemtest.exe to verify the WMI Classes exist.





### WMI query failed: Invalid query.

#### [0x80041017]


The columns returned by the WMI class are incomplete or unexpected.

Solution: On the Windows server to be monitored, update the WMI classes by running the following command at the command prompt.

wmiadap.exe /f

See https://msdn.microsoft.com/en-us/library/windows/desktop/aa394603(v=vs.85).aspx for more information.




#### 0x80014064

User credentials cannot be used for local connections


This error occurs when wmic command is executed locally on the target machine and credentials specified




#### [0x800705af]


The paging file is too small for this operation to complete. For Windows Server 2008 R2 you may find the following link useful:

https://blogs.technet.microsoft.com/kevinholman/2010/06/09/wmi-leaks-memory-on-server-2008-r2-monitored-agents/




### WMI query failed: Out of memory.

#### [0x80041006]

1. At the command prompt run "wbemtest"
2. Connect to the "root" namespace (not "root\default", just "root")
3. Click Open Instance. Specify "__ProviderHostQuotaConfiguration=@"
4. Select Local Only for easier readability. You will see the threshold values.
5. Increase the MemoryPerHost value to something greater. For example, double it (256 MB)
6. Save Property
7. Save Object
8. Click Exit.
9. Restart WMI services.




Invalid verb


The wmic command has attempted to access a WMI class that does not exist.

Solution: Check the spelling of parameters on the wmic command.



Invalid Global Switch


 The specified host, user or domain name contains special characters like '-' or '/'.

Solution: Modify the command by adding quotation marks.

wmic /node: 'MonHostFQDN' /user: 'DOMAIN\USER' path Win32_PerfRawData_PerfDisk_LogicalDisk get FreeMegabytes



{% include links.html %}
