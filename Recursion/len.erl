-module(len).
-export([len_th/1]).

len_th([]) -> 0;
len_th([_|T]) -> 1+len_th(T).