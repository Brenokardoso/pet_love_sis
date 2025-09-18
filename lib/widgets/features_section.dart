import 'package:flutter/material.dart';
import 'package:petlar_landing_page/widgets/utils.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: AdaptableLine(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _featureItem('assets/img/passeios_pt.png', 'PASSEIOS'),
          const SizedBox(height: 20),
          _featureItem('assets/img/fotos_videos_pt.png', 'FOTOS E VÍDEOS'),
          const SizedBox(height: 20),
          _featureItem('assets/img/veterinario_pte.png', 'VETERINÁRIO'),
        ],
      ),
    );
  }

  Widget _featureItem(String iconPath, String title) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            iconPath,
            width: 400,
            height: 400,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'DMSans',
              color: Color(0xFF3D2C20),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
