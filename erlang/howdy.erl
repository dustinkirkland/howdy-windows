-module(howdy).
-export([howdy/0]).

howdy() -> io:fwrite("====> Erlang: Howdy, Windows!\n").
