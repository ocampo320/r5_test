import 'package:r5_test/domain/usecase/add_todo.dart';
import 'package:r5_test/domain/usecase/delete_todo.dart';
import 'package:r5_test/domain/usecase/get_todo.dart';

class BookingBloc {
  final AddTodo addTodo;
  final DeleteTodo deleteTodo;
  final GetTodos getTodos;

  BookingBloc({
    required this.addTodo,
    required this.deleteTodo,
    required this.getTodos,
  }) {
    // Resto del constructor...
  }
  // Resto del código...
}
