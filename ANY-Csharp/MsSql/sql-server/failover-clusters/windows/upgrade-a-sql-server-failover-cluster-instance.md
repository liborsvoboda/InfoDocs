---
title: "Upgrade a failover cluster instance"
description: "Steps to upgrade a SQL Server failover cluster instance using the installation media." 
ms.custom: "seo-lt-2019"
ms.date: "11/21/2019"
ms.prod: sql
ms.reviewer: ""
ms.technology: high-availability
ms.topic: conceptual
helpviewer_keywords: 
  - "upgrading failover clusters"
  - "clusters [SQL Server], upgrading"
  - "failover clustering [SQL Server], upgrading"
ms.assetid: daac41fe-7d0b-4f14-84c2-62952ad8cbfa
author: MashaMSFT
ms.author: mathoma
---
# Upgrade a SQL Server Failover Cluster Instance
[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]
  [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] supports upgrading a [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] failover cluster to a new version of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)], to a new [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] service pack or cumulative update, or when installing to a new Windows service pack or cumulative update  separately on all failover cluster nodes, with downtime limited to a single manual failover (or two manual failovers if failing back to the original primary).  
  
 Upgrading the Windows operating system of a failover cluster is not supported for operating systems before [!INCLUDE[winblue-server-2-md](../../../includes/winblue-server-2-md.md)]. To upgrade a cluster node running on [!INCLUDE[winblue-server-2-md](../../../includes/winblue-server-2-md.md)] or above, see [Perform a rolling upgrade or update](#perform-a-rolling-upgrade-or-update).  
  
 Support details are as follows:  
  
-   [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] upgrade is supported both through the user interface and from the command prompt. You can run upgrade from the command prompt on each failover cluster node, or by using the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup UI  to upgrade each cluster node.  For more information, see [Upgrade a SQL Server Failover Cluster Instance &#40;Setup&#41;](../../../sql-server/failover-clusters/windows/upgrade-a-sql-server-failover-cluster-instance-setup.md) and [Install SQL Server from the Command Prompt](../../../database-engine/install-windows/install-sql-server-2016-from-the-command-prompt.md).  
  
-   The following scenarios are not supported as part of a [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] upgrade:  
  
    -   You cannot upgrade from a stand-alone instance of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] to a failover cluster.  
  
    -   You cannot add features to a failover cluster. For example, you cannot add the [!INCLUDE[ssDE](../../../includes/ssde-md.md)] to an existing [!INCLUDE[ssASnoversion](../../../includes/ssasnoversion-md.md)]-only failover cluster.  
  
    -   You cannot downgrade a failover cluster node to a stand-alone instance.  
  
    -   Changing the edition of the failover cluster is limited to certain scenarios. For more information, see [Supported Version and Edition Upgrades](../../../database-engine/install-windows/supported-version-and-edition-upgrades.md).  
  
-   During the failover cluster upgrade, downtime is limited to failover time and the time that is required for upgrade scripts to run. If you follow the failover cluster rolling upgrade process below and meet all prerequisites on all nodes before you begin the upgrade process, your downtime is minimal. Upgrading [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] when memory-optimized tables are in use will take some extra time. For more information, see [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install-windows/plan-and-test-the-database-engine-upgrade-plan.md).  
  
## Prerequisites  
 Before you begin, review the following important information:  
  
-   [Supported Version and Edition Upgrades](../../../database-engine/install-windows/supported-version-and-edition-upgrades.md): Verify that you can upgrade to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)] from your version of the Windows operating system and version of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)]. For example, you cannot upgrade directly from a SQL Server 2005 failover clustering instance to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)] or upgrade a failover cluster running on [!INCLUDE[winxpsvr-md](../../../includes/winxpsvr-md.md)].  
  
-   [Choose a Database Engine Upgrade Method](../../../database-engine/install-windows/choose-a-database-engine-upgrade-method.md): Select the appropriate upgrade method and steps based on your review of supported version and edition upgrades and also based on other components installed in your environment to upgrade components in the correct order.  
  
-   [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install-windows/plan-and-test-the-database-engine-upgrade-plan.md): Review the release notes and known upgrade issues, the pre-upgrade checklist, and develop and test the upgrade plan.  
  
-   [Hardware and Software Requirements for Installing SQL Server](../../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md):  Review the software requirements for installing [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)]. If additional software is required, install it on each node before you begin the upgrade process to minimize any downtime.  
  
## Perform a rolling upgrade or update  
 To upgrade a [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] failover cluster to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)], use [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup to upgrade each failover cluster node, one at a time, starting with the passive nodes. As you upgrade each node, it is left out of the possible owners of the failover cluster. If there is an unexpected failover, the upgraded nodes do not participate in the failover until cluster resource group ownership is moved to an upgraded node by [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup.  
  
 By default, [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup automatically determines when to fail over to an upgraded node. This depends on the total number of nodes in the failover cluster instance and the number of nodes that have already been upgraded. When half of the nodes or more have already been upgraded, [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup causes a failover to an upgraded node when you perform upgrade on the next node. Upon failover to an upgraded node, the cluster group is moved to an upgraded node. All the upgraded nodes are put in the possible owners list and all the nodes that are not yet upgraded are removed from the possible owners list. As you upgrade each remaining node, it is added to the possible owners of the failover cluster.  
  
 This process results in downtime limited to one failover time and database upgrade script execution time during the whole failover cluster upgrade.  
  
 To control the failover behavior of cluster nodes during the upgrade process, run the upgrade operation at the command prompt and use the /FAILOVERCLUSTERROLLOWNERSHIP parameter. For more information, see [Install SQL Server from the Command Prompt](../../../database-engine/install-windows/install-sql-server-2016-from-the-command-prompt.md).  

 ## Upgrade with installation media 
  
1.  From the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] installation media for the edition that matches the edition you are upgrading, double-click setup.exe in the root folder. You may be asked to install the prerequisites, if they are not previously installed.  
  
2.  After prerequisites are installed, the Installation Wizard starts the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] Installation Center. To upgrade an existing instance of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)], select your instance.  
  
3.  If [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup support files are required, [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] setup installs them. If you are instructed to restart your computer, restart before you continue.  
  
4.  The System Configuration Checker runs a discovery operation on your computer. To continue, [!INCLUDE[clickOK](../../../includes/clickok-md.md)].  
  
5.  On the Product Key page, enter the PID key for the new version edition that matches the edition of the old product version. For example, to upgrade an Enterprise failover cluster, you must supply a PID key for [!INCLUDE[ssEnterprise](../../../includes/ssenterprise-md.md)]. Click **Next** to continue. Be aware that the PID key that you use for a failover cluster upgrade must be consistent across all failover cluster nodes in the same [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] instance.  
  
6.  On the License Terms page, read the license agreement, and then select the check box to accept the license terms and conditions. To help improve [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)], you can also enable the feature usage option and send reports to [!INCLUDE[msCoName](../../../includes/msconame-md.md)]. **Click Next to continue**. To end Setup, click **Cancel**.  
  
7.  On the Select Instance page, specify the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] instance to upgrade to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)]. **Click Next to continue**.  
  
8.  On the Feature Selection page, the features to upgrade are preselected. A description for each component group appears in the right pane after you select the feature name. Be aware that you cannot change the features to be upgraded, and you cannot add features during the upgrade operation. To add features to an upgraded instance of [!INCLUDE[ssSQL14](../../../includes/sssql14-md.md)] after the upgrade operation is complete, see [Add Features to an Instance of SQL Server 2016 &#40;Setup&#41;](../../../database-engine/install-windows/add-features-to-an-instance-of-sql-server-2016-setup.md).  
  
     The prerequisites for the selected features are displayed on the right-hand pane. SQL Server Setup will install the prerequisite that are not already installed during the installation step described later in this procedure. To save time, you should pre-install these prerequisites on each node.  
  
9. On the Instance Configuration page, fields are automatically populated from the old instance. You can choose to specify the new InstanceID value.  
  
     **Instance ID** - By default, the instance name is used as the Instance ID. This is used to identify installation directories and registry keys for your instance of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)]. This is the case for default instances and named instances. For a default instance, the instance name and instance ID would be MSSQLSERVER. To use a nondefault instance ID, select the **Instance ID** check box and provide a value. If you override the default value, you must specify the same Instance ID for the instance being upgraded on all the failover cluster nodes. The Instance ID for the upgraded instance must match across the nodes.  
  
     **Detected instances and features** - The grid shows instances of [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] that are on the computer where setup is running. **Click Next to continue**.  
  
10. The Disk Space Requirements page calculates the required disk space for the features that you specify, and compares requirements to the available disk space on the computer where Setup is running.  
  
11. On the Full-Text Search Upgrade page, specify the upgrade options for the databases being upgraded. For more information, see [Full-Text Search Upgrade Options](https://msdn.microsoft.com/library/16c9376b-5fbb-4495-a429-06a2493849c9).  
  
12. On the **Error Reporting** page, specify the information that you want to send to [!INCLUDE[msCoName](../../../includes/msconame-md.md)] that will help improve [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)]. By default, options for error reporting is enabled.  
  
13. The System Configuration Checker runs one more set of rules to validate your computer configuration with the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] features that you have specified, before the upgrade operation begins.  
  
14. The Cluster Upgrade Report page displays the list of nodes in the failover cluster instance and the instance version information for [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] components on each node. It displays the database script status and replication script status. In addition, it also displays informational messages on what will occur when you click **Next**. Depending on the number of failover cluster nodes that have already been upgraded and total number of nodes, setup displays the failover behavior that happens when you click **Next**. It also warns about potential unnecessary downtime if you have not installed the prerequisites already.   
  
15. The Ready to Upgrade page displays a tree view of installation options that were specified during Setup. To continue, click **Upgrade**. [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] Setup will first install the required prerequisites for the selected features followed by the feature installation.  
  
16. During upgrade, the Progress page provides status so that you can monitor the upgrade progress on the current node as Setup continues.  
  
17. After the upgrade of the current node, the Cluster Upgrade Report page displays an upgrade status information for all the failover cluster nodes, features on each failover cluster node, and their version information. Confirm the version information that is displayed and continue with the upgrade of the remaining nodes. If the failover to upgraded nodes occurred, this is also apparent on the status page. You can also check in the Windows Cluster administrator tool to confirm.  
  
18. After upgrade, the Complete page provides a link to the summary log file for the installation and other important notes. To complete the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] installation process, click **Close**.  
  
19. If you are instructed to restart the computer, do so now. It is important to read the message from the Installation Wizard when you have finished with Setup. For more information about Setup log files, see [View and Read SQL Server Setup Log Files](../../../database-engine/install-windows/view-and-read-sql-server-setup-log-files.md).  
  
20. To complete the upgrade process, repeat these steps on all the other nodes on the [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] failover cluster.  
  
## Upgrade a multi-subnet failover cluster  

Follow these steps to upgrade your SQL Server failover cluster instance in a multi-subnet environment. 
  
### To upgrade to a [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] multi-subnet failover Cluster (Existing [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] cluster is a non multi-subnet cluster).  
  
1.  Follow the steps above to upgrade your cluster.  
  
2.  Add a node on a different subnet using the AddNode Setup action and confirm the IP address resource dependency to OR on the **Cluster Network Configuration** page. For more information, see [Add or Remove Nodes in a SQL Server Failover Cluster &#40;Setup&#41;](../../../sql-server/failover-clusters/install/add-or-remove-nodes-in-a-sql-server-failover-cluster-setup.md).  
  
### To upgrade a multi-subnet cluster currently using Stretch V-Lan.  
  
1.  Follow the steps above to upgrade your cluster to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)].  
  
2.  Change the network settings to move the remote node to a different subnet.  
  
3.  Using the Windows Failover Cluster management tool, add a new IP address for the new subnet set the IP address resource dependency to OR.  
  
## Next Steps  
 After you upgrade to [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)], complete the following tasks:  
  
-   [Complete the Database Engine Upgrade](../../../database-engine/install-windows/complete-the-database-engine-upgrade.md)  
  
-   [Change the Database Compatibility Mode and Use the Query Store](../../../database-engine/install-windows/change-the-database-compatibility-mode-and-use-the-query-store.md)  
  
-   [Take Advantage of New SQL Server 2016 Features](https://msdn.microsoft.com/library/d8879659-8efa-4442-bcbb-91272647ae16)  
  

  
  
