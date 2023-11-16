% Facts
male(john).
male(bob).
male(tom).
male(jerry).

female(lisa).
female(susan).
female(emma).
female(jane).

% Parent relationships
parent(john, bob).
parent(john, lisa).
parent(bob, tom).
parent(lisa, jerry).
parent(tom, susan).
parent(emma, jane).

% Rules for defining other relationships
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
