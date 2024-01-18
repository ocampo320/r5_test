import 'package:r5_test/data/data_source/remote_data_source.dart';
import 'package:r5_test/domain/repositories/add_todo_imp.dart';
import 'package:r5_test/domain/repositories/delete_todo_imp.dart';
import 'package:r5_test/domain/repositories/get_todo_imp.dart';
import 'package:r5_test/domain/repositories/repository.dart';
import 'package:r5_test/domain/repositories/repository_impl.dart';
import 'package:r5_test/domain/repositories/update_todo_imp.dart';
import 'package:r5_test/domain/usecase/add_todo.dart';
import 'package:r5_test/domain/usecase/delete_todo.dart';
import 'package:r5_test/domain/usecase/get_todo.dart';
import 'package:r5_test/domain/usecase/update_todo.dart';
import 'package:r5_test/presentation/blocs/todo_bloc.dart';

class AppModule {
  static final AppModule _instance = AppModule._internal();

  factory AppModule() {
    return _instance;
  }

  AppModule._internal();

  GetTodos provideGetTodos(Repository repository) {
    return GetTodoImpl(repository);
  }

  AddTodo provideAddTodo(Repository repository) {
    return AddTodoImpl(repository);
  }
  UpdateTodo provideUpdateTodo(Repository repository) {
    return UpdateTodoImpl(repository);
  }

  DeleteTodo provideDeleteTodo(Repository repository) {
    return DeleteTodoImpl(repository);
  }
  Repository provideRepository(RemoteDataSource remoteDataSource) {
    return RepositoryImpl(remoteDataSource);
  }
RemoteDataSource provideRemoteDataSource() {
    return RemoteDataSource();
  }
 

  BookingBloc provideBookingBloc() {
    final repository = provideRepository(provideRemoteDataSource());
    return BookingBloc(
      updateTodo:provideUpdateTodo(repository) ,
      getTodos: provideGetTodos(repository),
      addTodo: provideAddTodo(repository),
      deleteTodo: provideDeleteTodo(repository),
    );
  }
}
