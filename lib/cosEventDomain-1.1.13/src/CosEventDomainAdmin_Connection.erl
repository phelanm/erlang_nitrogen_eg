%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventDomainAdmin_Connection
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosEventDomain/src/CosEventDomainAdmin.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventDomainAdmin_Connection').
-ic_compiled("4_3_3").


-include("CosEventDomainAdmin.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosEventDomainAdmin/Connection:1.0",
                   "Connection",
                   [{"supplier_id",tk_long},
                    {"consumer_id",tk_long},
                    {"ctype",
                     {tk_enum,"IDL:omg.org/CosNotifyChannelAdmin/ClientType:1.0",
                              "ClientType",
                              ["ANY_EVENT","STRUCTURED_EVENT",
                               "SEQUENCE_EVENT"]}},
                    {"notification_style",
                     {tk_enum,"IDL:omg.org/CosEventDomainAdmin/NotificationStyle:1.0",
                              "NotificationStyle",
                              ["Push","Pull"]}}]}.

%% returns id
id() -> "IDL:omg.org/CosEventDomainAdmin/Connection:1.0".

%% returns name
name() -> "CosEventDomainAdmin_Connection".



