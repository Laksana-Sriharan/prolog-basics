?- canget(state(atdoor, onfloor, atwindow, hasnot)).
true .

?- trace.
true.

[trace] [1] 104 ?- canget(state(atdoor, onfloor, atwindow, hasnot)).
   Call: (25) canget(state(atdoor, onfloor, atwindow, hasnot)) ? creep
   Call: (26) move(state(atdoor, onfloor, atwindow, hasnot), _35048, _34922) ? creep
   Exit: (26) move(state(atdoor, onfloor, atwindow, hasnot), walk(atdoor, _35818), state(_35818, onfloor, atwindow, hasnot)) ? creep
   Call: (26) canget(state(_35818, onfloor, atwindow, hasnot)) ? creep
   Call: (27) move(state(_35818, onfloor, atwindow, hasnot), _37728, _37602) ? creep
   Exit: (27) move(state(atwindow, onfloor, atwindow, hasnot), climb, state(atwindow, onbox, atwindow, hasnot)) ? creep
   Call: (27) canget(state(atwindow, onbox, atwindow, hasnot)) ? creep
   Call: (28) move(state(atwindow, onbox, atwindow, hasnot), _40402, _40276) ? creep
   Fail: (28) move(state(atwindow, onbox, atwindow, hasnot), _41292, _40276) ? creep
   Fail: (27) canget(state(atwindow, onbox, atwindow, hasnot)) ? creep
   Redo: (27) move(state(_35818, onfloor, atwindow, hasnot), _43070, _37602) ? creep
   Exit: (27) move(state(atwindow, onfloor, atwindow, hasnot), push(atwindow, _43840), state(_43840, onfloor, _43840, hasnot)) ? creep
   Call: (27) canget(state(_43840, onfloor, _43840, hasnot)) ? creep
   Call: (28) move(state(_43840, onfloor, _43840, hasnot), _45750, _45624) ? creep
   Exit: (28) move(state(_43840, onfloor, _43840, hasnot), climb, state(_43840, onbox, _43840, hasnot)) ? creep
   Call: (28) canget(state(_43840, onbox, _43840, hasnot)) ? creep
   Call: (29) move(state(_43840, onbox, _43840, hasnot), _48424, _48298) ? creep
   Exit: (29) move(state(middle, onbox, middle, hasnot), grasp, state(middle, onbox, middle, has)) ? creep
   Call: (29) canget(state(middle, onbox, middle, has)) ? creep
   Exit: (29) canget(state(middle, onbox, middle, has)) ? creep
   Exit: (28) canget(state(middle, onbox, middle, hasnot)) ? creep
   Exit: (27) canget(state(middle, onfloor, middle, hasnot)) ? creep
   Exit: (26) canget(state(atwindow, onfloor, atwindow, hasnot)) ? creep
   Exit: (25) canget(state(atdoor, onfloor, atwindow, hasnot)) ? creep
true .