-module(create_file).
-compile(export_all).

write() ->
    Data = ["1","2","3"],
    LineSep = io_lib:nl(),
    Print = [string:join(Data, LineSep), LineSep],
    file:write_file("foo.do", Print).

check_file() ->
    filelib:is_file("foo.do").

open_file() ->
    file:open("foo.do",[read]).

read_file() ->
    file:read_file("foo.do").

open_file_read_line() ->
    case file:open("foo.do",[read]) of
        {ok, Device} ->
            read_all_lines(Device);
        {error, Reason} ->
            io:format("~s~n",[Reason])
    end.

read_all_lines(IoDevice) ->
    case io:get_line(IoDevice,"") of
        eof -> [];
        Line -> [Line | read_all_lines(IoDevice)]
    end.