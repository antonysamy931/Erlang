-module(make_dir).
-compile(export_all).

create_dir(Name) ->    
    case file:make_dir(Name) of
        ok ->
            io:format("Directory Created~n",[]);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.       
    
delete_dir(Name) ->
    case file:del_dir(Name) of
        ok -> 
            io:format("Directory Deleted~n",[]);
        {error,Reason} ->
            io:format("~s~n",[Reason])
    end.

rename_dir(OldName, NewName) ->   
    case filelib:is_dir(OldName) of 
        true -> 
            case file:del_dir(OldName) of
                ok ->
                    create_dir(NewName);
                {error, enoent} ->
                    create_dir(NewName);
                {error, Reason} ->
                    io:format("~s~n",[Reason])
            end;
        false ->
            io:format("Directory not available~n",[])
    end.    

directory_check(FileName) ->
    case filelib:is_dir(FileName) of
        true ->
            io:format("Directory available~n",[]);
        false ->
            io:format("Directory not available~n",[])
    end.     