---
Name: File_GetLastWriteTimeUtc
---

# File_GetLastWriteTimeUtc

`File_GetLastWriteTimeUtc` returns the date and time, in coordinated universal time (UTC), that the specified file or directory was last written to.

```csharp
File_GetLastWriteTimeUtc (
	@path NVARCHAR (MAX))
RETURNS DATETIME
```

## Parameters

 - **path**: The file or directory for which to obtain write date and time information.

## Returns

A DateTime object set to the date and time that the specified file or directory was last written to. This value is expressed in UTC time.

## Example

```csharp
SELECT SQLNET::File_GetLastWriteTimeUtc('C:\Temp\MyTest.txt')
```

