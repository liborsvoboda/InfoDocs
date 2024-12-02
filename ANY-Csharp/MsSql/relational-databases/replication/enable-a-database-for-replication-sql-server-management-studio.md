---
title: "Enable a database for Replication (SSMS)"
description: Learn how to enable a database for Replication using SQL Server Management Studio (SSMS) or Transact-SQL (T-SQL).
ms.custom: seo-lt-2019
ms.date: "03/01/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: replication
ms.topic: conceptual
helpviewer_keywords: 
  - "databases [SQL Server replication]"
ms.assetid: 8092faa3-9cff-4f81-926c-6a0070d1ce2c
author: "MashaMSFT"
ms.author: "mathoma"
monikerRange: "=azuresqldb-mi-current||>=sql-server-2016||=sqlallproducts-allversions"
---
# Enable a Database for Replication (SQL Server Management Studio)
[!INCLUDE[appliesto-ss-asdbmi-xxxx-xxx-md](../../includes/appliesto-ss-asdbmi-xxxx-xxx-md.md)]
  
A database is implicitly enabled for replication when a member of the **sysadmin** fixed server role creates a publication with the New Publication Wizard. A member of the **sysadmin** fixed server role can also enable a database for replication explicitly, so that a member of the **db_owner** fixed database role can create one or more publications in that database. To enable a database explicitly, use the **Publication Databases** page of the **Publisher Properties - \<Publisher>** dialog box. For more information about accessing this dialog box, see [Create a Publication](../../relational-databases/replication/publish/create-a-publication.md).  
  
## Using SQL Server Management Studio (SSMS)
  
1.  On the **Publication Databases** page of the **Publisher Properties - \<Publisher>** dialog box, select the **Transactional** and/or **Merge** check box for each database you want to replicate. Select **Transactional** to enable the database for snapshot replication.  
  
2.  [!INCLUDE[clickOK](../../includes/clickok-md.md)]  
  
  
## Using Transact-SQL (T-SQL)
You can enable a database for replication with the following Transact-SQL code: 

```sql
USE master
EXEC sp_replicationdboption @dbname = 'AdventureWorks2017',
@optname = 'publish',
@value = 'true'
GO
```

To disable publishing, set the @value = 'false'. 
