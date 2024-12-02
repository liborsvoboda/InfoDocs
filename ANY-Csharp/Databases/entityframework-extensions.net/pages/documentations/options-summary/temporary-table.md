---
Name: Temporary Table
LastMod: 2023-03-01
---

# Temporary Table

## TemporaryTableBatchByTable
Gets or sets the number of batches a temporary table can contain. This option may create multiple temporary tables when the number of batches to execute exceeds the specified limit.


```csharp
context.BulkSaveChanges(options =>
{
   options.TemporaryTableBatchByTable = 0; // unlimited
});
```

[Try it in EF Core](https://dotnetfiddle.net/Md4oAe) | [Try it in EF6](https://dotnetfiddle.net/YjoyLn)

## TemporaryTableInsertBatchSize
Gets or sets the number of records to use in a batch when inserting in a temporary table. This number is recommended to be high.


```csharp
context.BulkSaveChanges(options =>
{
   options.TemporaryTableInsertBatchSize = 50000;
});
```

[Try it in EF Core](https://dotnetfiddle.net/uoGd8y) | [Try it in EF6](https://dotnetfiddle.net/0n66D0)

## TemporaryTableMinRecord
Gets or sets the minimum number of records to use a temporary table instead of using SQL derived table.


```csharp
context.BulkSaveChanges(options =>
{
   options.TemporaryTableMinRecord = 25;
});
```

[Try it in EF Core](https://dotnetfiddle.net/YgKiT1) | [Try it in EF6](https://dotnetfiddle.net/jkIJzF)

## TemporaryTableSchemaName
Gets or sets the schema name to use for the temporary table.


```csharp
context.BulkSaveChanges(options =>
{
   options.TemporaryTableSchemaName = "zzz";
});
```

[Try it in EF Core](https://dotnetfiddle.net/SWJi9t) | [Try it in EF6](https://dotnetfiddle.net/RjriRf)

## TemporaryTableUseTableLock
Gets or sets if the temporary table must be locked when inserting records into it.


```csharp
context.BulkSaveChanges(options =>
{
   options.TemporaryTableUseTableLock = true;
});

```

[Try it in EF Core](https://dotnetfiddle.net/PM2evv) | [Try it in EF6](https://dotnetfiddle.net/z2Pg1K) 

## UsePermanentTable
Gets or sets if the library should `create` and `drop` a permanent table instead of using a temporary table.


```csharp
context.BulkSaveChanges(options =>
{
   options.UsePermanentTable = true;
});
```

[Try it in EF Core](https://dotnetfiddle.net/XnYfP6) | [Try it in EF6](https://dotnetfiddle.net/B5qNg5)
