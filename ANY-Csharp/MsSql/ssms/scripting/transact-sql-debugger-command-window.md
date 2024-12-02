---
title: Command Window
titleSuffix: T-SQL debugger
ms.prod: sql
ms.technology: scripting
ms.topic: conceptual
helpviewer_keywords: 
  - "Command Window [Transact-SQL]"
ms.assetid: e567ebf9-0793-451b-92c7-26193a02d9da
author: markingmyname
ms.author: maghan
ms.reviewer: ""
ms.custom: seo-lt-2019
ms.date: 12/04/2019
monikerRange: ">=aps-pdw-2016||=azuresqldb-current||=azure-sqldw-latest||>=sql-server-2016||=sqlallproducts-allversions||>=sql-server-linux-2017||=azuresqldb-mi-current"
---

# Transact-SQL Debugger - Command Window

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

Use the **CommandWindow** to run commands, such as debug and edit commands, against the code in the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)] Query Editor window that is currently being debugged. You must be in debug mode to use the **Command Window**. The [!INCLUDE[tsql](../../includes/tsql-md.md)] debugger supports many of the commands that are also supported in the [!INCLUDE[msCoName](../../includes/msconame-md.md)] [!INCLUDE[vsprvs](../../includes/vsprvs-md.md)] **Command** window. For more information, see [Visual Studio Command Window](https://go.microsoft.com/fwlink/?LinkId=112007).  

[!INCLUDE[ssms-old-versions](../../includes/ssms-old-versions.md)]

## Task List

**To access the Command Window**

- On the **Debug** menu, click **Start Debugging**.

**To print the value of a variable**

- In the **CommandWindow**, type **Debug.Print \<VariableName>**, and then press ENTER.

**To list information about the current thread**

- In the **CommandWindow**, type **Debug.ListThread**, and then press ENTER.

**To add a variable to the QuickWatch window**

- In the **CommandWindow**, type **Debug.QuickWatch \<VariableName>**, and then press ENTER.

## See Also

[Transact-SQL Debugger](../../relational-databases/scripting/transact-sql-debugger.md)
