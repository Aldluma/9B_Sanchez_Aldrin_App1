import 'package:flutter/material.dart';

class nombre extends StatelessWidget {
  const nombre({
    super.key,
    required this.avatarInitial,
    required this.name,
  });

  final String avatarInitial;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // CircleAvatar muestra un avatar circular con una inicial.
        CircleAvatar(
          child: Text(avatarInitial),
          backgroundColor: Colors.teal, // Color de fondo del avatar.
          foregroundColor: Colors.white, // Color del texto del avatar.
        ),
        const SizedBox(width: 10.0), // Espacio entre el avatar y el nombre.
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ],
    );
  }
}