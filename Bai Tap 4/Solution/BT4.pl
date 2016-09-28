in_class(an).
know_java(an).
high_salary(X) :- know_java(X).

hate(X, Y) :- cat(X), mouse(Y).
cat(tom).
mouse(jerry).

so_thuc(X) :- so_huu_ty(X).
so_huu_ty(_).

mother(ann,henry).
mother(ann,mary).
mother(jane,mark).
mother(jane,francis).
mother(annette,jonathan).
mother(mary,bill).
mother(janice,louise).
mother(lucy,janet).
mother(louise,caroline).
mother(caroline,david).
father(henry,jonathan).
father(john,mary).
father(francis,william).
father(francis,louise).
father(john,mark).
father(gavin,lucy).
father(john,francis).

% nh?ng ngu?i mà có chung con cái thì g?i là v? ch?ng c?a nhau
%married(W, H) :- mother(W, X), father(H, X).

% nh?ng ngu?i mà là m? c?a ai dó thì d?u là n?
%woman(X) :- mother(X, _).

% X là con Y n?u Y là cha X ho?c Y là m? X
child(X, Y) :- father(Y, X).
child(X, Y) :- mother(Y, X).

% là s? âm
negative(X) :- X < 0.

% là s? l?
odd(X) :- X mod 2 =\= 0.

% là top 10
member(X, [X|_]).
member(X, [_|L]) :- member(X , L).
topten(X) :- member(X, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).