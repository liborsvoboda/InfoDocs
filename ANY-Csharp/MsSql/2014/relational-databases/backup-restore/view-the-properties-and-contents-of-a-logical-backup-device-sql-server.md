---
title: "View the Properties and Contents of a Logical Backup Device (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: backup-restore
ms.topic: conceptual
helpviewer_keywords: 
  - "displaying backup content"
  - "viewing backup content"
  - "database backups [SQL Server], viewing content"
  - "backing up databases [SQL Server], viewing content"
  - "backing up databases [SQL Server], properties"
  - "displaying backup properties"
  - "backup devices [SQL Server], viewing information"
  - "viewing backup properties"
  - "database backups [SQL Server], properties"
ms.assetid: 3a309074-e816-454d-b6c3-fcfdde0cbf74
author: MikeRayMSFT
ms.author: mikeray
manager: craigg
---
# View the Properties and Contents of a Logical Backup Device (SQL Server)
  This topic describes how to view the properties and contents of a logical backup device in [!INCLUDE[ssCurrent](../../includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To view the properties and contents of a logical backup device, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
 For information about security, see [RESTORE LABELONLY &#40;Transact-SQL&#41;](/sql/t-sql/statements/restore-statements-labelonly-transact-sql).  
  
####  <a name="Permissions"></a> Permissions  
 In [!INCLUDE[ssKatmai](../../includes/sskatmai-md.md)] and later versions, obtaining information about a backup set or backup device requires CREATE DATABASE permission. For more information, see [GRANT Database Permissions &#40;Transact-SQL&#41;](/sql/t-sql/statements/grant-database-permissions-transact-sql).  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view the properties and contents of a logical backup device  
  
1.  After connecting to the appropriate instance of the [!INCLUDE[msCoName](../../includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion-md.md)], in Object Explorer, click the server name to expand the server tree.  
  
2.  Expand **Server Objects**, and expand **Backup Devices**.  
  
3.  Click the device and right-click **Properties**, which opens the **Backup Device** dialog box.  
  
4.  The **General** page displays the device name and destination, which is either a tape device or file path.  
  
5.  In the **Select a Page** pane, click **Media Contents**.  
  
6.  The right-hand pane displays in the following properties panels:  
  
    -   **Media**  
  
         Media sequence information (the media sequence number, the family sequence number, and the mirror identifier, if any) and the media creation date and time.  
  
    -   **Media set**  
  
         Media set information: the media set name and description, if any, and the number of families in the media set.  
  
7.  The **Backup sets** grid displays information about the contents of the media set.  
  
> [!NOTE]  
>  For more information, see [Media Contents Page](backup-device-media-contents-page.md).  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view the properties and contents of a logical backup device  
  
1.  Connect to the [!INCLUDE[ssDE](../../includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Use the [RESTORE LABELONLY](/sql/t-sql/statements/restore-statements-labelonly-transact-sql) statement. This example returns information about the `AdvWrks2008R2Backup` logical backup device.  
  
```sql  
USE AdventureWorks2012 ;  
RESTORE LABELONLY  
   FROM AdvWrks2008R2Backup ;  
GO  
  
```  
  
## See Also  
 [backupfilegroup &#40;Transact-SQL&#41;](/sql/relational-databases/system-tables/backupfilegroup-transact-sql)   
 [backupfile &#40;Transact-SQL&#41;](/sql/relational-databases/system-tables/backupfile-transact-sql)   
 [backupset &#40;Transact-SQL&#41;](/sql/relational-databases/system-tables/backupset-transact-sql)   
 [backupmediaset &#40;Transact-SQL&#41;](/sql/relational-databases/system-tables/backupmediaset-transact-sql)   
 [backupmediafamily &#40;Transact-SQL&#41;](/sql/relational-databases/system-tables/backupmediafamily-transact-sql)   
 [sp_addumpdevice &#40;Transact-SQL&#41;](/sql/relational-databases/system-stored-procedures/sp-addumpdevice-transact-sql)   
 [Backup Devices &#40;SQL Server&#41;](backup-devices-sql-server.md)  
  
  
