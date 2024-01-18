import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';

abstract class DeleteTodo {
  Future<Either<CommonFailure, bool>> call(String todo);
}
