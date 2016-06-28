-module(max_number).
-compile(export_all).

find_max_number([H|R]) ->
    find_max_number(R,H).
    
find_max_number([],Result_so_far) ->
    Result_so_far;
        
find_max_number([H|R],Result_so_far) when H > Result_so_far ->
    find_max_number(R,H);
    
find_max_number([H|R], Result_so_far) when H =< Result_so_far ->
    find_max_number(R,Result_so_far).        