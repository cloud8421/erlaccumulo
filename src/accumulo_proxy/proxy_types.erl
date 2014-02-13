%%
%% Autogenerated by Thrift Compiler (0.9.1)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(proxy_types).

-include("proxy_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('key') ->
  {struct, [{1, string},
          {2, string},
          {3, string},
          {4, string},
          {5, i64}]}
;

struct_info('columnUpdate') ->
  {struct, [{1, string},
          {2, string},
          {3, string},
          {4, i64},
          {5, string},
          {6, bool}]}
;

struct_info('keyValue') ->
  {struct, [{1, {struct, {'proxy_types', 'key'}}},
          {2, string}]}
;

struct_info('scanResult') ->
  {struct, [{1, {list, {struct, {'proxy_types', 'keyValue'}}}},
          {2, bool}]}
;

struct_info('range') ->
  {struct, [{1, {struct, {'proxy_types', 'key'}}},
          {2, bool},
          {3, {struct, {'proxy_types', 'key'}}},
          {4, bool}]}
;

struct_info('scanColumn') ->
  {struct, [{1, string},
          {2, string}]}
;

struct_info('iteratorSetting') ->
  {struct, [{1, i32},
          {2, string},
          {3, string},
          {4, {map, string, string}}]}
;

struct_info('scanOptions') ->
  {struct, [{1, {set, string}},
          {2, {struct, {'proxy_types', 'range'}}},
          {3, {list, {struct, {'proxy_types', 'scanColumn'}}}},
          {4, {list, {struct, {'proxy_types', 'iteratorSetting'}}}},
          {5, i32}]}
;

struct_info('batchScanOptions') ->
  {struct, [{1, {set, string}},
          {2, {list, {struct, {'proxy_types', 'range'}}}},
          {3, {list, {struct, {'proxy_types', 'scanColumn'}}}},
          {4, {list, {struct, {'proxy_types', 'iteratorSetting'}}}},
          {5, i32}]}
;

struct_info('keyValueAndPeek') ->
  {struct, [{1, {struct, {'proxy_types', 'keyValue'}}},
          {2, bool}]}
;

struct_info('keyExtent') ->
  {struct, [{1, string},
          {2, string},
          {3, string}]}
;

struct_info('column') ->
  {struct, [{1, string},
          {2, string},
          {3, string}]}
;

struct_info('activeScan') ->
  {struct, [{1, string},
          {2, string},
          {3, string},
          {4, i64},
          {5, i64},
          {6, i32},
          {7, i32},
          {8, {struct, {'proxy_types', 'keyExtent'}}},
          {9, {list, {struct, {'proxy_types', 'column'}}}},
          {10, {list, {struct, {'proxy_types', 'iteratorSetting'}}}},
          {11, {list, string}}]}
;

struct_info('activeCompaction') ->
  {struct, [{1, {struct, {'proxy_types', 'keyExtent'}}},
          {2, i64},
          {3, {list, string}},
          {4, string},
          {5, i32},
          {6, i32},
          {7, string},
          {8, i64},
          {9, i64},
          {10, {list, {struct, {'proxy_types', 'iteratorSetting'}}}}]}
;

struct_info('writerOptions') ->
  {struct, [{1, i64},
          {2, i64},
          {3, i64},
          {4, i32}]}
;

struct_info('unknownScanner') ->
  {struct, [{1, string}]}
;

struct_info('unknownWriter') ->
  {struct, [{1, string}]}
;

struct_info('noMoreEntriesException') ->
  {struct, [{1, string}]}
;

struct_info('accumuloException') ->
  {struct, [{1, string}]}
;

struct_info('accumuloSecurityException') ->
  {struct, [{1, string}]}
;

struct_info('tableNotFoundException') ->
  {struct, [{1, string}]}
;

struct_info('tableExistsException') ->
  {struct, [{1, string}]}
;

struct_info('mutationsRejectedException') ->
  {struct, [{1, string}]}
;

struct_info('i am a dummy struct') -> undefined.

struct_info_ext('key') ->
  {struct, [{1, undefined, string, 'row', undefined},
          {2, undefined, string, 'colFamily', undefined},
          {3, undefined, string, 'colQualifier', undefined},
          {4, undefined, string, 'colVisibility', undefined},
          {5, optional, i64, 'timestamp', undefined}]}
;

struct_info_ext('columnUpdate') ->
  {struct, [{1, undefined, string, 'colFamily', undefined},
          {2, undefined, string, 'colQualifier', undefined},
          {3, optional, string, 'colVisibility', undefined},
          {4, optional, i64, 'timestamp', undefined},
          {5, optional, string, 'value', undefined},
          {6, optional, bool, 'deleteCell', undefined}]}
;

struct_info_ext('keyValue') ->
  {struct, [{1, undefined, {struct, {'proxy_types', 'key'}}, 'key', #key{}},
          {2, undefined, string, 'value', undefined}]}
;

struct_info_ext('scanResult') ->
  {struct, [{1, undefined, {list, {struct, {'proxy_types', 'keyValue'}}}, 'results', []},
          {2, undefined, bool, 'more', undefined}]}
;

struct_info_ext('range') ->
  {struct, [{1, undefined, {struct, {'proxy_types', 'key'}}, 'start', #key{}},
          {2, undefined, bool, 'startInclusive', undefined},
          {3, undefined, {struct, {'proxy_types', 'key'}}, 'stop', #key{}},
          {4, undefined, bool, 'stopInclusive', undefined}]}
;

struct_info_ext('scanColumn') ->
  {struct, [{1, undefined, string, 'colFamily', undefined},
          {2, optional, string, 'colQualifier', undefined}]}
;

struct_info_ext('iteratorSetting') ->
  {struct, [{1, undefined, i32, 'priority', undefined},
          {2, undefined, string, 'name', undefined},
          {3, undefined, string, 'iteratorClass', undefined},
          {4, undefined, {map, string, string}, 'properties', dict:new()}]}
;

struct_info_ext('scanOptions') ->
  {struct, [{1, optional, {set, string}, 'authorizations', sets:new()},
          {2, optional, {struct, {'proxy_types', 'range'}}, 'range', #range{}},
          {3, optional, {list, {struct, {'proxy_types', 'scanColumn'}}}, 'columns', []},
          {4, optional, {list, {struct, {'proxy_types', 'iteratorSetting'}}}, 'iterators', []},
          {5, optional, i32, 'bufferSize', undefined}]}
;

struct_info_ext('batchScanOptions') ->
  {struct, [{1, optional, {set, string}, 'authorizations', sets:new()},
          {2, optional, {list, {struct, {'proxy_types', 'range'}}}, 'ranges', []},
          {3, optional, {list, {struct, {'proxy_types', 'scanColumn'}}}, 'columns', []},
          {4, optional, {list, {struct, {'proxy_types', 'iteratorSetting'}}}, 'iterators', []},
          {5, optional, i32, 'threads', undefined}]}
;

struct_info_ext('keyValueAndPeek') ->
  {struct, [{1, undefined, {struct, {'proxy_types', 'keyValue'}}, 'keyValue', #keyValue{}},
          {2, undefined, bool, 'hasNext', undefined}]}
;

struct_info_ext('keyExtent') ->
  {struct, [{1, undefined, string, 'tableId', undefined},
          {2, undefined, string, 'endRow', undefined},
          {3, undefined, string, 'prevEndRow', undefined}]}
;

struct_info_ext('column') ->
  {struct, [{1, undefined, string, 'colFamily', undefined},
          {2, undefined, string, 'colQualifier', undefined},
          {3, undefined, string, 'colVisibility', undefined}]}
;

struct_info_ext('activeScan') ->
  {struct, [{1, undefined, string, 'client', undefined},
          {2, undefined, string, 'user', undefined},
          {3, undefined, string, 'table', undefined},
          {4, undefined, i64, 'age', undefined},
          {5, undefined, i64, 'idleTime', undefined},
          {6, undefined, i32, 'type', undefined},
          {7, undefined, i32, 'state', undefined},
          {8, undefined, {struct, {'proxy_types', 'keyExtent'}}, 'extent', #keyExtent{}},
          {9, undefined, {list, {struct, {'proxy_types', 'column'}}}, 'columns', []},
          {10, undefined, {list, {struct, {'proxy_types', 'iteratorSetting'}}}, 'iterators', []},
          {11, undefined, {list, string}, 'authorizations', []}]}
;

struct_info_ext('activeCompaction') ->
  {struct, [{1, undefined, {struct, {'proxy_types', 'keyExtent'}}, 'extent', #keyExtent{}},
          {2, undefined, i64, 'age', undefined},
          {3, undefined, {list, string}, 'inputFiles', []},
          {4, undefined, string, 'outputFile', undefined},
          {5, undefined, i32, 'type', undefined},
          {6, undefined, i32, 'reason', undefined},
          {7, undefined, string, 'localityGroup', undefined},
          {8, undefined, i64, 'entriesRead', undefined},
          {9, undefined, i64, 'entriesWritten', undefined},
          {10, undefined, {list, {struct, {'proxy_types', 'iteratorSetting'}}}, 'iterators', []}]}
;

struct_info_ext('writerOptions') ->
  {struct, [{1, undefined, i64, 'maxMemory', undefined},
          {2, undefined, i64, 'latencyMs', undefined},
          {3, undefined, i64, 'timeoutMs', undefined},
          {4, undefined, i32, 'threads', undefined}]}
;

struct_info_ext('unknownScanner') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('unknownWriter') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('noMoreEntriesException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('accumuloException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('accumuloSecurityException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('tableNotFoundException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('tableExistsException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('mutationsRejectedException') ->
  {struct, [{1, undefined, string, 'msg', undefined}]}
;

struct_info_ext('i am a dummy struct') -> undefined.
