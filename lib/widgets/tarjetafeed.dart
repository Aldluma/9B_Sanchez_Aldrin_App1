//SocialMediaPosts es un widget que contiene una lista de posts.
import 'package:flutter/material.dart';
import 'package:postaldrin/widgets/botones.dart';
import 'package:postaldrin/widgets/imagen.dart';
import 'package:postaldrin/widgets/nombre.dart';
import 'package:postaldrin/widgets/text.dart';

class SocialMediaPosts extends StatelessWidget {
  const SocialMediaPosts({
    super.key,
    required this.tarjeta,
    });

     final Map<String, String> tarjeta;

  @override
  Widget build(BuildContext context) {
    // ListView se usa para hacer que el contenido sea desplazable.
    return Container(
      color: Color.fromARGB(255, 176, 176, 176), // Color de fondo de la lista.
      child: Column(
         //alinea los elementos de manera uniforme
        children: [
          const SizedBox(height: 10.0),
          nombre(avatarInitial: tarjeta["avatarInitial"]!, name: tarjeta["name"]!,),
          const SizedBox(height: 10.0),
          text(description: tarjeta["description"]!,),
          const SizedBox(height: 10.0),//para que se muestre los puntos suspensivos al final del texto
          imagen(imageUrl: tarjeta["imageUrl"]!),
          const SizedBox(height: 10.0),
          const SocialMediaPostButtons(),
          const SizedBox(height: 10.0),
        ],
      )
    );
  }
}
