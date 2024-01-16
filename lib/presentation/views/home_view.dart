import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    Map<String, dynamic> misDatos = {
      "title": "Ejemplo de título",
      "description": "Ejemplo de descripción",
      "status": "Ejemplo de estado",
      "date": "Ejemplo de fecha",
    };
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Text("data"),
          onTap: () {
            guardarDatosEnFirestore(misDatos);
          },
        )
      ]),
    ));
  }

  void guardarDatosEnFirestore(Map<String, dynamic> data) async {
     WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
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
}
