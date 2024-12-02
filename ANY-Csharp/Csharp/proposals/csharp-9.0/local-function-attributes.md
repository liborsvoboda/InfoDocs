# Attributes on local functions

## Attributes

Local function declarations are now permitted to have [attributes](../../spec/attributes.md). Parameters and type parameters on local functions are also allowed to have attributes.

Attributes with a specified meaning when applied to a method, its parameters, or its type parameters will have the same meaning when applied to a local function, its parameters, or its type parameters, respectively.

A local function can be made conditional in the same sense as a [conditional method](../../spec/attributes.md#the-conditional-attribute) by decorating it with a `[ConditionalAttribute]`. A conditional local function must also be `static`. All restrictions on conditional methods also apply to conditional local functions, including that the return type must be `void`.

## Extern

The `extern` modifier is now permitted on local functions. This makes the local function external in the same sense as an [external method](../../spec/classes.md#external-methods).

Similarly to an external method, the *local-function-body* of an external local function must be a semicolon. A semicolon *local-function-body* is only permitted on an external local function. 

An external local function must also be `static`.

## Syntax

The [local functions grammar](../csharp-7.0/local-functions.md#syntax-grammar) is modified as follows:
```
local-function-header
    : attributes? local-function-modifiers? return-type identifier type-parameter-list?
        ( formal-parameter-list? ) type-parameter-constraints-clauses
    ;

local-function-modifiers
    : (async | unsafe | static | extern)*
    ;

local-function-body
    : block
    | arrow-expression-body
    | ';'
    ;
```
