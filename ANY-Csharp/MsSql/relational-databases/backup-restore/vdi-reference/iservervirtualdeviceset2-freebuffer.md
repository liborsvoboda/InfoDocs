---
title: IServerVirtualDeviceSet2::FreeBuffer
titlesuffix: SQL Server VDI reference
description: This article provides reference for the IServerVirtualDeviceSet2::FreeBuffer command.
ms.date: 08/30/2019
ms.prod: sql
ms.prod_service: backup-restore
ms.technology: backup-restore
ms.topic: reference
author: mashamsft
ms.author: mathoma
---

# IServerVirtualDeviceSet2::FreeBuffer (VDI)

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

The **FreeBuffer** function obtains a shared memory buffer from the virtual device set.

## Syntax

```c
HRESULT IServerVirtualDeviceSet2::FreeBuffer (
   LPVOID   pBuffer,
   UINT32   dwSize
);
```

## Parameters

*pBuffer*
This returns a buffer returned by IServerVirtualDeviceSet2::AllocateBuffer.

*dwSize*
This is the size of the buffer in bytes. This does not include any prefix zone requested by the client. Any such zone is hidden from the server and there will be space available prior to when the buffer address is returned.

## Return Value

|Return Value | Explanation |
|---|---|
| NOERROR | The buffer is returned. |
| VD_E_INVALID | A parameter was invalid. |

## Next steps

For more information, see the [SQL Server virtual device interface reference overview](reference-virtual-device-interface.md).