

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:r5_test/app_string.dart';
import 'package:r5_test/date_util.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/domain/usecase/add_todo.dart';
import 'package:r5_test/domain/usecase/delete_todo.dart';
import 'package:r5_test/domain/usecase/get_todo.dart';
import 'package:r5_test/domain/usecase/update_todo.dart';
import 'package:rxdart/rxdart.dart';

class BookingBloc {
  final AddTodo addTodo;
  final DeleteTodo deleteTodo;
  final GetTodos getTodos;
  final UpdateTodo updateTodo;

  final _todosController = BehaviorSubject<List<Todo>>();
  final _todoController = BehaviorSubject<Todo>();
  final _stateController = BehaviorSubject<TodoState>();
  final _dateController = BehaviorSubject<DateTime>();
  final _titleController = BehaviorSubject<String>();
  final _descriptionController = BehaviorSubject<String>();
  final _checkboxController = BehaviorSubject<bool>();

  // Stream para escuchar la lista de todos
  Stream<List<Todo>> get todosStream => _todosController.stream;
  Stream<Todo> get todoStream => _todoController.stream;
  Stream<TodoState> get stateStream => _stateController.stream;
  Stream<DateTime> get dateStream => _dateController.stream;
  Stream<String> get titleStream => _titleController.stream;
  Stream<String> get descriptionStream => _descriptionController.stream;
  Stream<bool> get checkBoxStream => _checkboxController.stream;

  BookingBloc(
      {required this.addTodo,
      required this.deleteTodo,
      required this.getTodos,
      required this.updateTodo}) {
    // Inicializar la lista de todos
    _loadTodos();
    _dateController.add(DateTime.now());
    _checkboxController.add(false);
  }

// Método para agregar un nuevo valor al stream
  void setDate(DateTime newDate) {
    _dateController.sink.add(newDate);
  }

  // Método para agregar un nuevo valor al stream
  void setCheckBox(bool value, String id) {
    _checkboxController.sink.add(value);
    updateTodos(id, value);
  }

  void setTitle(String title) {
    _titleController.sink.add(title);
  }

  void setDescription(String description) {
    _descriptionController.sink.add(description);
  }

  void setTodo(Todo todo) {
    _todoController.sink.add(todo);
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
  void saveTodo() async {
    var id = FirebaseFirestore.instance.collection('tu_coleccion').doc().id;
    Todo todo = Todo(
        id: id,
        status: "",
        date: DateUtils.formatDate(_dateController.value),
        description: _descriptionController.value,
        title: _titleController.value);

    try {
      await addTodo.call(todo);
      _loadTodos(); // Recargar la lista después de guardar
    } catch (error) {
      // Manejar errores según tu lógica de la aplicación
    }
  }

  // Método para actualizar  un  todo
  void updateTodos(String idDocument, bool value) async {
    try {
      String valueToUpdate = "";

      if (value == true) {
        valueToUpdate = AppStrings.done;
      } else {
        valueToUpdate = AppStrings.waiting;
      }

      await updateTodo.call(idDocument, "status",
          valueToUpdate); // Recargar la lista después de guardar
      _loadTodos();
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
