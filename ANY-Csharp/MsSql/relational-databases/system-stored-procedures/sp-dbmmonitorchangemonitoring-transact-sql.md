---
title: "sp_dbmmonitorchangemonitoring (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/14/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: system-objects
ms.topic: "language-reference"
f1_keywords: 
  - "sp_dbmmonitorchangemonitoring"
  - "sp_dbmmonitorchangemonitoring_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dbmmonitorchangemonitoring"
  - "database mirroring [SQL Server], monitoring"
ms.assetid: 17be755b-673d-4cd4-9544-6ecb4220bed3
author: "stevestein"
ms.author: "sstein"
---
# sp_dbmmonitorchangemonitoring (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the value of a database mirroring monitoring parameter.  
  
 ![Topic link icon](../../database-engine/configure-windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_dbmmonitorchangemonitoring parameter  
    , value   
```  
  
## Arguments  
 *parameter*  
 Specifies the identifier of the parameter to be changed. Currently, only the following parameter is available:  
  
 1 = Update period  
  
 The number of minutes between updates to the database mirroring status table. The default interval is 1 minute.  
  
 *value*  
 Specifies the new value for the parameter that is being changed.  
  
|Parameter|Description of value|  
|---------------|--------------------------|  
|1|An integer in the range of 1 to 120 that specifies a new update period in minutes.|  
  
## Return Code Values  
 None  
  
## Result Sets  
 None  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example changes the update period to 5 minutes.  
  
```  
EXEC sp_dbmmonitorchangemonitoring 1, 5 ;  
```  
  
## See Also  
 [Monitoring Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/monitoring-database-mirroring-sql-server.md)   
 [sp_dbmmonitoraddmonitoring &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dbmmonitoraddmonitoring-transact-sql.md)   
 [sp_dbmmonitordropmonitoring &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dbmmonitordropmonitoring-transact-sql.md)   
 [sp_dbmmonitorhelpmonitoring &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dbmmonitorhelpmonitoring-transact-sql.md)   
 [sp_dbmmonitorresults &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dbmmonitorresults-transact-sql.md)  
  
  
