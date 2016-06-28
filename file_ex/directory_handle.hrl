%% Return Separator
separator() ->
    "/".

%% Documantation type extention return
doc_type(Doc) ->
    case Doc of
        docx -> ".docx";
        true -> ok
    end.

string_con(Directory,File, Doc) ->        
    string:concat(
        string:concat(string:concat(Directory,separator())
        ,File),doc_type(Doc)).
            
%% Create diretory    
create_dir(Name) ->   
    case filelib:is_dir(Name) of
        true ->
            case file:make_dir(Name) of
                ok ->
                    ok;
                {error, eexist} ->
                    exist;
                {error, Reason} ->
                    io:format("~s~n",[Reason]),
                    fail
            end;
        false ->
            ok
    end.

%%Create File
check_file(Path) ->
case filelib:is_file(Path) of
    true ->
        ok
end.