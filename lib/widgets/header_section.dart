import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Logo
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Image.asset(
              'assets/img/app_entry_pt.png',
              width: 250,
              height: 200,
            ),
          ),
          // Title
          const Text(
            'PETLAR',
            style: TextStyle(
              fontFamily: 'DMSerifDisplay',
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3D2C20),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Cuidamos do seu melhor amigo em nosso lar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DMSerifDisplay',
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3D2C20),
              height: 1.2,
            ),
          ),
          const SizedBox(height: 30),
          // Description
          const SizedBox(
            width: 600, // Limitar largura para melhor leitura
            child: Text(
              'Oferecemos hospedagem e cuidados carinhosos para cães enquanto você viaja, Seu pet fica confortável, seguro e feliz como se estivesse em casa!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 18,
                color: Color(0xFF3D2C20),
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Action Button
          ElevatedButton(
            onPressed: () {
              // Ação do botão
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFA67C52), // Cor do botão
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text(
              'AGENDAR AGORA',
              style: TextStyle(
                fontFamily: 'DMSans',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
