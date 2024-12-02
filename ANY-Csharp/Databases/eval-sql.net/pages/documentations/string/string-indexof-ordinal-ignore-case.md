---
Name: String_IndexOfOrdinalIgnoreCase
---

# String_IndexOfOrdinalIgnoreCase

`String_IndexOfOrdinalIgnoreCase` returns the zero-based index of the first occurrence of a `searchValue` Unicode character or string within the `source` string using ordinal (binary) sort rules and ignoring the case of the strings.

```csharp
String_IndexOfOrdinalIgnoreCase (
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
SELECT SQLNET::String_IndexOfOrdinalIgnoreCase('This is a string.', 'string')
SELECT SQLNET::String_IndexOfOrdinalIgnoreCase('Arch�ology', '�')
```

# String_IndexOfOrdinalIgnoreCase4k

It is equivalent to `String_IndexOfOrdinalIgnoreCase` except no NVARCHAR(MAX) parameters; it can be used when input data will never be over 4000 characters as this function offers better performance.

```csharp
String_IndexOfOrdinalIgnoreCase4k (
	@source NVARCHAR (4000), 
	@searchValue NVARCHAR (4000)
	)
RETURNS INT
```

## Example

```csharp
SELECT SQLNET::String_IndexOfOrdinalIgnoreCase4k('This is a string.', 'string')
SELECT SQLNET::String_IndexOfOrdinalIgnoreCase4k('Arch�ology', '�')
```