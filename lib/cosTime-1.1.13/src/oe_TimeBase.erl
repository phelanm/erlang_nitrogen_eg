%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_TimeBase
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosTime/src/TimeBase.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_TimeBase).
-ic_compiled("4_3_3").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/TimeBase:1.0", "TimeBase", "1.0"),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/TimeBase/TimeT:1.0", "TimeT", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong)),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/TimeBase/InaccuracyT:1.0", "InaccuracyT", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong)),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/TimeBase/TdfT:1.0", "TdfT", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_short)),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/TimeBase/UtcT:1.0", "UtcT", "1.0", [#structmember{name="time", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong)}, #structmember{name="inacclo", type=tk_ulong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulong)}, #structmember{name="inacchi", type=tk_ushort, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ushort)}, #structmember{name="tdf", type=tk_short, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_short)}]),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/TimeBase/IntervalT:1.0", "IntervalT", "1.0", [#structmember{name="lower_bound", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong)}, #structmember{name="upper_bound", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong)}]),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/TimeBase/TimeT:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/TimeBase/TimeT:1.0"})
 end.


%% No included idl-files detected.
include_reg_test(_OE_IFR) -> true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/TimeBase/IntervalT:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/TimeBase/UtcT:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/TimeBase/TdfT:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/TimeBase/InaccuracyT:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/TimeBase/TimeT:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/TimeBase:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    [].

