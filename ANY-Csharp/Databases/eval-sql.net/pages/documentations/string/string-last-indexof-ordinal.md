---
Name: String_LastIndexOfOrdinal
---

# String_LastIndexOfOrdinal

`String_LastIndexOfOrdinal` returns the zero-based index of the last occurrence of a `searchValue` Unicode character or string within the `source` string using ordinal (binary) sort rules.

```csharp
String_LastIndexOfOrdinal (
	@source NVARCHAR (MAX), 
	@searchValue NVARCHAR (MAX)
	)
RETURNS INT
```

## Parameters

  - **source**: The source string.
  - **searchValue**: The string to search within the source string.

## Returns

The zero-based index position of the `searchValue` parameter from the start of the `source` string if that string is found, or -1 if it is not. If `searchValue` is Empty, the return value is 0.

## Example

```csharp
SELECT SQLNET::String_LastIndexOfOrdinal('This is a string.', 'string')
SELECT SQLNET::String_LastIndexOfOrdinal('Arch�ology Arch�ology', '�')
```

# String_LastIndexOfOrdinal4k

It is equivalent to `String_LastIndexOfOrdinal` except no NVARCHAR(MAX) parameters; it can be used when input data will never be over 4000 characters as this function offers better performance.

```csharp
String_LastIndexOfOrdinal4k (
	@source NVARCHAR (4000), 
	@searchValue NVARCHAR (4000)
	)
RETURNS INT
```

## Example

```csharp
SELECT SQLNET::String_LastIndexOfOrdinal4k('This is a string.', 'string')
SELECT SQLNET::String_LastIndexOfOrdinal4k('Arch�ology Arch�ology', '�')
```