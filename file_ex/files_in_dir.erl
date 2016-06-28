-module(files_in_dir).
-compile(export_all).

read_dir_files(Directory) ->
    case file:list_dir(Directory) of
        {ok, Filenames} ->
            lists:foreach(fun(Name) ->
                io:format("~s~n",[Name])                
                % read_file_information(Name)
            end, Filenames);
        {error, enoent} ->
            io:format("Directory not exist~n",[]);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.

read_file_information(FileName) ->
    case file:read_file_info(FileName) of
        {ok, FileInfo} ->
            io:format("~s~n",[FileInfo]);
        {error, enoent} ->
            io:format("File does not exist.~n",[]);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.
