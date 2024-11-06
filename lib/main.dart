import 'package:flutter/material.dart';
import 'package:demo_integrador/pages/login.page.dart'; // Importa la página de inicio
import 'package:demo_integrador/pages/Home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'boot_movil',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEDF2F6),
        useMaterial3: true,
      ),
      initialRoute: '/login', // Ruta inicial
      routes: {
        '/login': (context) =>  const LoginPage(), // Define la ruta '/login'
        '/home': (context) =>  const HomePage(), // Define la ruta '/home'
      },
    );
  }
}