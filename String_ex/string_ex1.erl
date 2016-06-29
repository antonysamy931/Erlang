-module(string_ex1).
-compile(export_all).

%% Get array from string separator 
split(Value, Separator) ->
    string:tokens(Value,Separator).

%% Get centre word of the string, 
%% Value - string value
%% HowManyWords - integer (how many words expect)
centre_word(Value, HowManyWords) ->
    string:centre(Value,HowManyWords).

%% Get index of character from string
%% Value - string - example : "antony"
%% Character - character - example : $a
get_index(Value,Character) ->
    string:chr(Value, Character).

%% Get length of string
get_length(Value) ->
    string:len(Value).

%% Compare strings
compare_string(Value1, Value2) ->
    string:equal(Value1,Value2).

%% Concatination of strings
concate_string(Value1, Value2) ->
    string:concat(Value1,Value2).

%%