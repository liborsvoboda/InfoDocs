---
title: "tempdb Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: 
ms.topic: conceptual
helpviewer_keywords: 
  - "temporary tables [SQL Server], tempdb database"
  - "tempdb database [SQL Server], about tempdb"
  - "temporary stored procedures [SQL Server]"
  - "tempdb database [SQL Server]"
ms.assetid: ce4053fb-e37a-4851-b711-8e504059a780
author: stevestein
ms.author: sstein
manager: craigg
---
# tempdb Database
  The **tempdb** system database is a global resource that is available to all users connected to the instance of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] and is used to hold the following:  
  
-   Temporary user objects that are explicitly created, such as: global or local temporary tables, temporary stored procedures, table variables, or cursors.  
  
-   Internal objects that are created by the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)], for example, work tables to store intermediate results for spools or sorting.  
  
-   Row versions that are generated by data modification transactions in a database that uses read-committed using row versioning isolation or snapshot isolation transactions.  
  
-   Row versions that are generated by data modification transactions for features, such as: online index operations, Multiple Active Result Sets (MARS), and AFTER triggers.  
  
 Operations within **tempdb** are minimally logged. This enables transactions to be rolled back. **tempdb** is re-created every time [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] is started so that the system always starts with a clean copy of the database. Temporary tables and stored procedures are dropped automatically on disconnect, and no connections are active when the system is shut down. Therefore, there is never anything in **tempdb** to be saved from one session of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] to another. Backup and restore operations are not allowed on **tempdb**.  
  
## Physical Properties of tempdb  
 The following table lists the initial configuration values of the **tempdb** data and log files. The sizes of these files may vary slightly for different editions of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)].  
  
|File|Logical name|Physical name|File growth|  
|----------|------------------|-------------------|-----------------|  
|Primary data|tempdev|tempdb.mdf|Autogrow by 10 percent until the disk is full|  
|Log|templog|templog.ldf|Autogrow by 10 percent to a maximum of 2 terabytes|  
  
 The size of **tempdb** can affect the performance of a system. For example, if the **tempdb** size is too small, the system processing could be too occupied with autogrowing the database to support your workload requirement every time that you start [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)]. You can avoid this overhead by increasing the size of **tempdb**.  
  
## Performance Improvements in tempdb  
 In [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)], **tempdb** performance is improved in the following ways:  
  
-   Temporary tables and table variables may be cached. Caching allows operations that drop and create the temporary objects to execute very quickly and reduces page allocation contention.  
  
-   Allocation page latching protocol is improved. This reduces the number of UP (update) latches that are used.  
  
-   Logging overhead for **tempdb** is reduced. This reduces disk I/O bandwidth consumption on the **tempdb** log file.  
  
-   The algorithm for allocating mixed pages in **tempdb** is improved.  
  
### Moving the tempdb Data and Log Files  
 To move the **tempdb** data and log files, see [Move System Databases](system-databases.md).  
  
### Database Options  
 The following table lists the default value for each database option in the **tempdb** database and whether the option can be modified. To view the current settings for these options, use the [sys.databases](/sql/relational-databases/system-catalog-views/sys-databases-transact-sql) catalog view.  
  
|Database option|Default value|Can be modified|  
|---------------------|-------------------|---------------------|  
|ALLOW_SNAPSHOT_ISOLATION|OFF|Yes|  
|ANSI_NULL_DEFAULT|OFF|Yes|  
|ANSI_NULLS|OFF|Yes|  
|ANSI_PADDING|OFF|Yes|  
|ANSI_WARNINGS|OFF|Yes|  
|ARITHABORT|OFF|Yes|  
|AUTO_CLOSE|OFF|No|  
|AUTO_CREATE_STATISTICS|ON|Yes|  
|AUTO_SHRINK|OFF|No|  
|AUTO_UPDATE_STATISTICS|ON|Yes|  
|AUTO_UPDATE_STATISTICS_ASYNC|OFF|Yes|  
|CHANGE_TRACKING|OFF|No|  
|CONCAT_NULL_YIELDS_NULL|OFF|Yes|  
|CURSOR_CLOSE_ON_COMMIT|OFF|Yes|  
|CURSOR_DEFAULT|GLOBAL|Yes|  
|Database Availability Options|ONLINE<br /><br /> MULTI_USER<br /><br /> READ_WRITE|No<br /><br /> No<br /><br /> No|  
|DATE_CORRELATION_OPTIMIZATION|OFF|Yes|  
|DB_CHAINING|ON|No|  
|ENCRYPTION|OFF|No|  
|NUMERIC_ROUNDABORT|OFF|Yes|  
|PAGE_VERIFY|CHECKSUM for new installations of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)].<br /><br /> NONE for upgrades of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)].|Yes|  
|PARAMETERIZATION|SIMPLE|Yes|  
|QUOTED_IDENTIFIER|OFF|Yes|  
|READ_COMMITTED_SNAPSHOT|OFF|No|  
|RECOVERY|SIMPLE|No|  
|RECURSIVE_TRIGGERS|OFF|Yes|  
|Service Broker Options|ENABLE_BROKER|Yes|  
|TRUSTWORTHY|OFF|No|  
  
 For a description of these database options, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](/sql/t-sql/statements/alter-database-transact-sql-set-options).  
  
## Restrictions  
 The following operations cannot be performed on the **tempdb** database:  
  
-   Adding filegroups.  
  
-   Backing up or restoring the database.  
  
-   Changing collation. The default collation is the server collation.  
  
-   Changing the database owner. **tempdb** is owned by **sa**.  
  
-   Creating a database snapshot.  
  
-   Dropping the database.  
  
-   Dropping the **guest** user from the database.  
  
-   Enabling change data capture.  
  
-   Participating in database mirroring.  
  
-   Removing the primary filegroup, primary data file, or log file.  
  
-   Renaming the database or primary filegroup.  
  
-   Running DBCC CHECKALLOC.  
  
-   Running DBCC CHECKCATALOG.  
  
-   Setting the database to OFFLINE.  
  
-   Setting the database or primary filegroup to READ_ONLY.  
  
## Permissions  
 Any user can create temporary objects in tempdb. Users can only access their own objects, unless they receive additional permissions. It is possible to revoke the connect permission to tempdb to prevent a user from using tempdb, but this is not recommended as some routine operations require the use of tempdb.  
  
## Related Content  
 [SORT_IN_TEMPDB Option For Indexes](../indexes/indexes.md)  
  
 [System Databases](system-databases.md)  
  
 [sys.databases &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-databases-transact-sql)  
  
 [sys.master_files &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-master-files-transact-sql)  
  
 [Move Database Files](move-database-files.md)  
  
## See Also  
 [Working with tempdb in SQL Server 2005](https://chresandro.wordpress.com/2014/09/29/working-with-tempdb-in-sql-server-2005/)  
  
  