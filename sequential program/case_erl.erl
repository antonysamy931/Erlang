-module(case_erl).
-compile(export_all).

convert_length(Length) ->
        case Length of 
            {centimeter, X} ->
                {inch, X/2.54};
            {inch, Y} ->
                {centimeter, Y*2.54}
         end.