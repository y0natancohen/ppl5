% Signature: parent(Parent, Child)/2
% Purpose: Parent is the parent of the child.

parent(metushelah, abraham).
parent(metushelah, abraham_sister).
parent(abraham, isaac).
parent(isaac, jacob).
parent(sarah, isaac).
parent(jacob, joseph).
parent(rebbeca, esav).
parent(rebbeca,jacob).
parent(isaac, esav).

parent(mom, son1).
parent(mom, son2).
parent(fath, son1).
parent(fath, son2).

% Signature: male(Person)/1
% Purpose: The person is male.

male(abraham).
male(isaac).
male(joseph).
male(fath).
male(metushelah).
% Signature: female(Person)/1
% Purpose: The person is female.

female(sarah).
female(rebbeca).
female(mom).
female(abraham_sister).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              Solution              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Signature: mother(big, small)/2
% Purpose: big is mother of small.
mother(Big, Small) :-
    parent(Big, Small),
    female(Big).

% Signature: father(big, small)/2
% Purpose: big is father of small.
father(Big, Small) :-
    parent(Big, Small),
    male(Big).

% Signature: siblings(Person1, Person2)/2
% Purpose: Person1 and Person2 are siblings.
% Example:
% ?- siblings(X, Y).
% X = jacob, Y = esav;
% X = esav, Y = jacob
siblings(Bro1, Bro2) :-
    father(Fath,Bro1),
    father(Fath,Bro2),
    mother(Moth, Bro1),
    mother(Moth, Bro2),
    Bro1\=Bro2.

% Signature: ancestor(Ancestor, Descendant)/2
% Purpose: Ancestor is an ancestor of Descendant.
ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).%1
ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Person),    %2
    ancestor(Person, Descendant).

% Signature: relatives(Person1, Person2)/2
% Purpose: Person1 and Person2 are relatives.
% Example:
% ?- relatives(isaac, Y).
% Y = jacob ;
% Y = esav ;
% Y = joseph

relatives(Person1, Person2) :-
    ancestor(Anc, Person1),
    ancestor(Anc, Person2),
    Person1\=Person2.

% Signature: joseph_female_relatives(Person)/1
% Purpose: returns all the female relatives of joseph.
% Example:
% ?- joseph_female_relatives(Y).
% Y = abraham_sister ;
joseph_female_relatives(Person) :-
	relatives(Person, joseph), female(Person), Person\=joseph.