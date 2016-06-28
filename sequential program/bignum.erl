-module(bignum).
-compile(export_all).

list_max([H|T]) -> 
    list_max(T, H).
list_max([],Res) -> 
    Res;
list_max([H|T],Rest_of_far) when H > Rest_of_far ->
    list_max(T,H);
list_max([H|T],Rest_of_far) when H =< Rest_of_far -> 
    list_max(T,Rest_of_far).
        