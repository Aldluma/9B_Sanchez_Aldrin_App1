import 'package:flutter/material.dart';

class SocialMediaPostButtons extends StatelessWidget {
  const SocialMediaPostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribución de los botones.
      children: [
        // Botón de "Me gusta".
        _buildButton(Icons.thumb_up, 'Me gusta', Colors.blue),
        // Botón de "Comentar".
        _buildButton(Icons.comment, 'Comentar', Colors.green),
        // Botón de "Compartir".
        _buildButton(Icons.share, 'Compartir', Colors.red),
      ],
    );
  }

  // Función auxiliar para construir un botón con un icono y un texto.
  Widget _buildButton(IconData icon, String label, Color color) {
    return ElevatedButton(
      onPressed: () {}, // Acción al presionar el botón.
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color, // Color del texto del botón.
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
