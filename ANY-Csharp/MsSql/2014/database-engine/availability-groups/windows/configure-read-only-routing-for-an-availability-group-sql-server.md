---
title: "Configure Read-Only Routing for an Availability Group (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "10/27/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: high-availability
ms.topic: conceptual
helpviewer_keywords: 
  - "read-only routing"
  - "Availability Groups [SQL Server], readable secondary replicas"
  - "Availability Groups [SQL Server], read-only routing"
  - "readable secondary replicas"
  - "Availability Groups [SQL Server], client connectivity"
  - "Availability Groups [SQL Server], active secondary replicas"
ms.assetid: 7bd89ddd-0403-4930-a5eb-3c78718533d4
author: MashaMSFT
ms.author: mathoma
manager: craigg
---
# Configure Read-Only Routing for an Availability Group (SQL Server)
  To configure an AlwaysOn availability group to support read-only routing in [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)], you can use either [!INCLUDE[tsql](../../../includes/tsql-md.md)] or PowerShell. *Read-only routing* refers to the ability of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] to route qualifying read-only connection requests to an available AlwaysOn [readable secondary replica](active-secondaries-readable-secondary-replicas-always-on-availability-groups.md) (that is, a replica that is configured to allow read-only workloads when running under the secondary role). To support read-only routing, the availability group must possess an [availability group listener](../../listeners-client-connectivity-application-failover.md). Read-only clients must direct their connection requests to this listener, and the client's connection strings must specify the application intent as "read-only." That is, they must be *read-intent connection requests*.  
  
> [!NOTE]
>  For information about how to configure a readable secondary replica, see [Configure Read-Only Access on an Availability Replica &#40;SQL Server&#41;](configure-read-only-access-on-an-availability-replica-sql-server.md).

> [!NOTE]
>  Configuring read-only routing is not supported by [!INCLUDE[ssManStudioFull](../../../includes/ssmanstudiofull-md.md)].  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Prerequisites"></a> Prerequisites  
  
-   The availability group must possess an availability group listener. For more information, see [Create or Configure an Availability Group Listener &#40;SQL Server&#41;](create-or-configure-an-availability-group-listener-sql-server.md).  
  
-   One or more availability replicas must be configured to accept read-only in the secondary role (that is, to be [readable secondary replicas](active-secondaries-readable-secondary-replicas-always-on-availability-groups.md)(AlwaysOn%20Availability%20Groups\).md)). For more information, see [Configure Read-Only Access on an Availability Replica &#40;SQL Server&#41;](configure-read-only-access-on-an-availability-replica-sql-server.md).  
  
-   You must be connected to the server instance that hosts the current primary replica.  
  
###  <a name="RORReplicaProperties"></a> What Replica Properties Do you Need to Configure to Support Read-Only Routing?  
  
-   For each readable secondary replica that is to support read-only routing, you need to specify a *read-only routing URL*. This URL takes effect only when the local replica is running under the secondary role. The read-only routing URL must be specified on a replica-by-replica basis, as needed. Each read-only routing URL is used for routing read-intent connection requests to a specific readable secondary replica. Typically, every readable secondary replica is assigned a read-only routing URL.  
  
     For information about calculating the read-only routing URL for an availability replica, see [Calculating read_only_routing_url for AlwaysOn](https://blogs.msdn.com/b/mattn/archive/2012/04/25/calculating-read-only-routing-url-for-alwayson.aspx).  
  
-   For each availability replica that you want to support read-only routing when it is the primary replica, you need to specify a *read-only routing list*. A given read-only routing list takes effect only when the local replica is running under the primary role. This list must be specified on a replica-by-replica basis, as needed. Typically, each read-only routing list would contain every read-only routing URL, with the URL of the local replica at the end of the list.  
  
    > [!NOTE]  
    >  Read-intent connection requests are routed to the first available readable secondary on the read-only routing list of the current primary replica. There is no load balancing.  
  
> [!NOTE]  
>  For information about availability group listeners and more information about read-only routing, see [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../../listeners-client-connectivity-application-failover.md).  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
  
|Task|Permissions|  
|----------|-----------------|  
|To configure replicas when creating an availability group|Requires membership in the **sysadmin** fixed server role and either CREATE AVAILABILITY GROUP server permission, ALTER ANY AVAILABILITY GROUP permission, or CONTROL SERVER permission.|  
|To modify an availability replica|Requires ALTER AVAILABILITY GROUP permission on the availability group, CONTROL AVAILABILITY GROUP permission, ALTER ANY AVAILABILITY GROUP permission, or CONTROL SERVER permission.|  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 **To Configure read-only routing**  
  
> [!NOTE]  
>  For a code example, see [Example (Transact-SQL)](#TsqlExample), later in this section.  
  
1.  Connect to the server instance that hosts the primary replica.  
  
2.  If you are specifying a replica for a new availability group, use the [CREATE AVAILABILITY GROUP](/sql/t-sql/statements/create-availability-group-transact-sql)[!INCLUDE[tsql](../../../includes/tsql-md.md)] statement. If you are adding or modifying a replica for an existing availability group, use the [ALTER AVAILABILITY GROUP](/sql/t-sql/statements/alter-availability-group-transact-sql)[!INCLUDE[tsql](../../../includes/tsql-md.md)] statement.  
  
    -   To configure read-only routing for the secondary role, in the ADD REPLICA or MODIFY REPLICA WITH clause, specify the SECONDARY_ROLE option, as follows:  
  
         SECONDARY_ROLE **(** READ_ONLY_ROUTING_URL **='**TCP**://*`system-address`*:*`port`*')**  
  
         The parameters of the read-only routing URL are as follows:  
  
         *system-address*  
         Is a string, such as a system name, a fully qualified domain name, or an IP address, that unambiguously identifies the destination computer system.  
  
         *port*  
         Is a port number that is used by the Database Engine of the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] instance.  
  
         For example:   `SECONDARY_ROLE (READ_ONLY_ROUTING_URL = N'TCP://COMPUTER01.contoso.com:1433')`  
  
         In a MODIFY REPLICA clause the ALLOW_CONNECTIONS is optional if the replica is already configured to allow read-only connections.  
  
         For more information, see [Calculating read_only_routing_url for AlwaysOn](https://blogs.msdn.com/b/mattn/archive/2012/04/25/calculating-read-only-routing-url-for-alwayson.aspx).  
  
    -   To configure read-only routing for the primary role, in the ADD REPLICA or MODIFY REPLICA WITH clause, specify the PRIMARY_ROLE option, as follows:  
  
         PRIMARY_ROLE **(** READ_ONLY_ROUTING_LIST **=('*`server`*'** [ **,**...*n* ] **))**  
  
         where, *server* identifies a server instance that hosts a read-only secondary replica in the availability group.  
  
         For example:   `PRIMARY_ROLE (READ_ONLY_ROUTING_LIST=('Server1','Server2'))`  
  
        > [!NOTE]  
        >  You must set the read-only routing URL before configuring the read-only routing list.  
  
###  <a name="TsqlExample"></a> Example (Transact-SQL)  
 The following example modifies two availability replicas of an existing availability group, `AG1` to support read-only routing if one of these replicas currently owns the primary role. To identify the server instances that host the availability replica, this example specifies the instance names-`COMPUTER01` and `COMPUTER02`.  
  
```sql
ALTER AVAILABILITY GROUP [AG1]  
 MODIFY REPLICA ON  
N'COMPUTER01' WITH   
(SECONDARY_ROLE (ALLOW_CONNECTIONS = READ_ONLY));  
ALTER AVAILABILITY GROUP [AG1]  
 MODIFY REPLICA ON  
N'COMPUTER01' WITH   
(SECONDARY_ROLE (READ_ONLY_ROUTING_URL = N'TCP://COMPUTER01.contoso.com:1433'));  
  
ALTER AVAILABILITY GROUP [AG1]  
 MODIFY REPLICA ON  
N'COMPUTER02' WITH   
(SECONDARY_ROLE (ALLOW_CONNECTIONS = READ_ONLY));  
ALTER AVAILABILITY GROUP [AG1]  
 MODIFY REPLICA ON  
N'COMPUTER02' WITH   
(SECONDARY_ROLE (READ_ONLY_ROUTING_URL = N'TCP://COMPUTER02.contoso.com:1433'));  
  
ALTER AVAILABILITY GROUP [AG1]   
MODIFY REPLICA ON  
N'COMPUTER01' WITH   
(PRIMARY_ROLE (READ_ONLY_ROUTING_LIST=('COMPUTER02','COMPUTER01')));  
  
ALTER AVAILABILITY GROUP [AG1]   
MODIFY REPLICA ON  
N'COMPUTER02' WITH   
(PRIMARY_ROLE (READ_ONLY_ROUTING_LIST=('COMPUTER01','COMPUTER02')));  
GO
```  
  
##  <a name="PowerShellProcedure"></a> Using PowerShell  

### To Configure read-only routing
  
> [!NOTE]  
>  For a code example, see [Example (PowerShell)](#PSExample), later in this section.  
  
1.  Set default (`cd`) to the server instance that hosts the primary replica.  
  
2.  When adding an availability replica to an availability group, use the `New-SqlAvailabilityReplica` cmdlet. When modifying an existing availability replica, use the `Set-SqlAvailabilityReplica` cmdlet. The relevant parameters are as follows:  
  
    -   To configure read-only routing for the secondary role, specify the **ReadonlyRoutingConnectionUrl"*`url`*"** parameter.  
  
         where, *url* is the connectivity fully-qualified domain name (FQDN) and port to use when routing to the replica for read-only connections. For example:  `-ReadonlyRoutingConnectionUrl "TCP://DBSERVER8.manufacturing.Adventure-Works.com:7024"`  
  
         For more information, see [Calculating read_only_routing_url for AlwaysOn](https://blogs.msdn.com/b/mattn/archive/2012/04/25/calculating-read-only-routing-url-for-alwayson.aspx).  
  
    -   To configure connection access for the primary role, specify **ReadonlyRoutingList"*`server`*"** [ **,**...*n* ], where *server* identifies a server instance that hosts a read-only secondary replica in the availability group. For example:  `-ReadOnlyRoutingList "SecondaryServer","PrimaryServer"`  
  
        > [!NOTE]  
        >  You must set the read-only routing URL of a replica before configuring its read-only routing list.  
  
    > [!NOTE]  
    >  To view the syntax of a cmdlet, use the `Get-Help` cmdlet in the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] PowerShell environment. For more information, see [Get Help SQL Server PowerShell](../../../powershell/sql-server-powershell.md).  
  
To set up and use the SQL Server PowerShell provider, see [SQL Server PowerShell Provider](../../../powershell/sql-server-powershell-provider.md) and [Get Help SQL Server PowerShell](../../../powershell/sql-server-powershell.md).
  
###  <a name="PSExample"></a> Example (PowerShell)  
 The following example configures the primary replica and one secondary replica in an availability group for read-only routing. First, the example assigns a read-only routing URL to each replica. Then it sets the read-only routing list on the primary replica. Connections with the "ReadOnly" property set in the connection string will be redirected to the secondary replica. If this secondary replica is not readable (as determined by the `ConnectionModeInSecondaryRole` setting), the connection will be directed back to the primary replica.  
  
```powershell
Set-Location SQLSERVER:\SQL\PrimaryServer\default\AvailabilityGroups\MyAg  
$primaryReplica = Get-Item "AvailabilityReplicas\PrimaryServer"  
$secondaryReplica = Get-Item "AvailabilityReplicas\SecondaryServer"  
  
Set-SqlAvailabilityReplica -ReadOnlyRoutingConnectionUrl "TCP://PrimaryServer.domain.com:1433" -InputObject $primaryReplica  
Set-SqlAvailabilityReplica -ReadOnlyRoutingConnectionUrl "TCP://SecondaryServer.domain.com:1433" -InputObject $secondaryReplica  
Set-SqlAvailabilityReplica -ReadOnlyRoutingList "SecondaryServer","PrimaryServer" -InputObject $primaryReplica  
```  
  
##  <a name="FollowUp"></a> Follow Up: After Configuring Read-Only Routing  
 Once the current primary replica and the readable secondary replicas are configured to support read-only routing in both roles, the readable secondary replicas can receive read read-intent connection requests from clients that connect via the availability group listener.  
  
> [!TIP]  
>  When using the [bcp Utility](../../../tools/bcp-utility.md) or [sqlcmd Utility](../../../tools/sqlcmd-utility.md), you can specify read-only access to any secondary replica that is enabled for read-only access by specifying the `-K ReadOnly` switch.  
  
###  <a name="ConnStringReqsRecs"></a> Requirements and Recommendations for Client Connection-Strings  
 For a client application to use read-only routing, its connection string must satisfy the following requirements:  
  
-   Use the TCP protocol.  
  
-   Set the application intent attribute/property to readonly.  
  
-   Reference the listener of an availability group that is configured to support read-only routing.  
  
-   Reference a database in that availability group.  
  
 In addition, we recommend that connection strings enable multi-subnet failover, which supports a parallel client thread for each replica on each subnet. This minimizes client reconnection time after a failover.  
  
 The syntax for a connection string depends on the SQL Server provider an application is using. The following example connection string for the .NET Framework Data Provider 4.0.2 for SQL Server illustrates the parts of a connection string that are required and recommended to work for read-only routing.  
  
```  
Server=tcp:MyAgListener,1433;Database=Db1;IntegratedSecurity=SSPI;ApplicationIntent=ReadOnly;MultiSubnetFailover=True  
```  
  
 For more information about read-only application intent and read-only routing, see [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../../listeners-client-connectivity-application-failover.md).  
  
### If Read-Only Routing is Not Working Correctly  
 For information about troubleshooting a read-only routing configuration, see [Read-Only Routing is Not Working Correctly](troubleshoot-always-on-availability-groups-configuration-sql-server.md).  
  
##  <a name="RelatedTasks"></a> Related Tasks  

### To view read-only routing configurations
  
-   [sys.availability_read_only_routing_lists &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-availability-read-only-routing-lists-transact-sql)  
  
-   [sys.availability_replicas &#40;Transact-SQL&#41;](/sql/relational-databases/system-catalog-views/sys-availability-replicas-transact-sql) (**read_only_routing_url** column)  
  
### To configure client connection access
  
-   [Create or Configure an Availability Group Listener &#40;SQL Server&#41;](create-or-configure-an-availability-group-listener-sql-server.md)  
  
-   [Configure Read-Only Access on an Availability Replica &#40;SQL Server&#41;](configure-read-only-access-on-an-availability-replica-sql-server.md)  
  
### To use connection strings in applications
  
-   [SQL Server Native Client Support for High Availability, Disaster Recovery](../../../relational-databases/native-client/features/sql-server-native-client-support-for-high-availability-disaster-recovery.md)  
  
-   [Using Connection String Keywords with SQL Server Native Client](../../../relational-databases/native-client/applications/using-connection-string-keywords-with-sql-server-native-client.md)  
  
##  <a name="RelatedContent"></a> Related Content  
  
-   **Blogs:**  
  
     [Calculating read_only_routing_url for AlwaysOn](https://blogs.msdn.com/b/mattn/archive/2012/04/25/calculating-read-only-routing-url-for-alwayson.aspx)  
  
     [SQL Server AlwaysOn Team Blogs: The official SQL Server AlwaysOn Team Blog](https://blogs.msdn.com/b/sqlalwayson/)  
  
     [CSS SQL Server Engineers Blogs](https://blogs.msdn.com/b/psssql/)  
  
-   **White papers:**  
  
     [Microsoft White Papers for SQL Server 2012](https://msdn.microsoft.com/library/hh403491.aspx)  
  
     [SQL Server Customer Advisory Team Whitepapers](http://sqlcat.com/)  
  
## See Also  
 [Overview of AlwaysOn Availability Groups &#40;SQL Server&#41;](overview-of-always-on-availability-groups-sql-server.md)   
 [Overview of AlwaysOn Availability Groups &#40;SQL Server&#41;](overview-of-always-on-availability-groups-sql-server.md)   
 [Active Secondaries: Readable Secondary Replicas (AlwaysOn Availability Groups)](active-secondaries-readable-secondary-replicas-always-on-availability-groups.md)   
 [About Client Connection Access to Availability Replicas &#40;SQL Server&#41;](about-client-connection-access-to-availability-replicas-sql-server.md)   
 [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../../listeners-client-connectivity-application-failover.md)  
