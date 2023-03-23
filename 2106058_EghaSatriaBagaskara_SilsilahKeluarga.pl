jenis_kelamin(john, laki_laki).
jenis_kelamin(ray, laki_laki).
jenis_kelamin(peter, laki_laki).
jenis_kelamin(david, laki_laki).

jenis_kelamin(amy, perempuan).
jenis_kelamin(liza, perempuan).
jenis_kelamin(susan, perempuan).
jenis_kelamin(karen, perempuan).
jenis_kelamin(mary, perempuan).

pasangan(david, amy).
anak(liza, david).
anak(liza, amy).
anak(john, david).
anak(john, amy).
pasangan(jack, karen).
anak(susan, jack).
anak(susan, karen).
anak(ray, jack).
anak(ray, karen).
pasangan(john, susan).
anak(peter, john).
anak(peter, susan).
anak(mary, john).
anak(mary, susan).

kakek(david, peter).
kakek(david, mary).
kakek(jack, peter).
kakek(jack, mary).
nenek(amy, peter).
nenek(amy, mary).
nenek(karen, peter).
nenek(karen, mary).

ayah(X, Y) :-
    pasangan(X, Z),
    anak(Y, Z).

ibu(X, Y) :-
    pasangan(Z, X),
    anak(Y, Z).

saudara_kandung(X, Y) :-
    anak(X, Z),
    anak(Y, Z),
    X \= Y.

anak_laki_laki(X, Y) :-
    anak(X, Y),
    \+ jenis_kelamin(X, perempuan).

anak_perempuan(X, Y) :-
    anak(X, Y),
    jenis_kelamin(X, perempuan).

cucu(X, Y) :-
    anak(X, Z),
    anak(Z, Y).

cucu_lelaki(X, Y) :-
    cucu(X, Y),
    \+ jenis_kelamin(X, perempuan).

cucu_perempuan(X, Y) :-
    cucu(X, Y),
    jenis_kelamin(X, perempuan).













