import 'package:flutter/material.dart';
import 'package:petlar_landing_page/widgets/navbar.dart';

class HospedagemPage extends StatelessWidget {
  const HospedagemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7EC),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const Navbar(),
              const Text(
                'O CUIDADO QUE SEU PET MERECE',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2C1D),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'A PetLar oferece mais do que uma hospedagem: é um serviço completo para garantir o bem-estar do seu amigo enquanto você estiver ausente.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF4A2C1D)),
              ),
              const SizedBox(height: 40),
              _buildSection(
                title: 'Hospedagem',
                description:
                    'Ambiente seguro, climatizado e com atenção individualizada.',
              ),
              _buildSection(
                title: 'Acompanhamento Veterinário',
                description:
                    'Supervisão e atendimento rápido quando necessário.',
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Image.asset(
                  "assets/img/pet_le_entrada.jpeg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 40),
              _buildSection(
                title: 'Banho & Higiene',
                description:
                    'Banho seguro com produtos hipoalergênicos (serviço a combinar).',
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Image.asset(
                  "assets/img/pet_love_cuidado.jpeg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 40),
              _buildSection(
                title: 'Recreação e Passeios',
                description:
                    'Atividades supervisionadas para manter a saúde e o bom humor.',
              ),
              _buildSection(
                title: 'Visita de Adaptação',
                description:
                    'Primeira visita gratuita para o pet conhecer o ambiente e os cuidadores.',
              ),
              _buildSection(
                title: 'Comunicação',
                description:
                    'Relatórios diários via WhatsApp para você acompanhar tudo!',
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Center(
                  child: Image.asset(
                    "assets/img/saida.jpeg",
                    width: 400,
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Nosso propósito é Cuidar com Amor 💛',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4A2C1D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '• $title:',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A2C1D),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Color(0xFF4A2C1D)),
          ),
        ],
      ),
    );
  }
}
