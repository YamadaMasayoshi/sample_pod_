/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import 'package:sample_pod_server/src/generated/example.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'todo': _i2.TodoEndpoint()
        ..initialize(
          server,
          'todo',
          null,
        )
    };
    connectors['todo'] = _i1.EndpointConnector(
      name: 'todo',
      endpoint: endpoints['todo']!,
      methodConnectors: {
        'getAllTodos': _i1.MethodConnector(
          name: 'getAllTodos',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['todo'] as _i2.TodoEndpoint).getAllTodos(session),
        ),
        'addTodo': _i1.MethodConnector(
          name: 'addTodo',
          params: {
            'todo': _i1.ParameterDescription(
              name: 'todo',
              type: _i1.getType<_i3.Todo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['todo'] as _i2.TodoEndpoint).addTodo(
            session,
            todo: params['todo'],
          ),
        ),
        'updateTodo': _i1.MethodConnector(
          name: 'updateTodo',
          params: {
            'todo': _i1.ParameterDescription(
              name: 'todo',
              type: _i1.getType<_i3.Todo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['todo'] as _i2.TodoEndpoint).updateTodo(
            session,
            todo: params['todo'],
          ),
        ),
        'deleteTodo': _i1.MethodConnector(
          name: 'deleteTodo',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['todo'] as _i2.TodoEndpoint).deleteTodo(
            session,
            id: params['id'],
          ),
        ),
      },
    );
  }
}
