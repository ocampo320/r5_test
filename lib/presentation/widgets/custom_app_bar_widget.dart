import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const CustomAppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0, // Ajusta el tamaño del texto según tus preferencias
        ),
      ),
      actions: [
        // Puedes agregar acciones en la parte derecha del app bar si es necesario
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            // Acción al presionar el ícono de configuración
          },
        ),
      ],
      // Ajusta otros atributos del AppBar según tus necesidades
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
