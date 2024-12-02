---
title: Start, stop, pause, resume, restart SQL Server services
ms.custom: ""
ms.date: "03/05/2020"
ms.prod: sql
ms.prod_service: high-availability
ms.technology: configuration
ms.topic: conceptual
helpviewer_keywords: 
  - "SQL Server Configuration Manager, start and stop services"
  - "stopping SQL Server Agent"
  - "parameters [SQL Server], startup options"
  - "SQL Server, startup options"
  - "Database Engine [SQL Server], starting and stopping services"
  - "pausing SQL Server"
  - "PowerShell [SQL Server], starting and stopping services"
  - "single-user mode [SQL Server], starting in"
  - "SQL Server Management Studio [SQL Server], starting or stopping services"
  - "stopping SQL Server Browser service"
  - "starting SQL Server Agent"
  - "default instances [SQL Server], starting and stopping"
  - "SQL Server Agent, starting and stopping"
  - "command prompt [SQL Server], starting and stopping SQL Server services"
  - "continuing SQL Server"
  - "starting SQL Server Database Engine"
  - "net stop commands [SQL Server]"
  - "command prompt [SQL Server], SQL Browser service"
  - "Configuration Manager, start and stop services"
  - "resuming SQL Server"
  - "startup options [SQL Server]"
  - "named instances [SQL Server], starting and stopping"
  - "net start commands [SQL Server]"
  - "SQL Server, starting and stopping"
  - "stopping SQL Server"
  - "starting SQL Server Browser service"
  - "SQL Server Database Engine setting startup options"
  - "administering SQL Server, starting and stopping services"
  - "Management Studio [SQL Server], starting or stopping services"
ms.assetid: 32660a02-e5a1-411a-9e57-7066ca459df6
author: MikeRayMSFT
ms.author: mikeray
ms.reviewer: ""
---

# Start, stop, pause, resume, restart SQL Server services

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

This topic describes how to start, stop, pause, resume, or restart the SQL Server Database Engine, the SQL Server Agent, or the SQL Server Browser service by using SQL Server Configuration Manager, SQL Server Management Studio (SSMS), net commands from a command prompt, Transact-SQL, or PowerShell.

## Identify the service

SQL Server components are executable programs that run as a Windows service. Programs that run as a Windows service can continue to operate without displaying any activity on the computer screen.

### Database Engine service

The executable process that is the SQL Server Database Engine. The Database Engine can be the default instance (limit one per computer) or can be one of many named instances of the Database Engine. Use SQL Server Configuration Manager to determine which instances of the Database Engine are installed on the computer. The default instance (if you install it) is listed as **SQL Server (MSSQLSERVER)**. Named instances (if you install them) are listed as **SQL Server (<instance_name>)**. By default, SQL Server Express is installed as **SQL Server (SQLEXPRESS)**.

### SQL Server Agent service

A Windows service that executes scheduled administrative tasks, which are called jobs and alerts. For more information, see [SQL Server Agent](../../ssms/agent/sql-server-agent.md). SQL Server Agent is not available in every edition of SQL Server. For a list of features that are supported by the editions of SQL Server, see [Features Supported by the Editions of SQL Server 2019](../../sql-server/editions-and-components-of-sql-server-version-15.md).

### SQL Server Browser service

A Windows service that listens for incoming requests for SQL Server resources and provides clients information about SQL Server instances installed on the computer. A single instance of the SQL Server Browser service is used for all instances of SQL Server installed on the computer.

### Additional Information

- Pausing the Database Engine service prevents new users from connecting to the Database Engine, but users who are already connected can continue to work until their connections are broken. Use pause when you want to wait for users to complete work before you stop the service. This enables them to complete transactions that are in progress. *Resume* allows the Database Engine to accept new connections again. The SQL Server Agent service cannot be paused or resumed.  

- The SQL Server Configuration Manager and SSMS display the current status of services by using the following icons.  

    **SQL Server Configuration Manager**

  - A green arrow on the icon next to the service name indicates that the service is started.

  - A red square on the icon next to the service name indicates that the service is stopped.

  - Two vertical blue lines on the icon next to the service name indicate that the service is paused.

  - When restarting the Database Engine, a red square indicates that the service stopped, and then a green arrow indicates that the service started successfully.

    **SQL Server Management Studio (SSMS)**

  - A white arrow on a green circle icon next to the service name indicates that the service is started.  

  - A white square on a red circle icon next to the service name indicates that the service is stopped.  

  - Two vertical white lines on a blue circle icon next to the service name indicate that the service is paused.  

- When using SQL Server Configuration Manager or SSMS, only options that are possible are available. For example, if the service is already started, **Start** is unavailable.

- When running on a cluster, the SQL Server Database Engine service is best managed by using Cluster Administrator.  

### Security

#### Permissions

By default, only members of the local administrators group can start, stop, pause, resume, or restart a service. To grant non-administrators the ability to manage services, see [How to grant users rights to manage services in Windows Server 2003](https://support.microsoft.com/kb/325349). (The process is similar on other versions of Windows Server.)

Stopping the Database Engine by using the Transact-SQL **SHUTDOWN** command requires membership in the **sysadmin** or **serveradmin** fixed server roles, and is not transferable.

## SQL Server Configuration Manager

### Starting SQL Server Configuration Manager

On the **Start** menu, point to **All Programs**, point to **Microsoft SQL Server**, point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.

Because the SQL Server Configuration Manager is a snap-in for the Microsoft Management Console program and not a stand-alone program, SQL Server Configuration Manager does not appear as an application in newer versions of Windows. Here are the paths to the last four versions when Windows is installed on the C drive.  

|||
|-|-|
|SQL Server 2019|C:\Windows\SysWOW64\SQLServerManager15.msc|
|SQL Server 2017|C:\Windows\SysWOW64\SQLServerManager14.msc|
|SQL Server 2016|C:\Windows\SysWOW64\SQLServerManager13.msc|
|SQL Server 2014|C:\Windows\SysWOW64\SQLServerManager12.msc|
|SQL Server 2012|C:\Windows\SysWOW64\SQLServerManager11.msc|

#### <a name="configmande"></a> To start, stop, pause, resume, or restart an instance of the SQL Server Database Engine

1. Start SQL Server Configuration Manager, using the instructions above.

2. If the **User Account Control** dialog box appears, click **Yes**.

3. In SQL Server Configuration Manager, in the left pane, click **SQL Server Services**.

4. In the results pane, right-click **SQL Server (MSSQLServer)** or a named instance, and then click **Start**, **Stop**, **Pause**, **Resume**, or **Restart**.

5. Click **OK** to close the SQL Server Configuration Manager.

> [!NOTE]
> To start an instance of the SQL Server Database Engine with startup options, see [Configure Server Startup Options &#40;SQL Server Configuration Manager&#41;](../../database-engine/configure-windows/scm-services-configure-server-startup-options.md).  

#### To start, stop, pause, resume, or restart the SQL Server Browser or an instance of the SQL Server Agent

1. Start SQL Server Configuration Manager, using the instructions above.

2. If the **User Account Control** dialog box appears, click **Yes**.

3. In SQL Server Configuration Manager, in the left pane, click **SQL Server Services**.

4. In the results pane, right-click **SQL Server Browser**, or **SQL Server Agent (MSSQLServer)** or **SQL Server Agent (<instance_name>)** for a named instance, and then click **Start**, **Stop**, **Pause**, **Resume**, or **Restart**.  

5. Click **OK** to close the SQL Server Configuration Manager.  

> [!NOTE]
> SQL Server Agent cannot be paused.

## SQL Server Management Studio

### <a name="ssmsde"></a> To start, stop, pause, resume, or restart an instance of the SQL Server Database Engine

1. In Object Explorer, connect to the instance of the Database Engine, right-click the instance of the Database Engine you want to start, and then click **Start**, **Stop**, **Pause**, **Resume**, or **Restart**.

    Or, in Registered Servers, right-click the instance of the Database Engine you want to start, point to **Service Control**, and then click **Start**, **Stop**, **Pause**, **Resume**, or **Restart**.

2. If the **User Account Control** dialog box appears, click **Yes**.

3. When prompted if you want to act, click **Yes**.  

#### To start, stop, or restart an instance of the SQL Server Agent

1. In Object Explorer, connect to the instance of the Database Engine, right-click **SQL Server Agent**, and then click **Start**, **Stop**, or **Restart**.

2. If the **User Account Control** dialog box appears, click **Yes**.

3. When prompted if you want to act, click **Yes**.

## <a name="CommandPrompt"></a> Command Prompt Window using net Commands

The Microsoft SQL Server services can be started, stopped, or paused by using Microsoft Windows **net** commands.

### <a name="dbDefault"></a> To start the default instance of the Database Engine

- From a command prompt, enter one of the following commands:  
  
    **net start "SQL Server (MSSQLSERVER)"**

   -or-  

    **net start MSSQLSERVER**

### <a name="dbNamed"></a> To start a named instance of the Database Engine

- From a command prompt, enter one of the following commands. Replace *\<instancename>* with the name of the instance you want to manage.  
  
    **net start "SQL Server (** *instancename* **)"**
  
   -or-  
  
    **net start MSSQL$** *instancename*  
  
### <a name="dbStartup"></a> To start the Database Engine with startup options  

- Add startup options to the end of the **net start "SQL Server (MSSQLSERVER)"** statement, separated by a space. When started using **net start**, startup options use a slash (/) instead of a hyphen (-).  
  
    **net start "SQL Server (MSSQLSERVER)" /f /m**
  
   -or-  
  
    **net start MSSQLSERVER /f /m**
  
  > [!NOTE]
  >  For more information about startup options, see [Database Engine Service Startup Options](../../database-engine/configure-windows/database-engine-service-startup-options.md).  
  
###  <a name="agDefault"></a> To start the SQL Server Agent on the default instance of SQL Server
  
- From a command prompt, enter one of the following commands:  
  
    **net start "SQL Server Agent (MSSQLSERVER)"**
  
   -or-  
  
    **net start SQLSERVERAGENT**
  
###  <a name="agNamed"></a> To start the SQL Server Agent on a named instance of SQL Server  
  
- From a command prompt, enter one of the following commands. Replace *instancename* with the name of the instance you want to manage.  
  
    **net start "SQL Server Agent(** *instancename* **)"**
  
   -or-  
  
    **net start SQLAgent$** *instancename*  
  
 For information about how to run SQL Server Agent in verbose mode for troubleshooting, see [sqlagent90 Application](../../tools/sqlagent90-application.md).  

### <a name="Browser"></a> To start the SQL Server Browser  

- From a command prompt, enter one of the following commands:  
  
    **net start "SQL Server Browser"**
  
   -or-  
  
    **net start SQLBrowser**
  
### <a name="pauseStop"></a> To pause or stop services from the Command Prompt window  

- To pause or stop services, modify the commands in the following ways.  

- To pause a service, replace **net start** with **net pause**.  

- To stop a service, replace **net start** with use **net stop**.  

## <a name="TsqlProcedure"></a> Transact-SQL

The Database Engine can be stopped by using the **SHUTDOWN** statement.  

### To stop the Database Engine using Transact-SQL

- To wait for currently running Transact-SQL statements and stored procedures to finish, and then stop the Database Engine, execute the following statement.  
  
    ```sql
    SHUTDOWN;
    ```
  
- To stop the Database Engine immediately, execute the following statement.  
  
    ```sql
    SHUTDOWN WITH NOWAIT;
    ```

For more information about the **SHUTDOWN** statement, see [SHUTDOWN &#40;Transact-SQL&#41;](../../t-sql/language-elements/shutdown-transact-sql.md).  

## <a name="PowerShellProcedure"></a> PowerShell

### To start and stop Database Engine services

1. In a Command Prompt window, start SQL Server PowerShell by executing the following command.  

    ```cmd
    sqlps
    ```

2. At a SQL Server PowerShell command prompt, by executing the following command. Replace `computername` with the name of your computer.  

    ```powershell
    # Get a reference to the ManagedComputer class.
    CD SQLSERVER:\SQL\computername
    $Wmi = (get-item .).ManagedComputer
    ```

3. Identify the service that you want to stop or start. Pick one of the following lines. Replace `instancename` with the name of the named instance.

    - To get a reference to the default instance of the Database Engine.

        ```powershell
        $DfltInstance = $Wmi.Services['MSSQLSERVER']
        ```

    - To get a reference to a named instance of the Database Engine.

        ```powershell
        $DfltInstance = $Wmi.Services['MSSQL$instancename']
        ```

    - To get a reference to the SQL Server Agent service on the default instance of the Database Engine.  

        ```powershell
        $DfltInstance = $Wmi.Services['SQLSERVERAGENT']
        ```

    - To get a reference to the SQL Server Agent service on a named instance of the Database Engine.  

        ```powershell
        $DfltInstance = $Wmi.Services['SQLAGENT$instancename']
        ```

    - To get a reference to the SQL Server Browser service.

        ```powershell
        $DfltInstance = $Wmi.Services['SQLBROWSER']
        ```

4. Complete the example to start and then stop the selected service.
  
    ```powershell
    # Display the state of the service.
    $DfltInstance
    # Start the service.
    $DfltInstance.Start();
    # Wait until the service has time to start.
    # Refresh the cache.  
    $DfltInstance.Refresh();
    # Display the state of the service.
    $DfltInstance
    # Stop the service.
    $DfltInstance.Stop();
    # Wait until the service has time to stop.
    # Refresh the cache.
    $DfltInstance.Refresh();
    # Display the state of the service.
    $DfltInstance
    ```  

## Manage the SQL Server service on Linux

### To start, stop, or restart an instance of the SQL Server Database Engine

The following shows how to start, stop, restart, and check the status of the [SQL Server service on Linux](../../linux/sql-server-linux-troubleshooting-guide.md#manage-the-sql-server-service).

Check the status of the SQL Server service using this command:

   ```bash
   sudo systemctl status mssql-server
   ```

You can stop, start, or restart the SQL Server service as needed using the following commands:

   ```bash
   sudo systemctl stop mssql-server
   sudo systemctl start mssql-server
   sudo systemctl restart mssql-server
   ```

## Next steps

- [Overview of SQL Server Setup Documentation](https://msdn.microsoft.com/library/2620439a-f9d3-4b3c-9968-48f60b4bb9a5)
- [View and Read SQL Server Setup Log Files](../../database-engine/install-windows/view-and-read-sql-server-setup-log-files.md)
- [SQL Server Configuration Manager](../../relational-databases/sql-server-configuration-manager.md)
- [Start SQL Server with Minimal Configuration](../../database-engine/configure-windows/start-sql-server-with-minimal-configuration.md)
- [Features Supported by the Editions of SQL Server 2016](~/sql-server/editions-and-supported-features-for-sql-server-2016.md)