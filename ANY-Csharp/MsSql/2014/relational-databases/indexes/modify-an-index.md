---
title: "Modify an Index | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: table-view-index
ms.topic: conceptual
helpviewer_keywords: 
  - "indexes [SQL Server], modifying"
  - "modifying indexes"
  - "index changes [SQL Server]"
ms.assetid: 97e3110d-fde7-4f5d-9309-dc1697960aeb
author: MikeRayMSFT
ms.author: mikeray
manager: craigg
---
# Modify an Index
  This topic describes how to modify an index in [!INCLUDE[ssCurrent](../../includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../includes/tsql-md.md)].  
  
> [!IMPORTANT]  
>  Indexes created as the result of a PRIMARY KEY or UNIQUE constraint cannot be modified by using this method. Instead, the constraint must be modified.  
  
 **In This Topic**  
  
-   **To modify an index, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To modify an index  
  
1.  In Object Explorer, connect to an instance of the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)] and then expand that instance.  
  
2.  Expand **Databases**, expand the database in which the table belongs, and then expand **Tables**.  
  
3.  Expand the table in which the index belongs and then expand **Indexes**.  
  
4.  Right-click the index that you want to modify and then click **Properties**.  
  
5.  In the **Index Properties** dialog box, make the desired changes. For example, you can add or remove a column from the index key, or change the setting of an index option.  
  
#### To modify index columns  
  
1.  To add, remove, or change the position of an index column, select the **General** page from the **Index Properties** dialog box.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To modify an index  
  
1.  Connect to the [!INCLUDE[ssDE](../../includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**. This example drops and re-creates an existing index on the `ProductID` column of the `Production.WorkOrder` table by using the `DROP_EXISTING` option. The options `FILLFACTOR` and `PAD_INDEX` are also set.  
  
     [!code-sql[IndexDDL#CreateIndex4](../../snippets/tsql/SQL14/tsql/indexddl/transact-sql/createindex.sql#createindex4)]  
  
     The following example uses ALTER INDEX to set several options on the index `AK_SalesOrderHeader_SalesOrderNumber`.  
  
     [!code-sql[IndexDDL#AlterIndex4](../../snippets/tsql/SQL14/tsql/indexddl/transact-sql/alterindex.sql#alterindex4)]  
  
#### To modify index columns  
  
1.  To add, remove, or change the position of an index column, you must drop and recreate the index.  
  
## See Also  
 [CREATE INDEX &#40;Transact-SQL&#41;](/sql/t-sql/statements/create-index-transact-sql)   
 [ALTER INDEX &#40;Transact-SQL&#41;](/sql/t-sql/statements/alter-index-transact-sql)   
 [INDEXPROPERTY &#40;Transact-SQL&#41;](/sql/t-sql/functions/indexproperty-transact-sql)   
 [sys.indexes &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-indexes-transact-sql)   
 [sys.index_columns &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-index-columns-transact-sql)   
 [Set Index Options](set-index-options.md)   
 [Rename Indexes](indexes.md)  
  
  
