-module(file_handle).
-include("directory_handle.hrl").
-compile(export_all).

create_file(Name) ->        
    case create_dir(Name) of
        ok -> 
            FilePath = string_con(Name,Name,docx),
            create_file(FilePath,"Sample");
        exist ->
            exist;
        fail ->
            fail
    end.



create_file(Path, Data) ->    
    Format = io_lib:nl(),
    file:write_file(Path, io_lib:fwrite(Format, Data)).