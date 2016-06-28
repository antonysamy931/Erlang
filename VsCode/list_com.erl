-module(list_com).
-export([mul_list/2,odd_num/1,even_num/1]).

mul_list(MyArray,No) ->
    [X*No || X <- MyArray].
    
odd_num(MyArray) ->
    [X || X<-MyArray, X rem 2 =:= 1].
    
even_num(MyArray) ->
    [X || X<-MyArray, X rem 2 =:= 0].