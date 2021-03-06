% Cau 1 ==========================
% vi tu doublelist(L, R): nhan vao danh sach L va tra ra danh sach R voi ket qua la danh sach L voi moi phan tu duoc lap lai.
doublelist([],[]).
doublelist([H|T], [H,H|Z]) :- doublelist(T, Z).

% Cau 2 ==========================
% vi tu abslist(L, R): nhan vao danh sach L va tra ra danh sach R la danh sach L duoc lay tri tuyet doi cua tung phan tu
abslist([], []).
abslist([H|T], [AH|Z]) :- AH is abs(H),
                          abslist(T, Z).

% Cau 3 ==========================
% vi tu remove(L, N, M, R, X): L la danh sach duoc cho, N la chi muc dau tien trong danh sach (thuong la 0), M la mot so nguyen duoc cho. R la danh sach L sau khi xoa di phan tu o vi tri N (tinh tu 0) va X la phan tu bi xoa.
remove_temp([], _, _, [], _).
remove_temp([X|T], N, M, R, X) :- N =:= M,
                                  N1 is N + 1,
                                   remove_temp(T, N1, M, R, X).
remove_temp([H|T], N, M, [H|Z], X) :- N =\= M,
                                      N1 is N + 1,
                                      remove_temp(T, N1, M, Z, X).

% vi tu remove(L, N, R, X): L la danh sach duoc cho, N la mot so nguyen duoc cho. R la danh sach L sau khi xoa di phan tu o vi tri N (tinh tu 0) va X la phan tu bi xoa.
%remove([], N, [], _) :- N =:= 0.
remove(L, N, R, X) :- N >= 0,
                      length(L, A),
                      A - 1 >= N,
                      remove_temp(L, 0, N, R, X).


% Cau 4 ==========================
% vi tu member(X, L): X thuoc danh sanh L
is_member(X, [X|_]).
is_member(X, [_|L]) :- is_member(X, L).

% vi tu set(L, S): nhan vao danh sach L va tra ve danh sach S la danh sach L da duoc xoa di cac phan tu trung lap, chi giu lai phan tu xuat hien dau tien
set([], []).
set([H|T], [H|Z]) :- not(is_member(H, T)),
                     set(T, Z).
set([H|T], L) :- is_member(H, T),
                 set(T, L).

% Cau 5 ==========================
% vi tu is_prime(N): N la so nguyen to
is_prime(N) :- N >= 2,
            N1 is N - 1,
            p(N, N1).

% vi tu p(N, K): N khong chia het cho cac so tu 2 den K
p(N, 2) :- N mod 2 =\= 0.
p(N, K) :- K > 2,
           K1 is K - 1,
           p(N, K1),
           N mod K =\= 0.
           
% vi tu prime(N): in cac so nguyen to tu 2 den N
prime(2) :- write(2).
prime(N) :- N > 2,
            is_prime(N),
            N1 is N - 1,
            prime(N1),
            write(' '),
            write(N).
prime(N) :- N > 2,
            not(is_prime(N)),
            N1 is N - 1,
            prime(N1).
