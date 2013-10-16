%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosFileTransfer_FileIterator
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosFileTransfer/src/CosFileTransfer.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosFileTransfer_FileIterator').
-ic_compiled("4_3_3").


%% Interface functions
-export([next_one/1, next_one/2, next_n/2]).
-export([next_n/3, destroy/1, destroy/2]).

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



%%%% Operation: next_one
%% 
%%   Returns: RetVal, F
%%
next_one(OE_THIS) ->
    corba:call(OE_THIS, next_one, [], ?MODULE).

next_one(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, next_one, [], ?MODULE, OE_Options).

%%%% Operation: next_n
%% 
%%   Returns: RetVal, Fl
%%
next_n(OE_THIS, How_many) ->
    corba:call(OE_THIS, next_n, [How_many], ?MODULE).

next_n(OE_THIS, OE_Options, How_many) ->
    corba:call(OE_THIS, next_n, [How_many], ?MODULE, OE_Options).

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
destroy(OE_THIS) ->
    corba:call(OE_THIS, destroy, [], ?MODULE).

destroy(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, destroy, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosFileTransfer/FileIterator:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(next_one) -> 
	{tk_boolean,[],
            [{tk_struct,"IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                 "FileWrapper",
                 [{"the_file",
                   {tk_objref,"IDL:omg.org/CosFileTransfer/File:1.0","File"}},
                  {"file_type",
                   {tk_enum,"IDL:omg.org/CosFileTransfer/FileType:1.0",
                       "FileType",
                       ["nfile","ndirectory"]}}]}]};
oe_tc(next_n) -> 
	{tk_boolean,
            [tk_ulong],
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                     "FileWrapper",
                     [{"the_file",
                       {tk_objref,"IDL:omg.org/CosFileTransfer/File:1.0",
                           "File"}},
                      {"file_type",
                       {tk_enum,"IDL:omg.org/CosFileTransfer/FileType:1.0",
                           "FileType",
                           ["nfile","ndirectory"]}}]},
                 0}]};
oe_tc(destroy) -> 
	{tk_void,[],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"destroy", oe_tc(destroy)},
	{"next_n", oe_tc(next_n)},
	{"next_one", oe_tc(next_one)}].




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
    "IDL:omg.org/CosFileTransfer/FileIterator:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosFileTransfer/FileIterator:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosFileTransfer_FileIterator_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosFileTransfer_FileIterator_impl', Reason, State).


%%%% Operation: next_one
%% 
%%   Returns: RetVal, F
%%
handle_call({OE_THIS, OE_Context, next_one, []}, _, OE_State) ->
  corba:handle_call('CosFileTransfer_FileIterator_impl', next_one, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: next_n
%% 
%%   Returns: RetVal, Fl
%%
handle_call({OE_THIS, OE_Context, next_n, [How_many]}, _, OE_State) ->
  corba:handle_call('CosFileTransfer_FileIterator_impl', next_n, [How_many], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, destroy, []}, _, OE_State) ->
  corba:handle_call('CosFileTransfer_FileIterator_impl', destroy, [], OE_State, OE_Context, OE_THIS, false);



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
handle_info(Info, State) ->
    corba:handle_info('CosFileTransfer_FileIterator_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosFileTransfer_FileIterator_impl', OldVsn, State, Extra).

