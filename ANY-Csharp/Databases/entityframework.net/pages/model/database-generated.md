---
PermaID: 1000124
Title: Entity Framework DatabaseGenerated Data Annotations
MetaDescription: Unlock the power of Entity Framework by using the DatabaseGenerated Data Annotations. Learn the difference between DatabaseGeneratedOption none, identity, and computer and how to specify this attribute.
LastMod: 2023-02-24
Tags: code-first fluent-api data-annotations
---

# Entity Framework DatabaseGenerated Data Annotations

The `DatabaseGenerated` attribute added to the properties whose value is automatically computed/updated by the Database. It specifies how the database generates values for the property. There are three possible values:

 - `Identity`: Specifies that the column is an identity column, which is typically used for integer primary keys.
 - `Computed`: Specifies that the database generates the value for the column.
 - `None`: Specifies that the values are not generated by the database.

## DatabaseGeneratedOption.None

The `DatabaseGeneratedOption.None` prevents the database from creating the computed values, and the values must be provided by the user. 

```csharp
public class Book
{
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int BookId { get; set; }
    public int SrNo { get; set; }
    public string Title { get; set; }
}
```
The `BookId` property is denoted with `DatabaseGeneratedOption.None`, so its value must be specified when inserted into the database.

[Try it](https://dotnetfiddle.net/jDvKap)

## DatabaseGeneratedOption.Identity

When `DatabaseGenerated.Identity` applied to a property, the entity framework expects the data to be updated by the database when the row is inserted.

```csharp
public class Book
{
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int BookId { get; set; }
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int SrNo { get; set; }
    public string Title { get; set; }
}
```

The `SrNo` property is denoted with `DatabaseGeneratedOption.Identity` so its value will be updated by the database, when the row is inserted.

[Try it](https://dotnetfiddle.net/ztAa2O)

## DatabaseGeneratedOption.Computed

The `DatabaseGeneratedOption.Computed` is useful when you have computed columns in your database. EF will not update these columns, but it will query and return the values of these fields once the data is inserted or Updated.

```csharp
public class Book
{
    public int BookId { get; set; }
    public int SrNo { get; set; }
    public string Title { get; set; }
    [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
    public DateTime? CreatedAt { get; set; } = DateTime.Now;
}
```