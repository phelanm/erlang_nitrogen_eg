%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNaming_NamingContext_CannotProceed
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/orber/COSS/CosNaming/cos_naming.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNaming_NamingContext_CannotProceed').
-ic_compiled("4_3_3").


-include("CosNaming_NamingContext.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosNaming/NamingContext/CannotProceed:1.0",
            "CannotProceed",
            [{"cxt",
              {tk_objref,"IDL:omg.org/CosNaming/NamingContext:1.0",
                  "NamingContext"}},
             {"rest_of_name",
              {tk_sequence,
                  {tk_struct,"IDL:omg.org/CosNaming/NameComponent:1.0",
                      "NameComponent",
                      [{"id",{tk_string,0}},{"kind",{tk_string,0}}]},
                  0}}]}.

%% returns id
id() -> "IDL:omg.org/CosNaming/NamingContext/CannotProceed:1.0".

%% returns name
name() -> "CosNaming_NamingContext_CannotProceed".



