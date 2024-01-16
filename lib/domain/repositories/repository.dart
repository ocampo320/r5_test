import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/entities/todo.dart';

abstract class Repository {
  Future<Either<CommonFailure, List<Todo>>> getTodos();
 Future<Either<CommonFailure, bool>> addTodo(Todo todo);
 Future<Either<CommonFailure, bool>> deleteTodo(Todo todo);
}
