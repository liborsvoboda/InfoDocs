---
title: "Execute T-SQL Statement Task | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: integration-services
ms.topic: conceptual
f1_keywords: 
  - "sql12.dts.designer.executetsqlstatementtask.f1"
helpviewer_keywords: 
  - "Transact-SQL statements, SSIS"
  - "statements [Integration Services]"
  - "Execute T-SQL Statement task [Integration Services]"
ms.assetid: 7e9086ca-d27e-46c0-bfad-d61333ebd55e
author: janinezhang
ms.author: janinez
manager: craigg
---
# Execute T-SQL Statement Task
  The Execute T-SQL Statement task runs Transact-SQL statements. For more information, see [Transact-SQL Reference &#40;Database Engine&#41;](/sql/t-sql/language-reference) and [Integration Services &#40;SSIS&#41; Queries](../integration-services-ssis-queries.md).  
  
 This task is similar to the Execute SQL task. However, the Execute T-SQL Statement task supports only the Transact-SQL version of the SQL language and you cannot use this task to run statements on servers that use other dialects of the SQL language. If you need to run parameterized queries, save the query results to variables, or use property expressions, you should use the Execute SQL task instead of the Execute T-SQL Statement task. For more information, see [Execute SQL Task](execute-sql-task.md).  
  
## Configuration of the Execute T-SQL Task  
 You can set properties through [!INCLUDE[ssIS](../../../includes/ssis-md.md)] Designer. This task is in the **Maintenance Plan Tasks** section of the **Toolbox** in [!INCLUDE[ssIS](../../../includes/ssis-md.md)] Designer.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../../includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Execute T-SQL Statement Task &#40;Maintenance Plan&#41;](../../relational-databases/maintenance-plans/execute-t-sql-statement-task-maintenance-plan.md)  
  
 For more information about how to set these properties in [!INCLUDE[ssIS](../../../includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Set the Properties of a Task or Container](../set-the-properties-of-a-task-or-container.md)  
  
## See Also  
 [Integration Services Tasks](integration-services-tasks.md)   
 [Control Flow](control-flow.md)   
 [MERGE in Integration Services Packages](merge-in-integration-services-packages.md)  
  
  
