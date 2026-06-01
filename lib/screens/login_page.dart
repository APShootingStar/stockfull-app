import 'package:flutter/material.dart';
import 'package:stockfull/screens/cadastro_page.dart';
import 'package:stockfull/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 40,
        ),
        child: Center(
          child: Column(
            spacing: 30,
            children: [
              Image.asset('assets/images/logo-appII.png', width: 300),
              Text(
                'Conecte-se',
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.mail, color: Colors.white),
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Colors.green[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    labelText: 'Senha',
                    filled: true,
                    fillColor: Colors.green[900],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => HomePage())));
                },
                child: Text(
                  "Entrar",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    foregroundColor: Colors.white,
                    fixedSize: Size(200, 50)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("É novo por aqui?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                      );
                    },
                    child: Text(
                      "Crie sua conta!",
                      style: TextStyle(
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
