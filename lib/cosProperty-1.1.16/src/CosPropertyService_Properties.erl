%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_Properties
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_Properties').
-ic_compiled("4_3_3").


-include("CosPropertyService.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,{tk_struct,"IDL:omg.org/CosPropertyService/Property:1.0",
                                "Property",
                                [{"property_name",{tk_string,0}},
                                 {"property_value",tk_any}]},
                     0}.

%% returns id
id() -> "IDL:omg.org/CosPropertyService/Properties:1.0".

%% returns name
name() -> "CosPropertyService_Properties".



