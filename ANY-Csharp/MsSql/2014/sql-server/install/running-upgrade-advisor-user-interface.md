---
title: "Running Upgrade Advisor (User Interface) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: "database-engine"
ms.topic: conceptual
helpviewer_keywords: 
  - "Upgrade Advisor Report Viewer"
  - "Upgrade Advisor [SQL Server], running"
  - "launching Upgrade Advisor"
  - "Upgrade Advisor Analysis Wizard"
  - "starting Upgrade Advisor"
  - "SQL Server Upgrade Advisor, running"
ms.assetid: 7f47c9b3-88d3-43d6-837e-f157b49a55ac
author: mashamsft
ms.author: mathoma
manager: craigg
---
# Running Upgrade Advisor (User Interface)
  You can run Upgrade Advisor to analyze local or remote components during upgrade planning. Upgrade Advisor produces a report for each component and instance that is analyzed.  
  
> [!IMPORTANT]  
>  Upgrade Advisor does not analyze remote instances of [!INCLUDE[ssRSnoversion](../../includes/ssrsnoversion-md.md)]. To analyze an instance of [!INCLUDE[ssRS](../../includes/ssrs.md)], Upgrade Advisor must be installed on the computer where [!INCLUDE[ssRS](../../includes/ssrs.md)] is installed.  
>   
>  To analyze [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Integration Services, you must have the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)][!INCLUDE[ssDE](../../includes/ssde-md.md)] installed and [!INCLUDE[ssISnoversion](../../includes/ssisnoversion-md.md)] installed on the same computer.  
  
## Running the Upgrade Advisor Analysis Wizard  
 Running the Upgrade Advisor Analysis Wizard has six steps:  
  
1.  Launch the wizard from the Upgrade Advisor start page.  
  
2.  Identify server and components to analyze.  
  
3.  Gather authentication information.  
  
4.  Gather additional parameters based on component type.  
  
5.  Analyze selected components.  
  
6.  Generate report of upgrade issues.  
  
 For more information about the Upgrade Advisor Analysis Wizard, see [How to: Run the Upgrade Advisor Analysis Wizard](../../../2014/sql-server/install/how-to-run-the-upgrade-advisor-analysis-wizard.md).  
  
 For specific information that is required for each step, see [Upgrade Advisor User Interface Reference](../../../2014/sql-server/install/upgrade-advisor-user-interface-reference.md).  
  
## Running the Upgrade Advisor Report Viewer  
 You use the Upgrade Advisor Report Viewer to view reports generated by the Upgrade Advisor Analysis Wizard. When the report is loaded, you can filter the components of the report by the following factors:  
  
-   All issues  
  
-   All upgrade issues  
  
-   Pre-upgrade issues  
  
-   All migration issues  
  
-   Resolved issues  
  
-   Unresolved issues  
  
 For step-by-step instructions for using the report viewer, see the following topics:  
  
-   [How to: View an Upgrade Advisor Report](../../../2014/sql-server/install/how-to-view-an-upgrade-advisor-report.md)  
  
-   [How to: Filter Reports](../../../2014/sql-server/install/how-to-filter-reports.md)  
  
-   [How to: Export Reports](../../../2014/sql-server/install/how-to-export-reports.md)  
  
## See Also  
 [How to: Run the Upgrade Advisor Analysis Wizard](../../../2014/sql-server/install/how-to-run-the-upgrade-advisor-analysis-wizard.md)   
 [Upgrade Advisor User Interface Reference](../../../2014/sql-server/install/upgrade-advisor-user-interface-reference.md)   
 [Resolving Upgrade Issues](../../../2014/sql-server/install/resolving-upgrade-issues.md)   
 [Working with Upgrade Advisor](../../../2014/sql-server/install/working-with-upgrade-advisor.md)  
  
  