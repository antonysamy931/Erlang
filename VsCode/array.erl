-module(array).
-export([length_cal/1,head_show/1,tail_show/1,array_add/2]).

length_cal(MyArray) ->
    length(MyArray).
   
head_show(MyArray) ->
    [H|_] = MyArray,
    H.
   
tail_show(MyArray) ->
    [_|T] = MyArray,
    T.
    
array_add(Array1,Array2) ->
    Array1 ++ Array2.