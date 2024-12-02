---
title: IClientVirtualDeviceSet2::GetConfiguration
titlesuffix: SQL Server VDI reference
description: This article provides reference for the IClientVirtualDeviceSet2::GetConfiguration command.
ms.date: 08/30/2019
ms.prod: sql
ms.prod_service: backup-restore
ms.technology: backup-restore
ms.topic: reference
author: mashamsft
ms.author: mathoma
---

# IClientVirtualDeviceSet2::GetConfiguration (VDI)

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

The **GetConfiguration** function is used to wait for the server to configure the virtual device set.

## Syntax

```c
HRESULT IClientVirtualDeviceSet2::GetConfiguration (
   DWORD         dwTimeOut,
   VDConfig*      pCfg
);
```

## Parameters

*DwTimeOut*
This is the time-out in milliseconds. Use INFINITE to prevent time-out.

*pCfg*
Upon successful execution, this contains the configuration selected by the server. For more information, see Configuration.

## Return Value

|Return Value | Explanation |
|---|---|
| NOERROR | The configuration was returned. |
| VD_E_ABORT | SignalAbort was invoked. |
| VD_E_TIMEOUT | The function timed out. |

## Remarks

This function blocks in an Alertable state. After successful invocation, the devices in the virtual device set may be opened.

## Next steps

For more information, see the [SQL Server virtual device interface reference overview](reference-virtual-device-interface.md).