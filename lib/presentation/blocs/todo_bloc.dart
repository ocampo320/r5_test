import 'package:equatable/equatable.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/usecase/add_todo.dart';
import 'package:r5_test/domain/usecase/delete_todo.dart';
import 'package:r5_test/domain/usecase/get_todo.dart';
import 'package:rxdart/rxdart.dart';

class BookingBloc {
  final AddTodo addTodo;
  final DeleteTodo deleteTodo;
  final GetTodos getTodos;

  final _todosController = BehaviorSubject<List<Todo>>();
  final _todoController = BehaviorSubject<Todo>();
  final _stateController = BehaviorSubject<TodoState>();
  final _dateController = BehaviorSubject<DateTime>();

  // Stream para escuchar la lista de todos
  Stream<List<Todo>> get todosStream => _todosController.stream;
  Stream<Todo> get todoStream => _todoController.stream;
  Stream<TodoState> get stateStream => _stateController.stream;
  Stream<DateTime> get dateStream => _dateController.stream;

  BookingBloc({
    required this.addTodo,
    required this.deleteTodo,
    required this.getTodos,
  }) {
    // Inicializar la lista de todos
    _loadTodos();
    _dateController.add( DateTime.now());
  }

// Método para agregar un nuevo valor al stream
  void setDate(DateTime newDate) {
    _dateController.sink.add(newDate);
  }

  // Método para cargar todos
  void _loadTodos() async {
    try {
      final response = await getTodos.call();
      response.fold((l) => null, (r) {
        final List<Todo> todosResponse =
            r.map((data) => Todo.fromJson(data.toJson())).toList();
        _todosController.add(todosResponse);
      });
    } catch (error) {
      _stateController.add(TodoState.error("Error al cargar los todos"));
    }
  }

  // Método para guardar un nuevo todo
  void saveTodo(Todo todo) async {
    try {
      await addTodo.call(todo);
      _loadTodos(); // Recargar la lista después de guardar
    } catch (error) {
      // Manejar errores según tu lógica de la aplicación
    }
  }

  // Método para eliminar un todo
  void deleteTodos(String todoId) async {
    try {
      await deleteTodo.call(todoId);
      _loadTodos(); // Recargar la lista después de eliminar
    } catch (error) {
      // Manejar errores según tu lógica de la aplicación
    }
  }

  // Cerrar el bloc
  void dispose() {
    _todosController.close();
  }
}

class TodoState extends Equatable {
  final List<Todo>? todos;
  final String? error;

  const TodoState({this.todos, this.error});

  factory TodoState.initial() {
    return const TodoState(todos: null, error: null);
  }

  factory TodoState.success(List<Todo> todos) {
    return TodoState(todos: todos, error: null);
  }

  factory TodoState.error(String error) {
    return TodoState(todos: null, error: error);
  }

  @override
  List<Object?> get props => [todos, error];
}
