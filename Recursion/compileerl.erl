-module(compileerl).
-compile(export_all).

one() -> 1.
two() -> 2.
add(X, Y) -> X() + Y().

increment([]) -> [];
increment([H|T]) -> [H+1|increment(T)].

decrement([]) -> [];
decrement([H|T]) -> [H-1|decrement(T)].

incre(X) -> X+1.
decre(X) -> X-1.

map(_,[]) -> [];
map(F,[H|T]) -> [F(H)|map(F,T)].