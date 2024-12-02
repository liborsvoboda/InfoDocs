---
title: IClientVirtualDeviceSet2::SignalAbort
titlesuffix: SQL Server VDI reference
description: This article provides reference for the IClientVirtualDeviceSet2::SignalAbort command.
ms.date: 08/30/2019
ms.prod: sql
ms.prod_service: backup-restore
ms.technology: backup-restore
ms.topic: reference
author: mashamsft
ms.author: mathoma
---

# IClientVirtualDeviceSet2::SignalAbort (VDI)

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../../../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

The **SignalAbort** function is used to signal that an abnormal termination should occur.

## Syntax

```c
HRESULT IClientVirtualDeviceSet2::SignalAbort ();
```

## Return Value

Returns an *HRESULT* indicating success or failure of the method call. A value of NOERROR indicates that the method call was successful. A non-zero value indicates that an error has occurred.

## Remarks

At any time, the client may choose to abort the BACKUP or RESTORE operation. This routine signals that all operations should cease. The state of the overall virtual device set enters the Abort state. No further commands are returned on any devices. All uncompleted commands are automatically completed, returning ERROR_OPERATION_ABORTED as a completion code. The client should call IClientVirtualDeviceSet2::Close after it has safely terminated any outstanding use of buffers provided to the client. For more information, see Abnormal Termination.

## Next steps

For more information, see the [SQL Server virtual device interface reference overview](reference-virtual-device-interface.md).