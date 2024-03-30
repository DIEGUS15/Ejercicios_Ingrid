import 'package:flutter/material.dart';

class TiendaImage extends StatelessWidget {
  const TiendaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 193, 227, 248),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Color de la sombra
                  spreadRadius: 2, // Radio de expansión de la sombra
                  blurRadius: 4, // Radio de desenfoque de la sombra
                  offset: const Offset(
                      2, 4), // Desplazamiento de la sombra (vertical)
                ),
              ],
            ),

            //Segundo circulo
            child: Center(
              child: ClipOval(
                child: Container(
                  width: 140,
                  height: 140,
                  color: const Color.fromARGB(255, 26, 41, 151),
                  child: Center(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1077/1077877.png',
                      width: 110,
                      height: 110,
                    ),
                  ),
                ),
              ),
            )),
        const SizedBox(height: 30),
        const Text(
          'Bienvenido a tu tienda de ropa',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
