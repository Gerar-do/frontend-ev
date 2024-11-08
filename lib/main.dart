import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_integrador/pages/login.page.dart';
import 'package:demo_integrador/pages/Home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configura la orientación general en el inicio de la aplicación
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'boot_movil',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEDF2F6),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
