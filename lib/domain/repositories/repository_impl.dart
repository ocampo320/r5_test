import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:r5_test/common_failure.dart';
import 'package:r5_test/data/data_source/remote_data_source.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/repositories/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;
  RepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<CommonFailure, bool>> addTodo(Todo todo) async {
    try {
      // Llama al método de RemoteDataSource para guardar el Todo
      await remoteDataSource.saveData("tu_coleccion", todo.toJson());
      return const Right(true); // Indica que la operación fue exitosa
    } catch (e) {
      // Manejo de errores, puedes personalizar según tus necesidades
      return left(CommonFailure.data(message: e.toString()));
    }
  }

  @override
  Future<Either<CommonFailure, List<Todo>>> getTodos() async {
    try {
      // Llama al método de RemoteDataSource para obtener la lista de Todos
      final todos = await remoteDataSource.fetchData("tu_coleccion");
      final List<Todo> todosResponse =
          todos.map((data) => Todo.fromJson(data)).toList();
      return Right(todosResponse); // Retorna la lista de Todos
    } catch (e) {
      // Manejo de errores, puedes personalizar según tus necesidades
      return left(CommonFailure.data(message: e.toString()));
    }
  }

  @override
  Future<Either<CommonFailure, bool>> deleteTodo(String todo) async {
    try {
      // Llama al método de RemoteDataSource para eliminar el Todo
      await remoteDataSource.deleteData("tu_coleccion", todo);
      return const Right(true); // Indica que la operación fue exitosa
    } catch (e) {
      // Manejo de errores, puedes personalizar según tus necesidades

      return left(CommonFailure.data(message: e.toString()));
    }
  }
  
  @override
  Future<Either<CommonFailure, bool>> updateTodo(String documentId,String fieldName, value) async{
    try {
    // Obtén una referencia al documento que deseas actualizar
    final DocumentReference documentReference = FirebaseFirestore.instance.collection('tu_coleccion').doc(documentId);
    // Actualiza solo el campo especificado utilizando SetOptions con merge: true
    await documentReference.set({fieldName: value}, SetOptions(merge: true));
     return const Right(true); 
  } catch (e) {
     return left(CommonFailure.data(message: e.toString()));
  }
  }
}

@override
Future<Either<CommonFailure, List<Todo>>> getTodos() {
  throw UnimplementedError();
}
