---
title: "Change the Time-out Value for Data Mining Queries | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: "analysis-services"
ms.topic: conceptual
helpviewer_keywords: 
  - "time-out"
ms.assetid: f1add4bc-e882-440a-a98b-333cfa274c3e
author: minewiskan
ms.author: owend
manager: craigg
---
# Change the Time-out Value for Data Mining Queries
  When you build a lift chart or execute a prediction query, sometimes it can take a long time to generate all the data required for the prediction. To prevent the query from timing out, you can change the value that controls how long the [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] server waits to complete a query.  
  
 The default value is 15; however, if your models are complex or the data source is large, this might not be enough. If necessary, you can increase the value significantly, to enable enough time for processing. For example, if you set **Query Timeout** to 600, the query could continue to run for up to 10 minutes.  
  
 For more information about prediction queries, see [Data Mining Query Tasks and How-tos](data-mining-query-tasks-and-how-tos.md).  
  
### Configure the time-out value for data mining queries  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../includes/ssbidevstudiofull-md.md)], from the **Tools** menu, selection **Options**.  
  
2.  In the **Options** pane, expand **Business Intelligence Designers**.  
  
3.  Click the **Query Timeout** text box, and type a value for the number of seconds.  
  
## See Also  
 [Data Mining Query Tasks and How-tos](data-mining-query-tasks-and-how-tos.md)   
 [Data Mining Queries](data-mining-queries.md)  
  
  
