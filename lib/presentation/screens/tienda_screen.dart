import 'package:ejercicio_uno/presentation/widgets/tienda_buttons.dart';
import 'package:ejercicio_uno/presentation/widgets/tienda_image.dart';
import 'package:flutter/material.dart';

class TiendaScreen extends StatelessWidget {
  const TiendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _Tienda(),
    );
  }
}

class _Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 227, 248),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TiendaImage(), TiendaButtons()],
        ),
      ),
    ));
  }
}
