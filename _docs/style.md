---
layout: default
title: C++ Style Guide
permalink: /docs/style/
---

C++ Style Guide
==========================================================================
File Names
==========================================================================
1. All lower case charaters
2. Spaces should be substituted with underscores

__Rationale__:
1. An os may treat the upper case and lower case as the same name.
2. If the file is referenced somewhere spaces will be most likly be used
already, requireing the ones in the file name to be escaped.

File extenstions
--------------------------------------------------------------------------
File extentions should reflect the content and purpose of the file the
following list shows extenstion and the purpose of the file;
1. "cpp", "cc": Source to be complied
2. "tcc":
3. "hpp", "hh": Header file, source to be included

__Rationale__:
1. The extentions "c++" may cause problems if the plus signs are
misintrupted which would require them to be escaped.
2.
3.

File Structure
==========================================================================
Include Guards
--------------------------------------------------------------------------
Include Guards should consist of;
1. The namepsace, or namespaces in the order they are decalerd in
2. The file name
3. The file extention

__Rationale__:
1. 
2. 
3. 

The include guard should formatted with the following formatting;
1. ALL CAPS
2. names/parts/sections should be seperated with a single underscore

__Rationale__:
1. 
2. 

Header Comment
--------------------------------------------------------------------------
The begging of every file should contain a single line at the top,
summarizing the purpose of the file.

__Rationale__:
To easly understand the purpose of the file. Only one line should be used
to ensure that the purpose is simply and does not encapsulate too many
responsibilites.

License Header
--------------------------------------------------------------------------
The license header should appear after the header comment.

__Rationale__:
To make the license easlit accesable to an entity who does not need to
know about the code. It is shown under the comment to ensure that there is
some context to what the license is applying to.

White Space
==========================================================================

Indentation
==========================================================================
Line Wraping
--------------------------------------------------------------------------

Branching / Logic Level
--------------------------------------------------------------------------

Identation in Structure
--------------------------------------------------------------------------

Line Length
==========================================================================
Lines should be no more than 74 characters long.

__Rationale__:


Conytol Structures
==========================================================================

Namespaces
==========================================================================

Nameing
==========================================================================
