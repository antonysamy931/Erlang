-module(duplicate).
-export([dup/2]).

dup(0,_) -> [];
dup(N,Term) when N > 0 -> 
    [Term | dup(N-1,Term)].