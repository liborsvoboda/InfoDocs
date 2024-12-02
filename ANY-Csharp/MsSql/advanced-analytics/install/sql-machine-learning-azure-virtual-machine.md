---
title: Install on an Azure virtual machine
description: Run Python and R data science and machine learning solutions with SQL Server Machine Learning Services on a virtual machine in the Azure cloud.
ms.prod: sql
ms.technology: machine-learning
ms.date: 01/02/2020
ms.topic: conceptual
author: dphansen
ms.author: davidph
ms.custom: seo-lt-2019
monikerRange: ">=sql-server-2017||>=sql-server-linux-ver15||=sqlallproducts-allversions"
---
# Install SQL Server Machine Learning Services with Python and R on an Azure virtual machine
[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md-winonly](../../includes/appliesto-ss-xxxx-xxxx-xxx-md-winonly.md)]

Learn how to install Python and R with SQL Server Machine Learning Services on a virtual machine in Azure. This eliminates the installation and configuration tasks for Machine Learning Services.

Follow these steps:

1. Provision SQL Server virtual machine in Azure
1. Unblock the firewall
1. Enable ODBC callbacks for remote clients
1. Add network protocols

## Provision SQL Server virtual machine in Azure

For step by step instructions, see [How to provision a Windows SQL Server virtual machine in the Azure portal](https://docs.microsoft.com/azure/virtual-machines/windows/sql/virtual-machines-windows-portal-sql-server-provision). 

The [Configure SQL server settings](https://docs.microsoft.com/azure/virtual-machines/windows/sql/virtual-machines-windows-portal-sql-server-provision#3-configure-sql-server-settings) step is where you add Machine Learning Services to your instance.

<a name="firewall"></a>

## Unblock the firewall

By default, the firewall on the Azure virtual machine includes a rule that blocks network access for local user accounts.

You must disable this rule to ensure that you can access the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] instance from a remote data science client.  Otherwise, your machine learning code cannot execute in compute contexts that use the virtual machine's workspace.

To enable access from remote data science clients:

1. On the virtual machine, open Windows Firewall with Advanced Security.
2. Select **Outbound Rules**
3. Disable the following rule:
  
     `Block network access for R local user accounts in SQL Server instance MSSQLSERVER`
  
## Enable ODBC callbacks for remote clients

If you expect that clients calling the server will need to issue ODBC queries as part of their machine learning solutions, you must ensure that the Launchpad can make ODBC calls on behalf of the remote client. 

To do this, you must allow the SQL worker accounts that are used by Launchpad to log into the instance. For more information, see [Add SQLRUserGroup as a database user](../security/create-a-login-for-sqlrusergroup.md).

<a name="network"></a>

## Add network protocols

+ Enable Named Pipes
  
  [!INCLUDE[rsql_productname](../../includes/rsql-productname-md.md)] uses the Named Pipes protocol for connections between the client and server computers, and for some internal connections. If Named Pipes is not enabled, you must install and enable it on both the Azure virtual machine, and on any data science clients that connect to the server.
  
+ Enable TCP/IP

  TCP/IP is required for loopback connections. If you get the error "DBNETLIB; SQL Server does not exist or access denied", enable TCP/IP on the virtual machine that supports the instance.