import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Navigation Links
          Row(
            children: <Widget>[
              _navItem('Início'),
              _navItem('Hospedagem'),
              _navItem('Creche'),
              _navItem('Sobre'),
            ],
          ),
          // Contact Button
          _contactButton(),
        ],
      ),
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'DMSans',
          color: Color(0xFF3D2C20), // Cor do texto principal
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _contactButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFA67C52), // Cor do botão
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Text(
        'Entre em Contato',
        style: TextStyle(
          fontFamily: 'DMSans',
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

