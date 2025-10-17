import 'package:flutter/material.dart';
import 'package:petlar_landing_page/pages/cover_page.dart';
import 'package:petlar_landing_page/pages/hospedagem.dart';
import 'package:petlar_landing_page/pages/planos_de_servico_page.dart';
import 'package:petlar_landing_page/widgets/navbar.dart';
import 'package:petlar_landing_page/widgets/header_section.dart';
import 'package:petlar_landing_page/widgets/features_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PETLAR',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // debugShowCheckedModeBanner: kDebugMode ? true : false,
      routes: {
        "/": (context) => const CoverPage(),
        "/home": (context) => const HomePage(),
        "/hospedagem": (context) => const HospedagemPage(),
        "/plano": (context) => const TabelaBeneficios(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF8ED),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: .35,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            image: AssetImage("assets/img/background_paw.png"),
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              HeaderSection(),
              FeaturesSection(),
              Text(
                "empresa fictícia",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
