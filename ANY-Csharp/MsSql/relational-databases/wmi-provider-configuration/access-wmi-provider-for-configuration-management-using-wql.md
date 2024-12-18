---
title: "Use WQL to access the WMI Provider"
ms.custom: seo-lt-2019
ms.date: "03/14/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: wmi
ms.topic: "reference"
helpviewer_keywords: 
  - "query language [WMI]"
  - "WMI Query Language [WMI]"
  - "WQL [WMI]"
  - "WMI Provider for Configuration Management, WQL"
ms.assetid: 26499530-d93b-452b-bbe4-217ef1d11e68
author: "CarlRabeler"
ms.author: "carlrab"
---
# Access WMI Provider for Configuration Management using WQL
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]
  This section describes how to execute [!INCLUDE[msCoName](../../includes/msconame-md.md)] Windows Management Instrumentation Query Language (WQL) statements against the WMI Provider for Computer Management.  
  
 The example uses a WQL editor, WBEMtest.exe, to run WQL queries against the WMI Provider to enumerate [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] services, network protocols, and aliases.  
  
### Querying services using WBEMtest  
  
1.  From the **Start** menu, click **Run**, and then enter **WBEMtest**.  
  
2.  The WBEMtest.exe dialog appears. Click **Connect**.  
  
3.  In the first text field, type the WMI Provider for Computer Management namespace: root\Microsoft\SqlServer\ComputerManagement11. Click **Connect**.  
  
4.  Click **Query**. Type a query that returns the current services running on the local computer: **SELECT \* FROM SqlService.** Click **Apply**.  
  
5.  Further refine the query by adding **WHERE ServiceName = "MSSQLSERVER"**.  
  
  
