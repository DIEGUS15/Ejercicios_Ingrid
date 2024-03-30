import 'package:flutter/material.dart';

class TiendaButtons extends StatelessWidget {
  const TiendaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomButton(
          nameButton: 'Correo Electrónico',
          icon: Icons.email,
        ),
        SizedBox(height: 10),
        CustomButton(
          nameButton: 'Contraseña',
          icon: Icons.lock,
        ),
        SizedBox(height: 10),
        CustomButton(
          nameButton: 'Ingresar',
        ),
        SizedBox(height: 10)
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String nameButton;
  final IconData? icon;

  const CustomButton({super.key, required this.nameButton, this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Icon(icon),
              ),
              // Icon(icon), // Icono
              const SizedBox(width: 10), // Espacio entre el icono y el texto
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10), // Padding alrededor del texto
                child: Text(nameButton, textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
