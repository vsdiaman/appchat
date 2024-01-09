import 'package:flutter/material.dart';
import './services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo ou Imagem de Perfil
              CircleAvatar(
                radius: 50,
                // Substitua a propriedade backgroundImage com o caminho da imagem
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
              SizedBox(height: 20),
              // Campo de Entrada de Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Digite seu email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              // Campo de Entrada de Senha
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              // Botão de Login

              SizedBox(height: 10),
              // Link para Recuperar Senha

              // Link para Cadastro
            ],
          ),
        ),
      ),
    );
  }
}

// void main() => runApp(const MyApp());

