% Signature: contained(List1, List2)/2
% Purpose: All elements in List1 appear in List2 in some (possibly different) order.
% Precondition: List2 is fully instantiated
% Example:
% ?- contained(X, [1, 2]).
% X = [1, 2];
% X = [2, 1];
% X = [1];
% X = [2];

contained(SubList, List) :-
    permutation(Perm, List),
    containedOrdered(SubList, Perm).

containedOrdered(SubList, List) :-
    append(SubList, RandomList1, List),
    SubList\=[].

g