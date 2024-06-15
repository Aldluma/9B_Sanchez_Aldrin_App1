import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            description,
            maxLines: 3,
            textAlign: TextAlign.justify, // Alineación del texto.
          ),
        ),
      ],
    );
  }
}