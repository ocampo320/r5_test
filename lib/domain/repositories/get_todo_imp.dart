


import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/repositories/repository.dart';
import 'package:r5_test/domain/usecase/get_todo.dart';


class GetTodoImpl implements GetBookings {
  final Repository repository;

  GetTodoImpl(this.repository);

  @override
  Future<Either<CommonFailure, List<Todo>>> call() {
    return repository.getTodos();
  }
}