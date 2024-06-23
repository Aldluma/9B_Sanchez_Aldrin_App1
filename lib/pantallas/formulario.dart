import 'package:flutter/material.dart';

void main() => runApp(Formulario());

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _MyAppState();
}

class _MyAppState extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aldrin Sanchez',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario para el inicio de sesión'),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || !value.contains("@")) {
                        return "El correo no es válido";
                      }
                      int atIndex = value.indexOf("@");
                      if (atIndex == value.length - 1 ||
                          !value.substring(atIndex + 1).contains(".")) {
                        return "El correo debe de tener un dominio, ejemplo: ejemplo@ejemplo.com";
                      }
                      return null;  // Return null if no error
                    },
                    decoration: const InputDecoration(hintText: "Correo electrónico"),
                  ),
                ),
                Container(
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "La contraseña no puede estar vacía";
                      }
                      if (value.length < 8) {
                        return "Debe tener 8 o más caracteres";
                      }
                      if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        return "Debe contener al menos una letra mayúscula";
                      }
                      if (!RegExp(r'\d').hasMatch(value)) {
                        return "Debe contener al menos un número";
                      }
                      return null;  // Return null if no error
                    },
                    decoration: const InputDecoration(hintText: "Contraseña"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Excelente");
                      } else {
                        print("Error!");
                      }
                    },
                    child: const Text("Validar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
