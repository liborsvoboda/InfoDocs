---
title: "Use Performance Objects | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: ssms
ms.topic: conceptual
helpviewer_keywords: 
  - "SQL Server Agent, monitoring"
  - "SQL Server Agent service, monitoring"
  - "SQL Server Agent service, performance objects"
  - "SQL Server Agent, performance objects"
  - "performance objects [SQL Server Agent]"
  - "monitoring [SQL Server], SQL Server Agent"
  - "monitoring [SQL Server Agent]"
  - "performance counters [SQL Server], SQL Server Agent"
  - "counters [SQL Server], SQL Server Agent"
ms.assetid: 830b843a-6b2a-4620-a51b-98358e9fc54b
author: stevestein
ms.author: sstein
manager: craigg
---
# Use Performance Objects
  [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent includes performance objects and counters to monitor how the service is performing. These performance objects allow you to use Performance Monitor, a Windows tool, to identify what the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent service is doing in the background. For example, you can identify how many active jobs the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent service is currently running to identify those jobs that are blocked.  
  
 The [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent service performance objects and counters exist for each instance of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] that is installed on a computer. Performance objects are named according to the instance of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] that each object represents.  
  
 The following table shows how the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent service performance objects are named:  
  
|Instance type|Object name|  
|-------------------|-----------------|  
|Default|**SQLAgent:** *object*:*counter*|  
|Named|**SQLAgent$**<br /> ***instance_name* :** *object*:*counter*|  
  
 [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] includes the following performance objects for [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent.  
  
|Object name|Description|  
|-----------------|-----------------|  
|[SQLAgent:Jobs](../../relational-databases/performance-monitor/sql-server-agent-jobs-object.md)|Performance information about jobs that have been started, success rates, and current status|  
|[SQLAgent:JobSteps](../../relational-databases/performance-monitor/sql-server-agent-jobsteps-object.md)|Status information about job steps|  
|[SQLAgent:Alerts](../../relational-databases/performance-monitor/sql-server-agent-alerts-object.md)|Information about number of alerts and notifications|  
|[SQLAgent:Statistics](../../relational-databases/performance-monitor/sql-server-agent-statistics-object.md)|General performance information|  
  
## See Also  
 [Monitor and Tune for Performance](../../relational-databases/performance/monitor-and-tune-for-performance.md)   
 [Start System Monitor &#40;Windows&#41;](../../relational-databases/performance/start-system-monitor-windows.md)  
  
  
