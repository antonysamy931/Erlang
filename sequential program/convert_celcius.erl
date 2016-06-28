-module(convert_celcius).
-compile(export_all).

format_temp([]) -> 
    ok;

format_temp([City|Rest]) ->
    print_temp(convert_to_celcius(City)),
    format_temp(Rest).
    
convert_to_celcius({Name,{c,Temp}}) ->
    {Name,{c,Temp}};
    
convert_to_celcius({Name,{f,Temp}}) ->
    {Name,{c,(Temp-32)*5/9}}.
    
print_temp({Name,{c,Temp}}) ->
    io:format("~-15w ~w c~n",[Name,Temp]).                