%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_Control
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_Control').
-ic_compiled("4_3_3").


%% Interface functions
-export([get_terminator/1, get_terminator/2, get_coordinator/1]).
-export([get_coordinator/2]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: get_terminator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
get_terminator(OE_THIS) ->
    corba:call(OE_THIS, get_terminator, [], ?MODULE).

get_terminator(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_terminator, [], ?MODULE, OE_Options).

%%%% Operation: get_coordinator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
get_coordinator(OE_THIS) ->
    corba:call(OE_THIS, get_coordinator, [], ?MODULE).

get_coordinator(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_coordinator, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTransactions/Control:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(get_terminator) -> 
	{{tk_objref,"IDL:omg.org/CosTransactions/Terminator:1.0","Terminator"},
         [],[]};
oe_tc(get_coordinator) -> 
	{{tk_objref,"IDL:omg.org/CosTransactions/Coordinator:1.0",
                    "Coordinator"},
         [],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"get_coordinator", oe_tc(get_coordinator)},
	{"get_terminator", oe_tc(get_terminator)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosTransactions/Control:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/Control:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('ETraP_Server_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('ETraP_Server_impl', Reason, State).


%%%% Operation: get_terminator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
handle_call({OE_THIS, OE_Context, get_terminator, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_terminator, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_coordinator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
handle_call({OE_THIS, OE_Context, get_coordinator, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_coordinator, [], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('ETraP_Server_impl', OldVsn, State, Extra).

