import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Asegurarse de que la orientación sea bloqueada después de que la página se cargue
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp, // Solo permite la orientación vertical
      ]);
    });
  }

  @override
  void dispose() {
    // Restaura las orientaciones cuando se salga de la página de login
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondo2.png'),
                fit: BoxFit.cover,
                alignment: Alignment(0, 10.9), // Ajustado para bajar más el fondo
              ),
            ),
          ),
          // Contenido de inicio de sesión
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
              children: [
                // Reemplaza el CircleAvatar por tu logo
                CircleAvatar(
                  radius: 40, // Tamaño del círculo del logo
                  backgroundColor: Colors.transparent, // Fondo transparente
                  child: Image.asset(
                    'assets/logo.png', // Ruta de la imagen del logo
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Inicia',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sesión',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20), // Ajusta este espacio según sea necesario

                // Campos de Usuario y Contraseña con ancho reducido
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 250, // Ajusta el ancho del campo de texto
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Usuario',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: 250, // Ajusta el ancho del campo de texto
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            '¿has olvidado tu contraseña? ver',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Botón de Inicio de Sesión
                      ElevatedButton(
                        onPressed: () {
                          // Navegar a la vista de inicio
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Texto de Registro
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    '¿No te has registrado? Registrarse',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
