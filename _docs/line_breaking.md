---
layout: docs
title: C++ Line Breaking Guide
permalink: /docs/line-breaking/
---

C++ Line Breaking Guide
==========================================================================
Table Of Contents
==========================================================================

Namespace
==========================================================================
```c++
namespace AAA {
namespace BBB {
namespace CCC {
namespace 111 {
}
namespace 222 {
}
}}}
```

```c++
  AAA111
::BBB222
::CCC333
::DDD444
::EEE555
::function_name();
```

Parameters / Arguments
==========================================================================
```c++
template <
  typename A
, typename B
, typename C
>
```

function calls / declerations
--------------------------------------------------------------------------
```c++
function_name(
  parameterA
, parameterB
, parameterC
);
```

Chaining
--------------------------------------------------------------------------
```c++
  object
<< item1
<< item02
<< item3
<< item4
<< item99;
```
```c++
  type variable
= very_long_func()
= variable_1;
```

```c++
func1(
func2(
  func3(
  func5(
    func6()
  , func7()
  ))
, func4()
));
```
