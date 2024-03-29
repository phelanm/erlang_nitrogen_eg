%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2002-2010. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%

{application, et,
 [{description, "Event Tracer"},
  {vsn, "1.4.4.5"},
  {modules,
   [
    et,
    et_collector,
    et_gs_contents_viewer,
    et_gs_viewer,
    et_selector,
    et_viewer,
    et_wx_contents_viewer,
    et_wx_viewer
   ]},
  {registered, [et_collector]},
  {applications, [stdlib, kernel]},
  {env, []}
 ]}.
