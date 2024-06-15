import 'package:flutter/material.dart';

class imagen extends StatelessWidget {
  const imagen({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(imageUrl), // Imagen del post.
        ),
      ],
    );
  }
}