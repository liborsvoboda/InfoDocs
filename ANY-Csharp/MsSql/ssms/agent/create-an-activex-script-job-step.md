---
title: "Create an ActiveX Script Job Step"
ms.custom: seo-lt-2019
ms.date: 01/19/2017
ms.prod: sql
ms.prod_service: sql-tools
ms.technology: ssms
ms.topic: conceptual
helpviewer_keywords: 
  - "ActiveX scripting jobs [SQL Server]"
  - "job steps [Analysis Services]"
ms.assetid: e6c46c6b-2d61-4571-bc8e-a831cd6e6302
author: markingmyname
ms.author: maghan
ms.manager: jroth
ms.reviewer: ""
monikerRange: "= azuresqldb-mi-current || >= sql-server-2016 || = sqlallproducts-allversions"
---
# Create an ActiveX Script Job Step
[!INCLUDE[appliesto-ss-asdbmi-xxxx-xxx-md](../../includes/appliesto-ss-asdbmi-xxxx-xxx-md.md)]

> [!IMPORTANT]  
> On [Azure SQL Database Managed Instance](https://docs.microsoft.com/azure/sql-database/sql-database-managed-instance), most, but not all SQL Server Agent features are currently supported. See [Azure SQL Database Managed Instance T-SQL differences from SQL Server](https://docs.microsoft.com/azure/sql-database/sql-database-managed-instance-transact-sql-information#sql-server-agent) for details.

This topic describes how to create and define a [!INCLUDE[msCoName](../../includes/msconame_md.md)] [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent job step in [!INCLUDE[ssCurrent](../../includes/sscurrent-md.md)] that executes an ActiveX script by using [!INCLUDE[ssManStudioFull](../../includes/ssmanstudiofull-md.md)], [!INCLUDE[tsql](../../includes/tsql-md.md)], or SQL Server Management Objects.  

**Important** [!INCLUDEssNoteDepFutureAvoid]
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To create a Transact-SQL job step, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
[!INCLUDE[ssNoteDepFutureAvoid](../../includes/ssnotedepfutureavoid-md.md)]  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../../ssms/agent/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To create an ActiveX Script job step  
  
1.  In **Object Explorer,** connect to an instance of the [!INCLUDE[ssDEnoversion](../../includes/ssdenoversion_md.md)], and then expand that instance.  
  
2.  Expand **SQL Server Agent**, create a new job or right-click an existing job, and then click **Properties**. For more information on creating a job, see [Creating Jobs](../../ssms/agent/create-jobs.md).  
  
3.  In the **Job Properties** dialog, click the **Steps** page, and then click **New**.  
  
4.  In the **New Job Step** dialog, type a job **Step name**.  
  
5.  In the **Type** list, click **ActiveX Script**.  
  
6.  In the **Run as** list, select the proxy account with the credentials that the job will use.  
  
7.  Select the **Language** in which the script was written. Alternatively, click **Other** and then enter the name of the [!INCLUDE[msCoName](../../includes/msconame_md.md)] ActiveX scripting language in which the script will be written.  
  
8.  In the **Command** box, enter the script syntax that will be executed for the job step. Alternately, click **Open** and select a file containing the script syntax.  
  
9. Click the **Advanced** page to set the following job step options: what action to take if the job step succeeds or fails, how many times [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Agent should try to execute the job step, and how often retry attempts should be made.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To create an ActiveX Script job step  
  
1.  In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../includes/ssde_md.md)].  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- create an ActiveX Script job step written in VBScript that creates a restore point  
    USE msdb;  
    GO  
    EXEC sp_add_jobstep  
        @job_name = N'Weekly Sales Data Backup',  
        @step_name = N'Create a restore point',  
        @subsystem = N'ACTIVESCRIPTING',  
        @command = N'Const RESTORE_POINT = 20  
  
    strComputer = "."  
    Set objWMIService = GetObject("winmgmts:" _  
        & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\default")  
  
    Set objItem = objWMIService.Get("SystemRestore")  
    errResults = objItem.Restore(RESTORE_POINT)',   
        @retry_attempts = 5,  
        @retry_interval = 5 ;  
    GO  
    ```  
  
For more information, see [sp_add_jobstep (Transact-SQL)](https://msdn.microsoft.com/97900032-523d-49d6-9865-2734fba1c755).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To create an ActiveX Script job step**  
  
Use the **JobStep** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell.  
  
