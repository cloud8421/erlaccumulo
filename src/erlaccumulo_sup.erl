-module(erlaccumulo_sup).

-behaviour(supervisor).

-include("erlaccumulo.hrl").

%% API
-export([start_link/0, start_link/1]).

%% Supervisor callbacks
-export([init/1]).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_link(Pools) ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, Pools).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
	%{ok,Pools} = application:get_env(erlaccumulo,pools),
	Pools=case application:get_env(erlaccumulo,pools) of
		undefined ->
			{ok,[Props]}=file:consult("conf/erlaccumulo.config"),
			AccumuloConfigs=proplists:get_value(erlaccumulo,Props),
			proplists:get_value(pools,AccumuloConfigs);
		{ok,PoolConfig} ->
			PoolConfig
	end,
	% io:format("~p~n",[Pools]),
	% {ok,[Props]}=file:consult("conf/erlaccumulo.config"),
	% AccumuloConfigs=proplists:get_value(erlaccumulo,Props),
	% Pools=proplists:get_value(pools,AccumuloConfigs),
	
	init(Pools);

init(Pools) ->
	ets:new(?ACCUMULO_CLIENT_POOLS_ETS,[set,named_table,{keypos,#accumulo_pool.idx},public]),
	
    {PoolSpecs,_} = lists:mapfoldl(fun({Name, SizeArgs, WorkerArgs},Idx) ->
				  ets:insert(?ACCUMULO_CLIENT_POOLS_ETS,#accumulo_pool{idx=Idx,pool=Name}),
				  PoolArgs = [{name, {local, Name}},
				  {worker_module, erlaccumulo_pool_worker}] ++ SizeArgs,
				  {poolboy:child_spec(Name, PoolArgs, WorkerArgs), Idx+1}
			  end, 1, Pools),
    {ok, {{one_for_one, 10, 10}, PoolSpecs}}.
