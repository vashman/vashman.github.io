---
layout: procedure
title: readme
---
_data section_
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Procedure: _title_
===========================================================================
```code
$procedure:name:[(state, ...), assets, ...]
-> [
  phase_name:[
    process_name
  , process_name
  ]
, stage_name:()
, /\
, name:{}
   ]
```

Assets
---------------------------------------------------------------------------
- asset name
- asset name
- asset name

### State
1. Start state
2. End state


- Other State that may be used.
   1. ordered sub-state
   2. ordered sub-state
- State
- State

> If there is no ordered states, the start state is blank / null.
> Ordered states represent the states used, and the order they have to
> progress in. Tho they may progress in both directions, or the state may
> leave a ordered sub-set when changing to another un-ordered state.

Example
---------------------------------------------------------------------------
```code
```

_Document body_
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Description
===========================================================================
> A description of the procedure.

Instructions
===========================================================================

Phase: _title_
---------------------------------------------------------------------------
> A description of the stage / phase.

Trigger
  : _trigger name_
  : _trigger_

Condition
  : if this, then do this, else skip.

Agent
  : _name_
  : _group_

> The function that will perform / be involved in the below processes.
> Functions do not appear for sub-process's; since they are always tied to
> a parent process.

State
  : _state_

> The state can be changed as durning the procedure.

1. _process name_

Condition
  : if this, then do this, else skip.

State
  : _state_

2. _process name_
3. _process name_

Stage: _title_
---------------------------------------------------------------------------
> A description of the stage / phase.


1. _process name_
   - _process name_
   - _process name_
2. _process name_

Agent
  : _name_
  : _group_

3. _process name_


- _process name_
