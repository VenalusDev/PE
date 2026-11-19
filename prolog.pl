
solve :-
    Wolf = fauna,
    permutation([flora, sport, space, fauna],
                [Wolf, Nif, Naf, Nuf]),

    permutation([1, 2, 3, 4],
                [PosWolf, PosNif, PosNaf, PosNuf]),

    left_of(PosWolf, PosNaf),
    right_of(PosNif, PosSpace),

    member_pos(space, PosSpace,
               [Wolf, Nif, Naf, Nuf],
               [PosWolf, PosNif, PosNaf, PosNuf]),

    opposite(PosNuf, PosNaf),
    Nuf \= sport,

    format('Волк:    тема: ~w, позиция: ~w~n', [Wolf, PosWolf]),
    format('Ниф-Ниф: тема: ~w, позиция: ~w~n', [Nif, PosNif]),
    format('Наф-Наф: тема: ~w, позиция: ~w~n', [Naf, PosNaf]),
    format('Нуф-Нуф: тема: ~w, позиция: ~w~n', [Nuf, PosNuf]).

left_of(X, Y) :-
    Y is (X mod 4) + 1.

right_of(X, Y) :-
    Y is ((X - 2) mod 4) + 1.

opposite(X, Y) :-
    abs(X - Y) =:= 2.

member_pos(T, P, [T|_], [P|_]).

member_pos(T, P, [_|Ts], [_|Ps]) :-
    member_pos(T, P, Ts, Ps).

