-module(reverse_erl).
-compile(export_all).

reverse(List) ->
    reverse(List,[]).
reverse([H|T],NewList) ->
    reverse(T,[H|NewList]);
reverse([],NewList) ->    
    NewList.        