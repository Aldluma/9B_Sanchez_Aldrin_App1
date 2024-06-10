import 'package:flutter/material.dart';
import 'package:postaldrin/pantallas/Post.dart';

// La función main es el punto de entrada de la aplicación.
void main() => runApp(const MyApp());

// MyApp es el widget principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp es un widget que envuelve toda la aplicación.
    return const MaterialApp(
      title: 'PsotSociales',
      debugShowCheckedModeBanner: false, // Esta línea desactiva el banner de debug.
      home: Post(),
    );
  }
}

