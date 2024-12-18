---
title: "Enable Initialization with a Backup for Transactional Publications (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: replication
ms.topic: conceptual
helpviewer_keywords: 
  - "manual subscription initialization [SQL Server replication]"
  - "subscriptions [SQL Server replication], initializing"
  - "initializing subscriptions [SQL Server replication], without snapshots"
  - "transactional replication, backup and restore"
  - "backups [SQL Server replication], transactional replication"
ms.assetid: 9df00514-aa9d-4ac6-9766-d226c9958175
author: MashaMSFT
ms.author: mathoma
manager: craigg
---
# Enable Initialization with a Backup for Transactional Publications (SQL Server Management Studio)
  To initialize a subscription to a transactional publication from a backup, enable the publication to allow initialization from a backup, and then specify backup information when creating the subscription:  
  
-   Enable the publication on the **Subscription Options** page of the **Publication Properties - \<Publication>** dialog box. For more information about accessing this dialog box, see [View and Modify Publication Properties](publish/view-and-modify-publication-properties.md).  
  
-   Specify backup information with the stored procedure [sp_addsubscription &#40;Transact-SQL&#41;](/sql/relational-databases/system-stored-procedures/sp-addsubscription-transact-sql). For more information about the parameters required by **sp_addsubscription**, see [Initialize a Transactional Subscription from a Backup &#40;Replication Transact-SQL Programming&#41;](initialize-a-transactional-subscription-from-a-backup.md).  
  
### To enable initialization with a backup  
  
1.  On the **Subscription Options** page of the **Publication Properties - \<Publication>** dialog box, select a value of **True** for the **Allow initialization from backup files** option.  
  
## See Also  
 [Initialize a Transactional Subscription Without a Snapshot](initialize-a-transactional-subscription-without-a-snapshot.md)  
  
  
