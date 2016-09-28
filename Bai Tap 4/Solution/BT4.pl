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

% nh?ng ngu?i m� c� chung con c�i th� g?i l� v? ch?ng c?a nhau
%married(W, H) :- mother(W, X), father(H, X).

% nh?ng ngu?i m� l� m? c?a ai d� th� d?u l� n?
%woman(X) :- mother(X, _).

% X l� con Y n?u Y l� cha X ho?c Y l� m? X
child(X, Y) :- father(Y, X).
child(X, Y) :- mother(Y, X).

% l� s? �m
negative(X) :- X < 0.

% l� s? l?
odd(X) :- X mod 2 =\= 0.

% l� top 10
member(X, [X|_]).
member(X, [_|L]) :- member(X , L).
topten(X) :- member(X, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).