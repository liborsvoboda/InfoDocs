---
title: IServerVirtualDeviceSet2::EndConfiguration
titlesuffix: SQL Server VDI reference
description: This article provides reference for the IServerVirtualDeviceSet2::EndConfiguration command.
ms.date: 08/30/2019
ms.prod: sql
ms.prod_service: backup-restore
ms.technology: backup-restore
ms.topic: reference
author: mashamsft
ms.author: mathoma
---

# IServerVirtualDeviceSet2::EndConfiguration (VDI)

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

The **EndConfiguration** function informs the VDI that the server is finished with its configuration.

## Syntax

```c
HRESULT IServerVirtualDeviceSet2::EndConfiguration ();
```

## Return Value

|Return Value | Explanation |
|---|---|
| NOERROR | The function succeeded. |
| VD_E_ABORT | Abort was requested. |
| VD_E_PROTOCOL | The set is not in the Configurable state. |
| VD_E_MEMORY | The memory required via the 'RequestBuffers' calls could not be obtained. The set remains in the configurable state with no buffer space available. The server can either reduce its buffer requirements or abort the operation. |

## Next steps

For more information, see the [SQL Server virtual device interface reference overview](reference-virtual-device-interface.md).