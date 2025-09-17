import 'package:flutter/material.dart';
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
      title: 'PETLAR Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFDF8ED),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Navbar(),
            HeaderSection(),
            FeaturesSection(),
          ],
        ),
      ),
    );
  }
}
