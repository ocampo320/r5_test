import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/repositories/repository.dart';
import 'package:r5_test/domain/usecase/add_todo.dart';

class AddTodoImpl implements AddTodo {
  final Repository repository;

  AddTodoImpl(this.repository);

  @override
  Future<Either<CommonFailure, bool>> call(Todo todo) {
    return repository.addTodo(todo);
  }
}
