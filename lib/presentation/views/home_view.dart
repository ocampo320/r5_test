import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:r5_test/app_string.dart';
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
    super.initState();
    bookingBloc = AppModule().provideBookingBloc();
  }

  @override
  Widget build(BuildContext context) {
    bookingBloc!.getTodos();
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add_comment_rounded),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(
                    title: AppStrings.accept,
                    content: AddTodoFormContent(bookingBloc: bookingBloc),
                    onConfirm: () async {
                      bookingBloc?.saveTodo();
                      await bookingBloc?.getTodos();
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
                  child: Text(AppStrings.noElements),
                );
              }

              return Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 16),
                child: ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    return CustomTodoCardWidget(
                      bookingBloc:bookingBloc ,
                      onChanged: (v){},
                      todo: todos[index],
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomAlertDialog(
                              title: AppStrings.alert,
                              content: const Text(AppStrings.deleteMesagges),
                              onConfirm: () async {
                                bookingBloc
                                    ?.deleteTodos(todos[index].id.toString());
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                ),
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
