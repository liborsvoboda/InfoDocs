---
title: "sys.key_constraints (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/15/2017"
ms.prod: sql
ms.prod_service: "database-engine, sql-database, sql-data-warehouse, pdw"
ms.reviewer: ""
ms.technology: system-objects
ms.topic: "language-reference"
f1_keywords: 
  - "sys.key_constraints"
  - "key_constraints"
  - "sys.key_constraints_TSQL"
  - "key_constraints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.key_constraints catalog view"
ms.assetid: 0f782d2f-7126-46ab-85b7-bcba44862231
author: stevestein
ms.author: sstein
monikerRange: ">=aps-pdw-2016||=azuresqldb-current||=azure-sqldw-latest||>=sql-server-2016||=sqlallproducts-allversions||>=sql-server-linux-2017||=azuresqldb-mi-current"
---
# sys.key_constraints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all-md](../../includes/tsql-appliesto-ss2008-all-md.md)]

  Contains a row for each object that is a primary key or unique constraint. Includes **sys.objects.type** PK and UQ.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\<Columns inherited from sys.objects>**||For a list of columns that this view inherits, see [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys-objects-transact-sql.md).|  
|**unique_index_id**|**int**|ID of the corresponding unique index in the parent object that was created to enforce this constraint.|  
|**is_system_named**|**bit**|1 = Name was generated by system.<br /><br /> 0 = Name was supplied by the user.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../relational-databases/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  
