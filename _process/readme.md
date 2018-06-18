---
layout: process
code: codefilename.code
title: readme

output:
  - asset1
  - asset2

input:
  - asset1
  - asset2

policy:
  - link to policy
  - link to policy

agent:
  - name of person or group
    - name of nested person or group
    - name of nested person or group

example:
  - example_file.code
  - example_file.code
---
_data section_
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Process: _title_
===========================================================================
```code
$name -> [E set | f:name(#) | #, ...]
```

Output
---------------------------------------------------------------------------
- _asset name_

> - Output may be skipped in the process.
> - The process may still produce the output.

Input
---------------------------------------------------------------------------
- _asset name_
- _template name_
  - _asset name_
  - _asset name_
- _asset name_

> - All input is mandatory.
> - Inputs cannot have a order within the process, but an overall order between multiple process may occur.

Polices
---------------------------------------------------------------------------
- [_policy name_](_link to policy_)
    - [_sub-section name_](_link to sub-section_)
    - [_sub-section name_](_link to sub-section_)
- [_sub-section name_](_link to sub-section_)

> The pre-existing decisions made affecting this process.

People
---------------------------------------------------------------------------
- [_person name_](_link to person_)
- [_group name_](_link to group_)

> List of people or groups who this process belongs too.
> Key people to update, apply or handle this process.

1. [_person name_](_link to person_)
    1. [_person name_](_link to person_)
    2. [_group name_](_link to group_)
2. [_group name_](_link to group_)

> An ordered list has preferences for one group over another.
> Sub groups are ...?

Example
---------------------------------------------------------------------------
```code
```

_Document body_
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Description
===========================================================================
> A description of the process.

Instructions
===========================================================================
Condition Statement
  : skip too task _name_
  : preform action xyz
    : perform sub-action
    : [_process name_](_link to process_)

- [x] Task
- [x] Task
- [ ] Task

> An unordered list of tasks may be started and completed in parallel.
> Each individual task can be in a state of complete and not complete.

Condition Statement
  : skip to task 2.
  : skip to end
  : restart
  : continue

1. Task
2. Task

- [x] parent task
  1. sub task
  2. sub task

> The group of ordered tasks do not have a complete state.
> Since all groups in the lists are ordered with each other, a singular position is always present.
> The position may be separated by unordered parent tasks.

Condition
  : skip next

3. [_process name_](_link to process_)

> Task
> : A action to perform.

> restart
> : restart the Process and revalidate the inputs / outputs.
> : start the next iteration of the process.
> : no outputs are performed.

> continue
> : Skip and output the current state.
> : Then start the next iteration of the process.
