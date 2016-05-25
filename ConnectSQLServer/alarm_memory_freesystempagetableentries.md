<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="4" MadCap:lastHeight="387" MadCap:lastWidth="947">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Memory - Free System Page Table Entries alarm" />Memory - Free System Page Table Entries Alarm</h1>
        <p>The <b>Memory - Free System Page Table Entries</b> (PTE) alarm is raised when 
 this performance counter falls below a threshold.</p>
        <p>Microsoft Windows Server can 
 directly address up to 4 gigabytes (GB) of memory address space, regardless 
 of how much physical RAM is installed. From the process perspective, each 
 element of virtual address conceptually refers to a byte of physical memory. 
 It is the responsibility of the Virtual Memory Manager (VMM) in conjunction 
 with processor memory management unit (MMU) to translate or map each virtual 
 address into a corresponding physical address. The VMM performs the mapping 
 by dividing the RAM into fixed-size page frames, creating system PTEs 
 to store information about these page frames, and mapping them. System 
 PTEs are small kernel-mode buffers of memory that are used to communicate 
 with the disk I/O subsystem and the network. Each PTE represents a page 
 frame and contains information necessary for the VMM to locate a page. 
 </p>
        <p>On an x86-based system that uses a 4 KB page size, the maximum 
 number of PTEs required to map 2 GB of address space is 524,288 (2 GB/4 
 KB). On a similar system using the /3GB switch, the number of PTEs requires 
 to map 3 GB of address space is 786,432 (3 GB/4 KB). On a typical system, 
 this space is used as follows: </p>
        <ul>
            <li>A maximum 
 of 50,000 PTEs (approximately 195 MB address space) are reserved for general 
 use.</li>
            <li>The rest is used 
 in mapping system cache, hyperspace, paged pool, non-paged pool, crash 
 dump area, and so on.</li>
        </ul>
        <p>This PTE pool size is automatically determined at system 
 startup based on the amount of physical memory in the system. This pool 
 is squeezed in between paged pool and non-paged pool, which also grows 
 with the amount of physical memory in the system as well. </p>
        <p>The system PTE pool can become heavily used and heavily fragmented. 
 This can lead to situations where a driver may not load. Also, if the 
 system PTE pool is depleted entirely, other parts of the system will degrade, 
 even resulting in threads not being created, system stalls, and potential 
 system crashes.</p>
        <p>Microsoft recommends that this value should be above 12,000, 
 with values below that causing system instability.</p>
    </body>
</html>