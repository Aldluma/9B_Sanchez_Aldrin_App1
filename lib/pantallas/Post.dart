import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldrin Sanchez Trejo'), // Título de la app bar.
        backgroundColor: Colors.teal, // Color de fondo de la app bar.
      ),
      body: const SocialMediaPosts(), // El cuerpo de la app será nuestro widget SocialMediaPosts.
    );
  }
}

// SocialMediaPosts es un widget que contiene dos posts de ejemplo.
class SocialMediaPosts extends StatelessWidget {
  const SocialMediaPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ListView se usa para hacer que el contenido sea desplazable.
    return Container(
      color: Colors.teal.shade50, // Color de fondo de la lista.
      child: ListView(
        children: const [
          // Dos instancias del widget SocialMediaPost.
          SocialMediaPost(
            avatarInitial: 'P',
            name: 'Pancho Pistolas',
            description: 'Disfrutando de un hermoso día jugando con Mario! Super Mario es una serie de videojuegos de plataformas creados por la empresa desarrolladora Nintendo y protagonizados por su mascota, Mario. Los videojuegos de Super Mario siguen las aventuras del fontanero Mario, por lo general en el ficticio Reino Champiñón.',
            imageUrl: 'assets/images/mario.png', // Imagen de Mario
          ),
          SocialMediaPost(
            avatarInitial: 'K',
            name: 'King Krazy',
            description: 'Jugando Crash Bandicoot, ¡qué nostalgia! Crash Bandicoot es un videojuego de plataformas desarrollado por Naughty Dog y publicado por Sony Computer Entertainment para la PlayStation en 1996. El jugador controla a Crash, un bandicut mejorado genéticamente creado por el científico loco Doctor Neo Cortex. La trama sigue a Crash en su intento por rescatar a su novia Tawna, y frustrar los planes del científico Neo Cortex para dominar el mundo.',
            imageUrl: 'assets/images/crash_bandicoot.png', // Imagen de Crash Bandicoot
          ),
        ],
      ),
    );
  }
}

// SocialMediaPost es un widget que representa un post individual.
class SocialMediaPost extends StatelessWidget {
  // Propiedades del widget.
  final String avatarInitial;
  final String name;
  final String description;
  final String imageUrl;

  // Constructor para inicializar las propiedades.
  const SocialMediaPost({
    required this.avatarInitial,
    required this.name,
    required this.description,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Card es un widget que muestra una tarjeta con una sombra.
    return Card(
      margin: const EdgeInsets.all(10.0), // Margen alrededor de la tarjeta.
      color: Colors.white, // Color de fondo de la tarjeta.
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Bordes redondeados.
      ),
      elevation: 5.0, // Sombra alrededor de la tarjeta.
      child: Padding(
        padding: const EdgeInsets.all(10.0), // Relleno dentro de la tarjeta.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos.
          children: [
            // Fila para el avatar y el nombre.
            Row(
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
            ),
            const SizedBox(height: 10.0), // Espacio vertical.
            Text(
              description,
              textAlign: TextAlign.justify, // Alineación del texto.
            ), // Descripción del post.
            const SizedBox(height: 10.0), // Espacio vertical.
            Image.asset(imageUrl), // Imagen del post.
            const SizedBox(height: 10.0), // Espacio vertical.
            // Fila para los botones de "Me gusta", "Comentar" y "Compartir".
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribución de los botones.
              children: [
                // Botón de "Me gusta".
                _buildButton(Icons.thumb_up, 'Me gusta', Colors.blue),
                // Botón de "Comentar".
                _buildButton(Icons.comment, 'Comentar', Colors.green),
                // Botón de "Compartir".
                _buildButton(Icons.share, 'Compartir', Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Función auxiliar para construir un botón con un icono y un texto.
  Widget _buildButton(IconData icon, String label, Color color) {
    return ElevatedButton(
      onPressed: () {}, // Acción al presionar el botón.
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color, // Color del texto del botón.
      ),
      child: Column(
        children: [
          Icon(icon), // Icono del botón.
          Text(label), // Texto del botón.
        ],
      ),
    );
  }
}
