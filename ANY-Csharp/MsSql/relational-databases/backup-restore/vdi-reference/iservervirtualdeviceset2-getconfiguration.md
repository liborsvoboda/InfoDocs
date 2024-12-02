---
title: IServerVirtualDeviceSet2::GetConfiguration
titlesuffix: SQL Server VDI reference
description: This article provides reference for the IServerVirtualDeviceSet2::GetConfiguration command.
ms.date: 08/30/2019
ms.prod: sql
ms.prod_service: backup-restore
ms.technology: backup-restore
ms.topic: reference
author: mashamsft
ms.author: mathoma
---

# IServerVirtualDeviceSet2::GetConfiguration (VDI)

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

The **GetConfiguration** function obtains the configuration requested by the client.

## Syntax

```c
HRESULT IServerVirtualDeviceSet2::GetConfiguration (
   VDConfig*   pCfg
);
```

## Parameters

*pCfg*
This is the configuration specified by the client using IClientVirtualDeviceSet2::Create.

## Return Value

Returns an *HRESULT* indicating success or failure of the method call. A value of NOERROR indicates that the method call was successful. A non-zero value indicates that an error has occurred.

## Remarks

The server is expected to inspect and respond to the settings provided by the client. For more information, see Configuration. The server can use SignalAbort if it determines that it cannot operate correctly with the provided configuration.

## Next steps

For more information, see the [SQL Server virtual device interface reference overview](reference-virtual-device-interface.md).