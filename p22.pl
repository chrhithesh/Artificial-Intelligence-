% Facts
bird(robin, can_fly).
bird(penguin, cannot_fly).
bird(eagle, can_fly).
bird(emu, cannot_fly).
bird(sparrow, can_fly).
bird(ostrich, cannot_fly).

% Rules to print whether a bird can fly or not
can_fly(Bird) :-
    bird(Bird, can_fly),
    write(Bird), write(' can fly.'), nl.

can_fly(Bird) :-
    bird(Bird, cannot_fly),
    write(Bird), write(' cannot fly.'), nl.

% Example usage:
% To check if a particular bird can fly, you can query:
% ?- can_fly(robin).
% ?- can_fly(penguin).
