import 'package:flutter/material.dart';
import 'package:petlar_landing_page/widgets/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: AdaptableLine(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Navigation Links
          AdaptableLine(
            children: <Widget>[
              _navItem('Início'),
              _navItem('Hospedagem'),
              _navItem('Creche'),
              _navItem('Sobre'),
            ],
          ),
          const SizedBox(height: 10),
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
          color: Color(0xFF3D2C20),
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Widget _contactButton() {
    return InkWell(
      onTap: () {
        launchUrlString(
            "https://www.instagram.com/pet.lar.hospedagem/?igsh=MWpkdWd6YTBrODRvNA%3D%3D#");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFA67C52),
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
      ),
    );
  }
}
