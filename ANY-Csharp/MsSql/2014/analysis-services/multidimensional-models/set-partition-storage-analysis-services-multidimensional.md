---
title: "Set Partition Storage (Analysis Services - Multidimensional) | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: "analysis-services"
ms.topic: conceptual
helpviewer_keywords: 
  - "low latency MOLAP"
  - "standard storage [Analysis Services]"
  - "hybrid OLAP"
  - "automatic MOLAP"
  - "relational OLAP"
  - "multidimensional OLAP"
  - "scheduled MOLAP [Analysis Services]"
  - "partitions [Analysis Services], storage"
  - "HOLAP"
  - "MOLAP"
  - "real time ROLAP"
  - "real time HOLAP"
  - "ROLAP"
  - "medium latency MOLAP"
ms.assetid: e525e708-f719-4905-a4cc-20f6a9a3edcd
author: minewiskan
ms.author: owend
manager: craigg
---
# Set Partition Storage (Analysis Services - Multidimensional)
  [!INCLUDE[msCoName](../../includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] provides several standard storage configurations for storage modes and caching options. These provide commonly used configurations for update notification, latency, and rebuilding data.  
  
 You can specify partition storage in the Partitions tab of the cube in [!INCLUDE[ssBIDevStudio](../../includes/ssbidevstudio-md.md)], or on the partition property page in [!INCLUDE[ssManStudioFull](../../includes/ssmanstudiofull-md.md)].  
  
## Guidelines for choosing a storage mode  
 For a large measure group, it's common practice to configure storage differently for different partitions. Consider the following guidelines:  
  
-   Use real-time ROLAP for current data that is being continuously updated.  
  
-   Use proactive caching with low latency or medium latency for partitions based on data sources that are being updated less frequently.  
  
-   Use automatic MOLAP for data sources of which users require high performance but can afford some latency of the data.  
  
-   Use scheduled MOLAP for data sources for which users need to be able to continuously access the data but see changes only periodically.  
  
-   Use MOLAP storage without proactive caching for partitions that are changing infrequently or not at all; for partitions for which users do not need to browse the most recent data; and if the data does not have to be continuously available to users during any necessary updates and processing.  
  
 These are general guidelines, and careful analysis and testing may be necessary to develop the best possible storage scheme for your data. You may also manually configure storage settings for a partition if none of the standard configurations meet your needs.  
  
## Storage Settings Descriptions  
  
|Standard Storage Setting|Description|  
|------------------------------|-----------------|  
|Real Time ROLAP|OLAP is in real time. Detail data and aggregations are stored in relational format. The server listens for notifications when data changes and all queries reflect the current state of the data (zero latency).<br /><br /> This setting would typically be used for a data source with very frequent and continuous updates when the very latest data is always required by users. Depending on the types of queries generated by client applications, this method is liable to give the slowest response times.|  
|Real Time HOLAP|OLAP is in real time. Detail data is stored in a relational format while aggregations are stored in a multidimensional format. The server listens for notifications when data changes and refreshes the multidimensional OLAP (MOLAP) aggregations as needed. No MOLAP cache is created. Whenever the data source is updated, the server switches to real-time relational OLAP (ROLAP) until the aggregations are refreshed. All queries reflect the current state of the data (zero latency).<br /><br /> This setting would typically be used for a data source with frequent and continuous updates (but not so frequent as to require real-time ROLAP) and users always require the latest data. This method normally provides better overall performance than ROLAP storage. Users can get MOLAP performance from this setting if the data source stays silent long enough.|  
|Low Latency MOLAP|Detail data and aggregations are stored in multidimensional format. The server listens for notifications of changes to the data and switches to real-time ROLAP while MOLAP objects are reprocessed in a cache. A silence interval of at least 10 seconds is required before updating the cache. There is an override interval of 10 minutes if the silence interval is not attained. Processing occurs automatically as data changes with a target latency of 30 minutes after the first change.<br /><br /> This setting would typically be used for a data source with frequent updates when query performance is somewhat more important than always providing the most current data. This setting automatically processes MOLAP objects whenever required after the latency interval. Performance is slower while the MOLAP objects are being reprocessed.|  
|Medium Latency MOLAP|Detail data and aggregations are stored in multidimensional format. The server listens for notifications of changes to the data and switches to real-time ROLAP while MOLAP objects are reprocessed in cache. A silence interval of at least 10 seconds is required before updating the cache. There is an override interval of 10 minutes if the silence interval is not attained. Processing occurs automatically as data changes with a target latency of four hours.<br /><br /> This setting is typically used for a data source with frequent (or less frequent) updates when query performance is more important than always providing the most current data. This setting automatically processes MOLAP objects whenever required after the latency interval. Performance is slower while the MOLAP objects are being reprocessed.|  
|Automatic MOLAP|Detail data and aggregations are stored in multidimensional format. The server listens for notifications but retains the current MOLAP cache while it builds a new one. The server never switches to real-time OLAP, and queries may be stale while the new cache is built.<br /><br /> A silence interval of at least 10 seconds is required before creating the new MOLAP cache. There is an override interval of 10 minutes if the silence interval is not attained. Processing occurs automatically as data changes with a target latency of two hours.<br /><br /> This setting is typically used for a data source when query performance is of key importance. This setting automatically processes MOLAP objects whenever required after the latency interval. Queries do not return the most recent data while the new cache is being built and processed.|  
|Scheduled MOLAP|Detail data and aggregations are stored in a multidimensional format. The server does not receive notifications when data changes. Processing occurs automatically every 24 hours.<br /><br /> This setting is typically used for a data source when only daily updates are required. Queries are always against data in the MOLAP cache, which is not discarded until a new cache is built and its objects are processed.|  
|MOLAP|Proactive caching is not enabled. Detail data and aggregations are stored in multidimensional format. The server does not receive notifications when data changes. Processing must either be scheduled or performed manually.<br /><br /> This setting is typically used for a data source in which periodic updates are unnecessary for the client applications but for which high performance is critical.<br /><br /> MOLAP storage without proactive caching provides the best possible performance if your applications do not require the most recent data. It does require downtime to process updated objects, although downtime can be minimized by updating and processing cubes on a staging server and using database synchronization to copy the updated and processed MOLAP objects to the production server.|  
  
## Custom Storage Options  
 Instead of using one of the standard storage settings, you can manually configure storage and proactive caching. Before you create custom storage settings, you may want to first click the **Standard settings** option and move the slider to the standard setting that most closely matches the configuration you want to use. Then, to create a custom configuration, click the **Custom settings** option and click **Options**.  
  
-   You can specify whether changes in a data source trigger updates to the cache. To allow for a tolerable level of churn, you can specify a minimum silence interval after updates to the data source. You can also specify a silence interval override that updates the cache after a specified period if the interval between changes to the data source never reaches the minimum.  
  
-   You can specify whether to drop the outdated cache when updates occur. If you select this option, then when the specified latency is exceeded, the server switches to real-time relational OLAP (ROLAP) while it updates the cache. If you do not select this option, the server continues to query the stale multidimensional OLAP (MOLAP) cache while it builds the new one.  
  
     You can specify the latency interval that must occur between changes and dropping an outdated cache. This is the amount of time users may continue browsing data in an outdated cache before it is dropped. If changes occur and the cache is still being updated or processed at the end of this interval, queries will be redirected to ROLAP.  
  
-   You can schedule forced updates of the cache if you want to periodically update the cached MOLAP objects regardless of changes to the data source. Real-time OLAP benefits vary with the size of your database and the latency period assigned by frequency of source data changes. You want users sending queries to a cache as often as possible, not to ROLAP.  
  
 If you select the **Apply settings to dimensions** check box, the same storage settings are applied to the dimensions related to the measure group. The dimension values are initially the same as the partition values.  
  
## See Also  
 [Partitions in Multidimensional Models](partitions-in-multidimensional-models.md)  
  
  