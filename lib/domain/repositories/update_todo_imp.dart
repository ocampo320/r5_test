import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/domain/repositories/repository.dart';
import 'package:r5_test/domain/usecase/update_todo.dart';

class UpdateTodoImpl implements UpdateTodo {
  final Repository repository;

  UpdateTodoImpl(this.repository);

  @override
  Future<Either<CommonFailure, bool>> call(String documentId,String fieldName, dynamic value) {
    return repository.updateTodo(documentId,  fieldName,value);
  } 
}
