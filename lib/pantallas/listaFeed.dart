import 'package:flutter/material.dart';
import 'package:postaldrin/datos/datos.dart';
import 'package:postaldrin/widgets/tarjetafeed.dart';

class listaFeed extends StatelessWidget {
  const listaFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaCards.length,
      itemBuilder: (context, index) {
        return SocialMediaPosts(tarjeta: listaCards[index]);
      }, 
    );
  }
}