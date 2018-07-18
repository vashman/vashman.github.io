---
title: memory
readable: true
writable: true
unique: false
type: memory
---

Example
---------------------------------------------------------------------------
```code
[ name_A -> "string"
, name_B -> "":99
, name_C -> "string":#
, name_D -> "string":?
, name_E -> "string":*
, name_F -> "string":&
, name_G -> "":?:100
, name_H -> "":#:device:size
]
```

Description
===========================================================================
Refers to computer memory stored upon any device.
- Can refer to read-only and write-only memory as well.

Properties
  : Data
  : Permissions
  : Device
  : Size

Default device
  : `ram`
