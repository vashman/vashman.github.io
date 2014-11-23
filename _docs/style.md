---
layout: docs
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
1. "cpp", "cc", "": Source to be complied
2. "tcc", "tpp": Template 
3. "hpp", "hh": Header file, source to be included

__Rationale__:
The extentions "c++" may cause problems if the plus signs are misintrupted
which would require them to be escaped. Using captial such as "C", "CPP"
, "C++" characters may not be represented the same way universaly.

File Structure
==========================================================================
Include Guards
--------------------------------------------------------------------------
Include Guards should consist of;
1. The namepsace, or namespaces in the order they are decalerd in
2. The file name
3. The file extention

The include guard should formatted with the following formatting;
1. ALL CAPS
2. names/parts/sections should be seperated with a single underscore

```c++
#ifndef NAMESPACE_NAMESPACE2_FILE_NAME_CPP
#define NAMESPACE_NAMESPACE2_FILE_NAME_CPP
#endif
```

__Rationale__:
1. Avoids conflincts by either conflicting consistantly or not at all.
2. Avoids confilicts and provides file information within the marco.
3. Avoids confilicts.

__Rationale__:
1. Avoid subsituting code.
2. Clear to read

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
New Line
==========================================================================
New lines should appear before and after a new section, unless it is the
first or last line.

__Rationale__: 

Indentation
==========================================================================
Identing should only be done when the indention level signifies a
realtionship with the previous information. The following are some good
times this is so.

An indentation level should consist of two spaces. Indentation using tabs
should only occur at the begging of a line.

__Rationale__:
When reading a document the level of indentation signifies to the reader a
change in operation, which may or may not show branching as well.

Using more than two spaces forces excess line wrapping for longer
statements. Using tabs in between the line force the reader to know and
use the tab size of the editor.

Line Wraping
--------------------------------------------------------------------------
Wrapped lines should be indented with the same indentation level as the
start of the line, plus an addtional indentation. The level of indentation
should only be used to make the wrapped lines a legible as possible. If
the lines are virtually the same length the wraped lines should be right
aligned with the longest line.

```c++
/* This is ok but hard to tell its all one line. */
very_long_var_type very_long_name_of_var
  = some_static_of_the_some_scope();
very_long_var_type very_long_name_of_var
  = some_static_of_the_some_scope();
very_long_var_type very_long_name_of_var
  = some_static_of_the_some_scope();

/* This makes it easier to see that the lines are wrapped. */
very_long_var_type very_long_name_of_var
      = some_static_of_the_some_scope();
very_long_var_type very_long_name_of_var
      = some_static_of_the_some_scope();
very_long_var_type very_long_name_of_var
      = some_static_of_the_some_scope();

/* Lines of diffent lengths */
very_long_var_type very_long_name_of_var_with_addtional_info
                          = some_static_of_the_some_scope();
very_long_var_type name_of_var
                          = some_static_of_the_some_scope();
very_long_var_type very_long_name_of_var
                          = some_static_of_the_some_scope();
```

__Rationale__:
Wrapped lines should appear and be readable as one statement, when the
start and end of the line is not clearly visable this becomes more
difficult. 

Branching / Logic Level
--------------------------------------------------------------------------
When entering a new logic level or any sort of branching operation in
which it is unknown whether the operation will branch or not. The entire
block should be indented once plus any previous indentation.

```c++
statement();
statement();
anthoer_statement();
  if (if the state is x){
  change state;
  } else {
  do_foo();
  }

switch(flag){
case A:
  do_foo();
  break;
case B:
  do_foo();
  break;
default:
  do_foo();
  break;
}

for (int i = 0; i<10; ++i){
do_foo();
}

  for (int i = 0; if state is x; ++i){
  do_foo();
  }

  while(state is x){
  do_foo();
  }
```

__Rationale__:
It should be clear the the reader that the block may be optionally or
would have a purpose or cause out of the scope of the flow up in till that
point.

Identation in Structure
--------------------------------------------------------------------------
Lines should be indented once within a structure.

```c++
class foo {
public:
  int some_var;
  void func();

private:
  int var;
};
```

__Rationle__:
The statements within the structure belong to the structure and are a
seperate logic level when read. The access qualifiers are part the of the
class. 

Line Length
==========================================================================
Lines should be no more than 74 characters long. When indenting using tabs
only at the begging of the line the line length should be calculated with
tabs being at the lowest size of two in this case.

__Rationale__:
With 80 maximum characters having 6 extra buffer characters allows for a
3 digit number plus a space to seperate from the code along with 2
additional spaces which may be used for markings such as break points

Nameing
==========================================================================
Names should consist of lower case letters, with sections seperated with
underscores.

__Rationale__:
When additional information is added to the name
Upper
