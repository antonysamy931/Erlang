-module(anonimusfun).
-compile(export_all).

base(A) ->
    B = A + 1,
    F = fun() -> A * B
    end,
    F().
    
password() ->
    Secret = "mark",
    fun() -> Secret end.

show(F) ->
    "Antony password is "++F().     