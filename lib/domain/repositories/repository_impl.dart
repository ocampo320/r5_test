import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/data/data_source/remote_data_source.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/repositories/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;
  RepositoryImpl(this.remoteDataSource);





  @override
  Future<Either<CommonFailure, bool>> addTodo(Todo booking) async {
    // TODO: implement getTodos
    throw UnimplementedError();
  }

  @override
  Future<Either<CommonFailure, List<Todo>>> getTodo() async {
   // TODO: implement getTodos
    throw UnimplementedError();
  }

  @override
  Future<Either<CommonFailure, bool>> deleteTodo(Todo todo) async {
   // TODO: implement getTodos
    throw UnimplementedError();
}

  @override
  Future<Either<CommonFailure, List<Todo>>> getTodos() {
    // TODO: implement getTodos
    throw UnimplementedError();
  }
}
