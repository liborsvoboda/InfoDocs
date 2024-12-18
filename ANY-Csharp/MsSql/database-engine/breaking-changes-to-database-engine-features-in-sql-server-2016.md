---
title: "Database Engine: Breaking changes | Microsoft Docs"
titleSuffix: "SQL Server 2016"
description: Learn about Database Engine changes in SQL Server 2016 (13.x) and earlier that might break previous-version functionality when you upgrade.
ms.custom: "seo-lt-2019"
ms.date: "12/13/2019"
ms.prod: sql
ms.prod_service: high-availability
ms.reviewer: ""
ms.technology: release-landing
ms.topic: conceptual
helpviewer_keywords: 
  - "Database Engine [SQL Server], what's new"
  - "breaking changes [SQL Server]"
ms.assetid: 47edefbd-a09b-4087-937a-453cd5c6e061
author: MikeRayMSFT
ms.author: mikeray
---
# Breaking changes to Database Engine features in SQL Server 2016

[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx-md](../includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic describes breaking changes in the [!INCLUDE[sssql15-md](../includes/sssql15-md.md)] [!INCLUDE[ssDE](../includes/ssde-md.md)] and earlier versions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. These changes might break applications, scripts, or functionalities that are based on earlier versions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. You might encounter these issues when you upgrade.  
  
##  <a name="SQL15"></a> Breaking Changes in [!INCLUDE[ssSQL15](../includes/sssql15-md.md)]  
  
-   The *sample_ms* column of `sys.dm_io_virtual_file_stats` has expanded from an **int** to a **bigint** data type.  
  
-   The *TimeStamp* column of `sys.fn_virtualfilestats` has expanded from an **int** to a **bigint** data type.  

-   Under database compatibility level 130, implicit conversions from **datetime** to **datetime2** data types show improved accuracy by accounting for the fractional milliseconds, resulting in different converted values. Use explicit casting to datetime2 datatype whenever a mixed comparison scenario between datetime and datetime2 datatypes exists. For more information, see this [Microsoft Support Article](https://support.microsoft.com/help/4010261).

-   Under database compatibility level 130, operations that perform implicit conversions between certain numeric and datetime data types show improved accuracy and can result in different converted values. This includes usage of functions that require calculations such as, for example, `DATEDIFF` and `ROUND`. For more information, see this [Microsoft Support Article](https://support.microsoft.com/help/4010261).

## <a name="previous-versions"></a> Previous Versions  

For information about breaking changes in [!INCLUDE[ssSQL14](../includes/sssql14-md.md)], and in some earlier versions, see [Breaking Changes to Database Engine Features in SQL Server 2014](../database-engine/breaking-changes-to-database-engine-features-in-sql-server-2016.md?view=sql-server-2014).

#### Archived Documentation for Very Old Versions of SQL Server

[!INCLUDE[Archived documentation for very old versions of SQL Server](../includes/paragraph-content/previous-versions-archive-documentation-sql-server.md)]

## See Also  
 [Deprecated Database Engine Features in SQL Server 2016](../database-engine/deprecated-database-engine-features-in-sql-server-2016.md)   
 [Discontinued Database Engine Functionality in SQL Server 2016](../database-engine/discontinued-database-engine-functionality-in-sql-server-2016.md)   
 [SQL Server Database Engine Backward Compatibility](../database-engine/sql-server-database-engine-backward-compatibility.md)   
 [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../t-sql/statements/alter-database-transact-sql-compatibility-level.md)   
 [SQL Server 2016 or SQL Server 2017 on Windows improvements in handling some data types and uncommon operations](https://support.microsoft.com/help/4010261)   
