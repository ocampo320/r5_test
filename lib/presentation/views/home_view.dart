import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:r5_test/di/app_module.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/presentation/blocs/todo_bloc.dart';
import 'package:r5_test/presentation/views/add_todo_form.dart';
import 'package:r5_test/presentation/widgets/custom_alert_dialog_widget.dart';
import 'package:r5_test/presentation/widgets/custom_app_bar_widget.dart';
import 'package:r5_test/presentation/widgets/custom_todo_card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

BookingBloc? bookingBloc;

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bookingBloc = AppModule().provideBookingBloc();
  }

  @override
  Widget build(BuildContext context) {
    bookingBloc!.getTodos();
    Map<String, dynamic> misDatos = {
      "title": "Ejemplo de título",
      "description": "Ejemplo de descripción",
      "status": "Ejemplo de estado",
      "date": "Ejemplo de fecha",
    };
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add_comment_rounded),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(
                    title: 'Confirmación',
                    content: AddTodoFormContent(bookingBloc: bookingBloc),
                    onConfirm: () {
                      // Lógica a realizar cuando el usuario confirma
                    },
                  );
                },
              );
            }),
        appBar: const CustomAppBarWidget(title: 'Todo List'),
        body: StreamBuilder<List<Todo>>(
          stream: bookingBloc?.todosStream, // Escucha el stream de todos
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final todos = snapshot.data!;

              if (todos.isEmpty) {
                return const Center(
                  child: Text('No hay elementos en la lista'),
                );
              }

              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return CustomTodoCardWidget(todo: todos[index]);
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

void guardarDatosEnFirestore(Map<String, dynamic> data) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Datos a guardar
  try {
    // Inicializa Firebase
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Agrega un nuevo documento a la colección "tu_coleccion" con los datos proporcionados
    await firestore.collection('tu_coleccion').add(data);

    print('Datos guardados exitosamente en Cloud Firestore');
  } catch (error) {
    print('Error al guardar datos en Cloud Firestore: $error');
  }
}
