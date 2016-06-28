-module(files_in_dir).
-compile(export_all).

read_dir_files(Directory) ->
    case file:list_dir(Directory) of
        {ok, Filenames} ->
            lists:foreach(fun(Name) ->      
                File_Path = display(Directory, Name),          
                % io:format("~s~n",[File_Path])                
                read_file_information(File_Path)
            end, Filenames);
        {error, enoent} ->
            io:format("Directory not exist~n",[]);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.

display(Directory,FileName) ->    
    File_Name = lists:flatten(io_lib:format("~s",[FileName])),
    Directory_Name = lists:flatten(io_lib:format("~s",[Directory])),
    Directory_Name++"/"++File_Name.

read_file_information(FileName) ->
    case file:read_file_info(FileName) of
        {ok, FileInfo} ->
            io:format("~s~n",[FileInfo]);
        {error, enoent} ->
            io:format("File does not exist.~n",[]);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.
