---
title: "sys.dm_pdw_resource_waits (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "11/26/2019"
ms.prod: sql
ms.technology: data-warehouse
ms.reviewer: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: a43ce9a2-5261-41e3-97f0-555ba05ebed9
author: ronortloff
ms.author: rortloff
monikerRange: ">= aps-pdw-2016 || = azure-sqldw-latest || = sqlallproducts-allversions"
---
# sys.dm_pdw_resource_waits (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md](../../includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Displays wait information for all resource types in [!INCLUDE[ssSDW](../../includes/sssdw-md.md)].  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|wait_id|**bigint**|Position of the request in the waiting list.|0-based ordinal. This is not unique across all wait entries.|  
|session_id|**nvarchar(32)**|ID of the session in which the wait state occurred.|See session_id in [sys.dm_pdw_exec_sessions &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys-dm-pdw-exec-sessions-transact-sql.md).|  
|type|**nvarchar(255)**|Type of wait this entry represents.|Possible values:<br /><br /> Connection<br /><br /> Local Queries Concurrency<br /><br /> Distributed Queries Concurrency<br /><br /> DMS Concurrency<br /><br /> Backup Concurrency|  
|object_type|**nvarchar(255)**|Type of object that is affected by the wait.|Possible values:<br /><br /> **OBJECT**<br /><br /> **DATABASE**<br /><br /> **SYSTEM**<br /><br /> **SCHEMA**<br /><br /> **APPLICATION**|  
|object_name|**nvarchar(386)**|Name or GUID of the specified object that was affected by the wait.|Tables and views are displayed with three-part names.<br /><br /> Indexes and statistics are displayed with four-part names.<br /><br /> Names, principals, and databases are string names.|  
|request_id|**nvarchar(32)**|ID of the request on which the wait state occurred.|QID identifier of the request.<br /><br /> GUID identifier for load requests.|  
|request_time|**datetime**|Time at which the lock or resource was requested.||  
|acquire_time|**datetime**|Time at which the lock or resource was acquired.||  
|state|**nvarchar(50)**|State of the wait state.|[!INCLUDE[ssInfoNA](../../includes/ssinfona-md.md)]|  
|priority|**int**|Priority of the waiting item.|[!INCLUDE[ssInfoNA](../../includes/ssinfona-md.md)]|  
|concurrency_slots_used|**int**|Internal|See the [Monitor resource waits](#monitor-resource-waits) below|  
|resource_class|**nvarchar(20)**|Internal |See the [Monitor resource waits](#monitor-resource-waits) below|  
  
## Monitor resource waits 
With the introduction of [workload groups](https://docs.microsoft.com/azure/sql-data-warehouse/sql-data-warehouse-workload-isolation), concurrency slots are no longer applicable.  Use the below query and the `resources_requested` column to understand the resources needed to execute the request.

```sql
select rw.wait_id
      ,rw.session_id
      ,rw.type
      ,rw.object_type
      ,rw.object_name
      ,rw.request_id
      ,rw.request_time
      ,rw.acquire_time
      ,rw.state
      ,resources_requested = s.effective_request_min_resource_grant_percent
      ,r.group_name
  from sys.dm_workload_management_workload_groups_stats s
  join sys.dm_pdw_exec_requests r on r.group_name = s.name collate SQL_Latin1_General_CP1_CI_AS
  join sys.dm_pdw_resource_waits rw on rw.request_id = r.request_id
```

## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sql-and-parallel-data-warehouse-dynamic-management-views.md)  
  
  
