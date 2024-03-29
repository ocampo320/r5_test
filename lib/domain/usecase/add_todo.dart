import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/entities/todo.dart';

abstract class AddTodo {
  Future<Either<CommonFailure, bool>> call(Todo todo);
}
