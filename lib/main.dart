import 'package:flutter/material.dart';
import 'package:postaldrin/pantallas/PantallaPrincipal.dart';

// La función main es el punto de entrada de la aplicación.
void main() => runApp(const MyApp());

// MyApp es el widget principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp es un widget que envuelve toda la aplicación.
    return const MaterialApp(
      title: 'PostSociales',
      debugShowCheckedModeBanner: false, // Esta línea desactiva el banner de debug.
      home: PantallaPrincipal(),
    );
  }
}

