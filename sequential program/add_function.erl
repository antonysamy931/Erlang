-module(add_function).
-compile(export_all).

% foreach(Fun, [H|T]) ->
%     Fun(H),
%     foreach(Fun,T);
    
% foreach(Fun,[]) ->
%     ok.
    
map(Fun,[H|T]) ->
    [Fun(H)|map(Fun,T)];
    
map(Fun,[]) ->
    [].            