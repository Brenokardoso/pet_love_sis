import 'package:flutter/material.dart';

class ServiceDefinitionsPage extends StatelessWidget {
  const ServiceDefinitionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Definições de Serviços PetLar'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '5. Definições de Serviços PetLar',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              '5.1 Pet Sitter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Profissional responsável por cuidar do animal na ausência do tutor, mantendo sua rotina de alimentação, higiene, medicação e afeto. As Pet Sitters da PetLar recebem treinamento técnico e emocional, com supervisão direta do Médico Veterinário Responsável.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Hospedagem',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Ambiente seguro, climatizado e limitado a poucos animais, garantindo tranquilidade e atenção individual.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Recreação e Passeios',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Atividades supervisionadas que promovem saúde física e mental, com caminhadas e estímulos adequados.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Acompanhamento Veterinário',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Monitoramento contínuo da saúde e comportamento do pet, com atendimento rápido em caso de necessidade.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Banho e Higiene',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Banho leve e seguro, com produtos hipoalergênicos e profissionais treinados.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Relatórios e Comunicação',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Atualizações diárias por WhatsApp e relatórios comportamentais personalizados.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Transporte Pet',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Serviço de \'Leva & Traz\' com segurança, conforto e equipe treinada.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Text(
              'Visita de Adaptação',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Primeira visita gratuita para o pet conhecer o ambiente e os cuidadores, reduzindo a ansiedade.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Text(
              '6. Posicionamento da Marca',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            const Text(
              'A PetLar diferencia-se dos hotéis tradicionais por unir estrutura segura, atenção individual e afeto genuíno. Nosso objetivo é que cada tutor sinta-se tranquilo ao deixar seu pet sob nossos cuidados — um verdadeiro lar temporário.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

