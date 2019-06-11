% Signature: parent(Parent, Child)/2
% Purpose: Parent is the parent of the child.

parent(abraham, isaac).
parent(isaac, jacob).
parent(sarah, isaac).
parent(jacob, joseph).
parent(rebbeca, esav).
parent(rebbeca,jacob).
parent(isaac, esav).

% Signature: male(Person)/1
% Purpose: The person is male.

male(abraham).
male(isaac).
male(joseph).

% Signature: female(Person)/1
% Purpose: The person is female.

female(sarah).
female(rebbeca).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              Solution              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Signature: siblings(Person1, Person2)/2
% Purpose: Person1 and Person2 are siblings.
% Example:
% ?- siblings(X, Y).
% X = jacob, Y = esav;
% X = esav, Y = jacob

siblings(X, Y) :-
    writeln('not yet implemented').

% Signature: relatives(Person1, Person2)/2
% Purpose: Person1 and Person2 are relatives.
% Example:
% ?- relatives(isaac, Y).
% Y = jacob ;
% Y = esav ;
% Y = joseph

relatives(X, Y) :-
    writeln('not yet implemented').
