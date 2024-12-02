---
Name: Transient Error
LastMod: 2023-03-01
---

# Transient Error

## RetryCount
Gets or sets the maximum number of operations retry when a transient error occurs.


```csharp
context.BulkSaveChanges(options => {
	options.RetryCount = 3;
});
```

[Try it in EF Core](https://dotnetfiddle.net/0FS0Zh) | [Try it in EF6](https://dotnetfiddle.net/BJJKFg) 

## RetryInterval
Gets or sets the interval to wait before retrying an operation when a transient error occurs.


```csharp
context.BulkSaveChanges(options => {
	options.RetryCount = 3;
	options.RetryInterval = new TimeSpan(100);
});

```

[Try it in EF Core](https://dotnetfiddle.net/QTQmKF) | [Try it in EF6](https://dotnetfiddle.net/wy84D5)
