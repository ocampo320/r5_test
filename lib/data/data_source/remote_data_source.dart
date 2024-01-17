import 'package:cloud_firestore/cloud_firestore.dart';

class RemoteDataSource {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Método para guardar datos en Firebase
  Future<void> saveData(
      String collectionName, Map<String, dynamic> data) async {
    // Agregar un nuevo documento a la colección
    DocumentReference documentReference =
        await _firestore.collection(collectionName).add(data);

    // Obtener el ID del documento recién agregado
    String documentID = documentReference.id;

    // Actualizar el documento con su ID
    await _firestore.collection(collectionName).doc(documentID).set(
      {'id': documentID},
      SetOptions(merge: true),
    );
  }

  // Método para consultar datos en Firebase
  Future<List<Map<String, dynamic>>> fetchData(String collectionName) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _firestore.collection(collectionName).get();
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  // Método para eliminar datos en Firebase
  Future<void> deleteData(String collectionName, String documentId) async {
    await _firestore.collection(collectionName).doc(documentId).delete();
  }
}
