---
title: Download SQL Server PowerShell Module
ms.prod: sql
ms.technology: scripting
ms.topic: conceptual
author: markingmyname
ms.author: maghan
ms.reviewer: carlrab
ms.custom: ""
ms.date: 01/23/2020
---

# Install the SQL Server PowerShell module

[!INCLUDE[appliesto-ss-asdb-asdw-pdw-md](../includes/appliesto-ss-asdb-asdw-pdw-md.md)]

This article provides directions for installing the **SqlServer** PowerShell module.

## PowerShell modules for SQL Server

There are two SQL Server PowerShell modules:

- **SqlServer**: The SqlServer module includes new cmdlets to support the latest SQL features. The module also contains updated versions of the cmdlets in **SQLPS**. To download the SqlServer module, go to [SqlServer module in the PowerShell Gallery](https://www.powershellgallery.com/packages/Sqlserver).
- **SQLPS**: The SQLPS module is included with the SQL Server installation (for backward compatibility), but is no longer being updated. The most up-to-date PowerShell module is the **SqlServer** module.

> [!NOTE]
> The versions of the **SqlServer** module in the PowerShell Gallery support versioning and require PowerShell version 5.0 or greater.

For help topics, go to:

- [SqlServer](https://docs.microsoft.com/powershell/module/sqlserver) cmdlets.
- [SQLPS](https://docs.microsoft.com/powershell/module/sqlps) cmdlets.

## SQL Server Management Studio

SQL Server Management Studio (SSMS), beginning with version 17.0, doesn't install either PowerShell module. To use PowerShell with SSMS, install the **SqlServer** module from the [PowerShell Gallery](https://www.powershellgallery.com/packages/Sqlserver).

> [!NOTE]
> With version 16.x of SSMS, an earlier version of the **SqlServer** module is included with SQL Server Management Studio (SSMS)

## Azure Data Studio

Azure Data Studio doesn't install either PowerShell module. To use PowerShell with Azure Data Studio, install the **SqlServer** module from the [PowerShell Gallery](https://www.powershellgallery.com/packages/Sqlserver).

You can use the [PowerShell extension](../azure-data-studio/powershell-extension.md), which provides rich PowerShell editor support in Azure Data Studio.

## Installing or updating the SqlServer module

To install the **SqlServer** module from the PowerShell Gallery, start a [PowerShell](https://docs.microsoft.com/powershell/scripting/powershell-scripting) session as an administrator. You also start Azure Data Studio as an administrator and run these commands in a PowerShell session in the integrated terminal.

### Install the SqlServer module

Run the following command in your PowerShell session to install the SqlServer module for all users:

```powershell
Install-Module -Name SqlServer
```

### To view the versions of the SqlServer module installed

Execute the following command to see the versions of the SqlServer module that have been installed

```powershell
Get-Module SqlServer -ListAvailable
```

### Install for the current user rather than as an administrator

If you aren't able to run the PowerShell session as an administrator, install for the current user using the following command:

```powershell
Install-Module -Name SqlServer -Scope CurrentUser
```

### To overwrite a previous version of the SqlServer module

You can also use the `Install-Module` command to overwrite a previous version.

```powershell
Install-Module -Name SqlServer -AllowClobber
```

> [!Note]
> PowerShell always uses the latest module installed.

### Update the installed version of the SqlServer module

When updated versions of the **SqlServer** module are available, you can install the newer version using the following command:

```powershell
Install-Module -Name SqlServer -AllowClobber
```

You can use the `Update-Module` command to install the newest version of the SQLServer PowerShell module, but that doesn't remove older versions. It installs the newer version side by side to allow you the ability to experiment with the latest version, yet still have older modules installed.

However, if you don’t want to keep older module versions, then you can use the `Uninstall-Module` command to remove previous versions.

You can use the following command to list if more than one version is installed:

```powershell
Get-Module SqlServer -ListAvailable
```

You can use the following command to remove older versions:

```powershell
Uninstall-module -Name SQLServer -RequiredVersion "<version number>" -AllowClobber
```

### Troubleshooting

If you run into problems installing, see the [Install-Module documentation](https://www.powershellgallery.com/packages/PowerShellGet/2.2.1) and [Install-Module reference](https://docs.microsoft.com/powershell/module/powershellget/Install-Module).

## Using a specific version of the SqlServer module

To use a specific version of the module, import it with a specific version number similar to the following command:

```powershell
Import-Module SqlServer -Version 21.1.18080
```

## Pre-release versions of the SqlServer module

Pre-release (or "preview") versions of the SqlServer module may be available in the PowerShell Gallery.

> [!IMPORTANT]
> These versions may be discovered and installed by using the updated *Find-Module* and *Install-Module* cmdlets that are part of the [PowerShellGet](https://www.powershellgallery.com/packages/PowerShellGet) module by passing the *-AllowPrerelease* switch. To use these cmdlets, install the PowerShellGet module and then open a new session.

### To discover pre-release versions of the SqlServer module

To discover the pre-release (preview) versions of the SqlServer module, run the following command:

```powershell
Find-Module SqlServer -AllowPrerelease
```

### To install a specific pre-release version of the SqlServer module

To install a specific pre-release version of the module, install it with a specific version number.

You can try to use the following command:

```powershell
Install-Module SqlServer -RequiredVersion 21.1.18040-preview -AllowPrerelease
```

## SQL Server PowerShell on Linux

Visit [Manage SQL Server on Linux with PowerShell Core](../linux/sql-server-linux-manage-powershell-core.md) to see how to install SQL Server PowerShell on Linux.
