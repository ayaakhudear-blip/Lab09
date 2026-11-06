and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).

neg(0, 1).
neg(1, 0).

boolean(A, B, Result) :-
    and(A, B, First),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, Second),
    or(First, Second, Result).
