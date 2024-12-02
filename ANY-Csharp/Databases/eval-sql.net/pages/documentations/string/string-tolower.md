---
Name: String_ToLower
---

# String_ToLower

`String_ToLower` returns a copy of the `source` string converted to lowercase.

```csharp
String_ToLower (
	@source NVARCHAR (MAX)
	)
RETURNS NVARCHAR (MAX)
```

## Parameters

  - **source**: The source string.

## Returns

A string in lowercase.

## Example

```csharp
SELECT SQLNET::String_ToLower('wAr aNd pEaCe')
```

# String_ToLower4k

It is equivalent to `String_ToLower` except no NVARCHAR(MAX) parameters; it can be used when input data will never be over 4000 characters as this function offers better performance.

```csharp
String_ToLower4k (
	@source NVARCHAR (4000)
	)
RETURNS NVARCHAR (4000)
```

## Example

```csharp
SELECT SQLNET::String_ToLower4k('wAr aNd pEaCe')
```