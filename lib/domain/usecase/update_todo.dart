import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';

abstract class UpdateTodo {
  Future<Either<CommonFailure, bool>> call(String   documentId,String fieldName, dynamic value);
}