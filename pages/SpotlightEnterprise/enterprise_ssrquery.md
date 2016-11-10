---
title: About the Spotlight Statistics Repository
keywords: reports
summary: "Data is collected from the SQL Server instance then written to the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_ssrquery.html
folder: SpotlightEnterprise
---



Scenario

Your manager has asked you to provide statistics on database performance for the last quarter. You decide to query the Spotlight Statistics Repository to return file I/O statistics for the databases your manager is interested in.

To retrieve this data, you first browse the dimension tables to become familiar with the data in the Spotlight Statistics Repository. Once familiar, you write queries using the Spotlight stored procedures to get data from the fact table. You then refine the queries using custom T-SQL to retrieve more specific data from the Spotlight Statistics Repository.





## What you need to know to query the Spotlight Statistics Repository

### Schema of the Spotlight Statistics Repository  
Show how the repository is structured and the data it contains.  

### Data flow into the Spotlight Statistics Repository  
Collected data is inserted into the relevant dimension tables and the fact is written into the fact table (spotlight_perfdata).  

### Browse dimension tables and retrieve data  
Use Spotlight API stored procedures to browse dimension tables in the repository. Then use additional stored procedures or custom T-SQL to retrieve data.  

## Reference to the schema of the Spotlight Statistics Repository

### Table definitions  
Definitions to repository objects (tables) created by Spotlight in the Spotlight Statistics Repository.

### Stored procedures  
Definitions to repository objects (procedures) created by Spotlight in the Spotlight Statistics Repository. Stored procedures return metadata about the Spotlight Statistics Repository or data from within the Spotlight Statistics Repository.  

### Specifications  
Specifications to the stored procedures in the Spotlight Statistics Repository.  


{% include links.html %}
