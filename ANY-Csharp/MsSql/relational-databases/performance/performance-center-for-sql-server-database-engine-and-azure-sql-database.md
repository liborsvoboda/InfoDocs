---
title: "Performance Center"
ms.custom: seo-dt-2019
ms.date: "12/11/2018"
ms.prod: sql
ms.reviewer: ""
ms.technology: performance
ms.topic: conceptual
f1_keywords: 
  - "Performance (SQL Server)"
  - "Performance (SQL Database)"
helpviewer_keywords: 
  - "SQL Server, performance"
  - "performance (SQL Server)"
  - "database performance (SQL Server)"
  - "SQL Database (Performance)"
  - "performance (SQL Database)"
  - "database performance (SQL Database)"
ms.assetid: 301204b2-140d-4495-98ed-021a9b5025f5
author: julieMSFT
ms.author: jrasnick
---
# Performance Center for SQL Server Database Engine and Azure SQL Database
[!INCLUDE[appliesto-ss-asdb-xxxx-xxx-md](../../includes/appliesto-ss-asdb-xxxx-xxx-md.md)]
  This page provides links to help you locate the information that you need about performance in the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)] and [!INCLUDE[ssSDSFull](../../includes/sssdsfull-md.md)].  
  
 **Legend**  
  
 ![security-center-legend](../../relational-databases/performance/media/security-center-legend.PNG "security-center-legend")  
  
## Configuration Options for Performance  
 [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] provides the ability to affect database engine performance  through a number of configuration options at the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)] level. With [!INCLUDE[ssSDSFull](../../includes/sssdsfull-md.md)], Microsoft performs most, but not all, of these optimizations for you.  
  
|||  
|-|-|  
|**Disk configuration options**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Disk striping and RAID](https://technet.microsoft.com/library/ms190764\(v=sql.105\).aspx)|  
|**Data and log file configuration options**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Place Data and Log Files on Separate Drives](../../relational-databases/policy-based-management/place-data-and-log-files-on-separate-drives.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [View or Change the Default Locations for Data and Log Files &#40;SQL Server Management Studio&#41;](../../database-engine/configure-windows/view-or-change-the-default-locations-for-data-and-log-files.md)|  
|**TempDB configuration options**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Performance Improvements in TempDB](../databases/tempdb-database.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Database Engine Configuration - TempDB](https://msdn.microsoft.com/library/7aabd304-f3c9-4c2d-bf9d-5479ee2498da)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Using SSDs in Azure VMs to store SQL Server TempDB and Buffer Pool Extensions](https://blogs.technet.com/b/dataplatforminsider/archive/2014/09/25/using-ssds-in-azure-vms-to-store-sql-server-tempdb-and-buffer-pool-extensions.aspx)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Disk and performance best practices for temporary disk for SQL Server in Azure Virtual Machines](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)|  
|**Server Configuration Options**|**Processor configuration options**<br /><br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [affinity mask Server Configuration Option](../../database-engine/configure-windows/affinity-mask-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [affinity Input-Output mask Server Configuration Option](../../database-engine/configure-windows/affinity-input-output-mask-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [affinity64 mask Server Configuration Option](../../database-engine/configure-windows/affinity64-mask-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [affinity64 Input-Output mask Server Configuration Option](../../database-engine/configure-windows/affinity64-input-output-mask-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the max worker threads Server Configuration Option](../../database-engine/configure-windows/configure-the-max-worker-threads-server-configuration-option.md)<br /><br />**Memory configuration options**<br /><br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Server Memory Server Configuration Options](../../database-engine/configure-windows/server-memory-server-configuration-options.md)<br /><br />**Index configuration options**<br /><br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the fill factor Server Configuration Option](../../database-engine/configure-windows/configure-the-fill-factor-server-configuration-option.md)<br /><br />**Query configuration options**<br /><br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the min memory per query Server Configuration Option](../../database-engine/configure-windows/configure-the-min-memory-per-query-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the query governor cost limit Server Configuration Option](../../database-engine/configure-windows/configure-the-query-governor-cost-limit-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the max degree of parallelism Server Configuration Option](../../database-engine/configure-windows/configure-the-max-degree-of-parallelism-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Configure the cost threshold for parallelism Server Configuration Option](../../database-engine/configure-windows/configure-the-cost-threshold-for-parallelism-server-configuration-option.md)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [optimize for ad hoc workloads Server Configuration Option](../../database-engine/configure-windows/optimize-for-ad-hoc-workloads-server-configuration-option.md)<br /><br />**Backup configuration options**<br /><br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [View or Configure the backup compression default Server Configuration Option](../../database-engine/configure-windows/view-or-configure-the-backup-compression-default-server-configuration-option.md)|  
|**Database configuration optimization options**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Data Compression](../../relational-databases/data-compression/data-compression.md)<br />![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") [View or Change the Compatibility Level of a Database](../../relational-databases/databases/view-or-change-the-compatibility-level-of-a-database.md)<br />![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") [ALTER DATABASE SCOPED CONFIGURATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md)|  
|**Table configuration optimization**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Partitioned Tables and Indexes](../../relational-databases/partitions/partitioned-tables-and-indexes.md)|  
|**Database Engine Performance in an Azure Virtual Machine**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Quick check list](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Virtual machine size and storage account considerations](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Disks and performance considerations](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [I/O Performance Considerations](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Feature specific performance considerations](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-performance-best-practices/)| 
|**Performance best practices and configuration guidelines for SQL Server on Linux**|![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [SQL Server configuration](../../linux/sql-server-linux-performance-best-practices.md#sql-server-configuration)<br />![security-center-sqlserver](../../relational-databases/performance/media/security-center-sqlserver.png "security-center-sqlserver") [Linux OS Configuration](../../linux/sql-server-linux-performance-best-practices.md#linux-os-configuration)|

> [!IMPORTANT]
> Additional considerations are available in:    
> -  [Recommended updates and configuration options for SQL Server 2012 and SQL Server 2014 with high-performance workloads](https://support.microsoft.com/help/2964518)
> -  [Recommended updates and configuration options for SQL Server 2017 and 2016 with high-performance workloads](https://support.microsoft.com/help/4465518)

## Query Performance Options  
  
|||  
|-|-|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Indexes](../../relational-databases/indexes/indexes.md)**|[Reorganize and Rebuild Indexes](../../relational-databases/indexes/reorganize-and-rebuild-indexes.md)<br />[Specify Fill Factor for an Index](../../relational-databases/indexes/specify-fill-factor-for-an-index.md)<br />[Configure Parallel Index Operations](../../relational-databases/indexes/configure-parallel-index-operations.md)<br />[SORT_IN_TEMPDB Option For Indexes](../../relational-databases/indexes/sort-in-tempdb-option-for-indexes.md)<br />[Improve the Performance of Full-Text Indexes](../../relational-databases/search/improve-the-performance-of-full-text-indexes.md)<br />[Configure the min memory per query Server Configuration Option](../../database-engine/configure-windows/configure-the-min-memory-per-query-server-configuration-option.md)<br />[Configure the index create memory Server Configuration Option](../../database-engine/configure-windows/configure-the-index-create-memory-server-configuration-option.md)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Partitioned Tables and Indexes](../../relational-databases/partitions/partitioned-tables-and-indexes.md)**|[Benefits of Partitioning](../partitions/partitioned-tables-and-indexes.md)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Joins](../../relational-databases/performance/joins.md)**|[Join Fundamentals](../../relational-databases/performance/joins.md#fundamentals)<br />[Nested Loops join](../../relational-databases/performance/joins.md#nested_loops)<br />[Merge join](../../relational-databases/performance/joins.md#merge)<br />[Hash join](../../relational-databases/performance/joins.md#hash)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Subqueries](../../relational-databases/performance/subqueries.md)**|[Subquery Fundamentals](../../relational-databases/performance/subqueries.md#fundamentals)<br />[Correlated subqueries](../../relational-databases/performance/subqueries.md#correlated)<br />[Subquery types](../../relational-databases/performance/subqueries.md#types)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Stored Procedures](../stored-procedures/stored-procedures-database-engine.md)**|[CREATE PROCEDURE &#40;Transact-SQL&#41;](../../t-sql/statements/create-procedure-transact-sql.md#best-practices)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[User-Defined Functions](../user-defined-functions/user-defined-functions.md)**|[CREATE FUNCTION &#40;Transact-SQL&#41;](../../t-sql/statements/create-function-transact-sql.md#best-practices)<br />[Create User-defined Functions &#40;Database Engine&#41;](../user-defined-functions/create-user-defined-functions-database-engine.md)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **Parallelism optimization**|[Configure the max worker threads Server Configuration Option](../../database-engine/configure-windows/configure-the-max-worker-threads-server-configuration-option.md)<br />[ALTER DATABASE SCOPED CONFIGURATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **Query optimizer optimization**|[ALTER DATABASE SCOPED CONFIGURATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md)<br />[USE HINT query hint](../../t-sql/queries/hints-transact-sql-query.md#use_hint)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both") **[Statistics](../../relational-databases/statistics/statistics.md)**|[When to Update Statistics](../statistics/statistics.md)<br />[Update Statistics](../../relational-databases/statistics/update-statistics.md)|  
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both")  **[In-Memory OLTP &#40;In-Memory Optimization&#41;](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)**|[Memory-Optimized Tables](../../relational-databases/in-memory-oltp/memory-optimized-tables.md)<br />[Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md)<br />[Creating and Accessing Tables in TempDB from Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/create-and-access-tables-in-tempdb-from-stored-procedures.md)<br />[Troubleshooting Common Performance Problems with Memory-Optimized Hash Indexes](https://msdn.microsoft.com/library/1954a997-7585-4713-81fd-76d429b8d095)<br />[Demonstration: Performance Improvement of In-Memory OLTP](../../relational-databases/in-memory-oltp/demonstration-performance-improvement-of-in-memory-oltp.md)|
|![security-center-both](../../relational-databases/performance/media/security-center-both.png "security-center-both")  **[Intelligent query processing](../../relational-databases/performance/intelligent-query-processing.md)**|[Intelligent query processing](../../relational-databases/performance/intelligent-query-processing.md)|
  
## See Also  
 [Monitor and Tune for Performance](../../relational-databases/performance/monitor-and-tune-for-performance.md)   
 [Monitoring Performance By Using the Query Store](../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Azure SQL Database performance guidance for single databases](https://azure.microsoft.com/documentation/articles/sql-database-performance-guidance/)   
 [Optimizing Azure SQL Database Performance using Elastic Pools](https://azure.microsoft.com/documentation/articles/sql-database-elastic-pool-guidance/)   
 [Azure Query Performance Insight](https://azure.microsoft.com/documentation/articles/sql-database-query-performance/)  
 [Index Design Guide](../../relational-databases/sql-server-index-design-guide.md)  
 [Memory Management Architecture Guide](../../relational-databases/memory-management-architecture-guide.md)  
 [Pages and Extents Architecture Guide](../../relational-databases/pages-and-extents-architecture-guide.md)  
 [Post-migration Validation and Optimization Guide](../../relational-databases/post-migration-validation-and-optimization-guide.md)  
 [Query Processing Architecture Guide](../../relational-databases/query-processing-architecture-guide.md)  
 [SQL Server Transaction Locking and Row Versioning Guide](https://msdn.microsoft.com/library/jj856598)  
 [SQL Server Transaction Log Architecture and Management Guide](../../relational-databases/sql-server-transaction-log-architecture-and-management-guide.md)  
 [Thread and Task Architecture Guide](../../relational-databases/thread-and-task-architecture-guide.md) 
  