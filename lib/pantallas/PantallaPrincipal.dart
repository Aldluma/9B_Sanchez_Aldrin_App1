// lib/main.dart
import 'package:flutter/material.dart';
import 'package:postaldrin/pantallas/formulario.dart';

import 'package:postaldrin/pantallas/listaFeed.dart';
import 'package:postaldrin/pantallas/perfil.dart';
import 'package:postaldrin/pantallas/buscar.dart';
import 'package:postaldrin/pantallas/tyc.dart';

// import 'package:postaldrin/datos/datos.dart';
// import 'package:postaldrin/widgets/botones.dart';
// import 'package:postaldrin/widgets/imagen.dart';
// import 'package:postaldrin/widgets/nombre.dart';
// import 'package:postaldrin/widgets/text.dart';
// Importar la lista de datos

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int actual = 0;
  final List<Widget> _paginas = [
    const listaFeed(),
    const perfil(),
    const buscar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldrin Sanchez Trejo'), // Título de la app bar.
        backgroundColor: Colors.teal, // Color de fondo de la app bar.
      ),
      body: Column(
        children: [
          Expanded(child: _paginas[actual]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tyc()),
                  );
                },
                child: const Text("Términos y Condiciones"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Formulario()),
                  );// Acción para el segundo botón
                },
                child: const Text("Formulario"),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: actual,
        onTap: (index) {
          setState(() {
            actual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "Perfil",
          ),
        ],
      ), // El cuerpo de la app será nuestro widget SocialMediaPosts.
    );
  }
}







// const SocialMediaPosts(),
// SocialMediaPosts es un widget que contiene una lista de posts.
// class SocialMediaPosts extends StatelessWidget {
//   const SocialMediaPosts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // ListView se usa para hacer que el contenido sea desplazable.
//     return Container(
//       color: Colors.teal.shade50, // Color de fondo de la lista.
//       child: ListView(
//         children: listaCards.map((post) {
//           return SocialMediaPost(
//             avatarInitial: post["avatarInitial"]!,
//             name: post["name"]!,
//             description: post["description"]!,
//             imageUrl: post["imageUrl"]!,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// // SocialMediaPost es un widget que representa un post individual.
// class SocialMediaPost extends StatelessWidget {
//   // Propiedades del widget.
//   final String avatarInitial;
//   final String name;
//   final String description;
//   final String imageUrl;

//   // Constructor para inicializar las propiedades.
//   const SocialMediaPost({
//     required this.avatarInitial,
//     required this.name,
//     required this.description,
//     required this.imageUrl,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Card es un widget que muestra una tarjeta con una sombra.
//     return Card(
//       margin: const EdgeInsets.all(10.0), // Margen alrededor de la tarjeta.
//       color: Colors.white, // Color de fondo de la tarjeta.
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0), // Bordes redondeados.
//       ),
//       elevation: 5.0, // Sombra alrededor de la tarjeta.
//       child: Padding(
//         padding: const EdgeInsets.all(10.0), // Relleno dentro de la tarjeta.
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos.
//           children: [
//             nombre(avatarInitial: avatarInitial, name: name),
//             const SizedBox(height: 10.0), // Espacio entre los rows
//             text(description: description),
//             const SizedBox(height: 10.0), // Espacio entre los rows
//             imagen(imageUrl: imageUrl),
//             const SizedBox(height: 10.0), // Espacio entre los rows
//             const SocialMediaPostButtons(), // Uso del nuevo widget
//           ],
//         ),
//       ),
//     );
//   }
// }
