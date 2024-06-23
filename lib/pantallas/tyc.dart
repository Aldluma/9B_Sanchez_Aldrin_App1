import 'package:flutter/material.dart';

void main() => runApp(const tyc());

class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
      
    body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.lightBlue[50],
        child: Center(
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TÉRMINOS Y CONDICIONES',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  '''Bienvenido a SocialApp. Al utilizar nuestra aplicación, usted acepta los siguientes términos:

1. Uso de la Aplicación
Use SocialApp de manera responsable. No publique contenido ilegal, ofensivo o que infrinja derechos.

2. Privacidad
Protegemos su información personal. Consulte nuestra Política de Privacidad para más detalles.

3. Contenido del Usuario
Usted retiene derechos sobre su contenido, pero nos otorga una licencia para usarlo en SocialApp.

4. Conducta Prohibida
No use SocialApp para actividades ilegales, ofensivas o que infrinjan derechos de terceros.

5. Modificaciones
Podemos modificar estos términos en cualquier momento. Las modificaciones serán efectivas al publicarse.

6. Terminación
Podemos suspender o terminar su acceso a SocialApp por incumplimiento de estos términos.

7. Contacto
Si tiene preguntas, contáctenos a través del servicio de atención al cliente en la aplicación.

Gracias por usar SocialApp.

Fecha de vigencia: [Insertar fecha]''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}