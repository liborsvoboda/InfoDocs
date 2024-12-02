---
title: "Activity Monitor | Microsoft Docs"
ms.custom: ""
ms.date: "04/07/2019"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: performance
ms.topic: conceptual
helpviewer_keywords: 
  - "Activity Monitor [SQL Server]"
ms.assetid: 1e6c430d-3a2a-468e-a3d5-ef5459c36c15
author: julieMSFT
ms.author: jrasnick
---
# Activity Monitor
[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]
Activity Monitor displays information about [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] processes and how these processes affect the current instance of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)].  
  
Activity Monitor is a tabbed document window with the following expandable and collapsible panes: **Overview**, **Processes**, **Resource Waits**, **Data File I/O**, **Recent Expensive Queries**, and **Active Expensive Queries**. When any pane is expanded, Activity Monitor queries the instance for information. When a pane is collapsed, all querying activity stops for that pane. You can  expand one or more panes at the same time to view different kinds of activity on the instance.  
 
## Customize columns 
For columns included in the **Processes**, **Resource Waits**, **Data File I/O**, **Recent Expensive Queries**, and **Active Expensive Queries** panes, customize the display as follows:  
  
1.  To rearrange column order, click the column heading and drag it to another location in the heading ribbon.  
  
2.  To sort a column, click the column name.  
  
3.  To filter on one or more columns, click the drop-down arrow in the column heading, and then select a value.  

## More information  
   
|||  
|-|-|  
|Describes how to open Activity Monitor and how to set the Activity Monitor refresh interval.|[Open Activity Monitor &#40;SQL Server Management Studio&#41;](../../relational-databases/performance-monitor/open-activity-monitor-sql-server-management-studio.md)|  
|Links to topics for server performance and activity monitoring.|[Server Performance and Activity Monitoring](../../relational-databases/performance/server-performance-and-activity-monitoring.md)|  
  
  
