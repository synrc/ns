-module(ns).
-description('NS: Name Server').
-behaviour(application).
-behaviour(supervisor).
-export([start/2, stop/1, init/1]).

stop(_)    -> ok.
init([])   -> {ok, { {one_for_one, 5, 10}, []} }.
start(_,_) -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).
