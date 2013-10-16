%%------------------------------------------------------------
%%
%% Erlang header file
%% 
%% Target: CosFileTransfer
%% Source: /tmp/buildd/erlang-16.b.2-dfsg/lib/cosFileTransfer/src/CosFileTransfer.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------


-ifndef(COSFILETRANSFER_HRL).
-define(COSFILETRANSFER_HRL, true).


-record('CosFileTransfer_CommandNotImplementedException', {'OE_ID'="IDL:omg.org/CosFileTransfer/CommandNotImplementedException:1.0", reason}).
-record('CosFileTransfer_SessionException', {'OE_ID'="IDL:omg.org/CosFileTransfer/SessionException:1.0", reason}).
-record('CosFileTransfer_TransferException', {'OE_ID'="IDL:omg.org/CosFileTransfer/TransferException:1.0", reason}).
-record('CosFileTransfer_FileNotFoundException', {'OE_ID'="IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0", reason}).
-record('CosFileTransfer_RequestFailureException', {'OE_ID'="IDL:omg.org/CosFileTransfer/RequestFailureException:1.0", reason}).
-record('CosFileTransfer_IllegalOperationException', {'OE_ID'="IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0", reason}).
-record('CosFileTransfer_AccessLevel', {read, insert, replace, extend, erase, read_attr, change_attr, delete}).
-record('CosFileTransfer_ProtocolSupport', {protocol_name, addresses}).
-record('CosFileTransfer_FileWrapper', {the_file, file_type}).


-endif.


