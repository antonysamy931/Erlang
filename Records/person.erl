-module(person).
-include("person.hrl").
-compile(export_all).

demo1(P) when record(P, person) ->
    P#person.name.

demo() ->
    P = #person{name="Antony"},
    demo1(P).
        