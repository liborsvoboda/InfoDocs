---
title: "Regenerate custom procedures for schema changes (Transactional)"
description: Regenerate custom transactional stored procedures to reflect schema changes for Transactional Replication. 
ms.custom: seo-lt-2019
ms.date: "03/14/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: replication
ms.topic: conceptual
helpviewer_keywords: 
  - "custom procedures [SQL Server replication]"
  - "transactional replication, replicating schema changes"
  - "schemas [SQL Server replication], replicating changes"
ms.assetid: ccf68a13-e748-4455-8168-90e6d2868098
author: "MashaMSFT"
ms.author: "mathoma"
monikerRange: "=azuresqldb-mi-current||>=sql-server-2016||=sqlallproducts-allversions"
---
# Transactional Articles - Regenerate to Reflect Schema Changes
[!INCLUDE[appliesto-ss-asdbmi-xxxx-xxx-md](../../../includes/appliesto-ss-asdbmi-xxxx-xxx-md.md)]
  By default transactional replication makes all data changes at Subscribers through stored procedures that are generated by internal procedures for each table article in the publication. The three procedures (one each for inserts, updates, and deletes) are copied to the Subscriber and execute when an insert, update, or delete is replicated to the Subscriber. When a schema change is made to a table on a [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] Publisher, replication regenerates these procedures automatically by calling the same set of internal scripting procedures so that the new procedures match the new schema (replication of schema changes is not supported for Oracle Publishers).  
  
 It is also possible to specify custom procedures to replace one or more of the default procedures. The custom procedures should be changed if the schema change will affect the procedure. For example, if a procedure references a column that is dropped in a schema change, references to the column should be removed from the procedure. There are two ways for replication to propagate a new custom procedure to Subscribers:  
  
-   The first option is to use a custom scripting procedure to replace the defaults used by replication:  
  
    1.  When executing [sp_addarticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-addarticle-transact-sql.md), ensure the `@schema_option` 0x02 bit is to **true**.  
  
    2.  Execute [sp_register_custom_scripting &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-register-custom-scripting-transact-sql.md) and specify a value of 'insert', 'update', or 'delete' for the parameter `@type` and the name of the custom scripting procedure for the parameter `@value`.  
  
     The next time a schema change is made, replication calls this stored procedure to script out the definition for the new user defined custom stored procedure, and then propagates the procedure to each Subscriber.  
  
-   The second option is to use a script that contains a new custom procedure definition:  
  
    1.  When executing [sp_addarticle &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-addarticle-transact-sql.md), set the `@schema_option` 0x02 bit to **false** so replication does not automatically generate custom procedures at the Subscriber.  
  
    2.  Before each schema change, create a new script file and register the script with replication by executing [sp_register_custom_scripting &#40;Transact-SQL&#41;](../../../relational-databases/system-stored-procedures/sp-register-custom-scripting-transact-sql.md). Specify a value of 'custom_script' for the parameter `@type` and the path to the script on the Publisher for the parameter `@value`.  
  
     The next time a relevant schema change is made, this script executes on each Subscriber within the same transaction as the DDL command. After the schema change is made, the script is unregistered. You must re-register the script to have it executed after a subsequent schema change.  
  
## See Also  
 [Specify How Changes Are Propagated for Transactional Articles](../../../relational-databases/replication/transactional/transactional-articles-specify-how-changes-are-propagated.md)   
 [Make Schema Changes on Publication Databases](../../../relational-databases/replication/publish/make-schema-changes-on-publication-databases.md)  
  
  