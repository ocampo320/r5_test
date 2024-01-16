import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/repositories/repository.dart';
import 'package:r5_test/domain/usecase/delete_todo.dart';

class DeleteTodoImpl implements DeleteTodo {
  final Repository repository;

  DeleteTodoImpl(this.repository);

  @override
  Future<Either<CommonFailure, bool>> call(Todo todo) {
    return repository.deleteTodo(todo);
  }
}
