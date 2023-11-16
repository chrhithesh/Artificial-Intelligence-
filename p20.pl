% Database facts
planet(mercury, rocky, 0.39).
planet(venus, rocky, 0.72).
planet(earth, rocky, 1.00).
planet(mars, rocky, 1.52).
planet(jupiter, gas_giant, 5.20).
planet(saturn, gas_giant, 9.58).
planet(uranus, ice_giant, 19.22).
planet(neptune, ice_giant, 30.05).

% Query to retrieve information about a specific planet
get_planet_info(Planet, Type, Distance) :-
    planet(Planet, Type, Distance).

% Example usage:
% To find information about Earth, you can query:
% ?- get_planet_info(earth, Type, Distance).
% Hanoi predicate: Move N discs from the source tower to the destination tower using the auxiliary tower.
hanoi(1, Source, Destination, _) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Destination), nl.

hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Destination),
    write('Move disk '), write(N), write(' from '), write(Source), write(' to '), write(Destination), nl,
    hanoi(M, Auxiliary, Destination, Source).

% Example usage:
% To solve the Towers of Hanoi problem with 3 disks, you can query:
% ?- hanoi(3, 'A', 'C', 'B').
