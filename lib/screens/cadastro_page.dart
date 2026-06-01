import 'package:flutter/material.dart';
import 'package:stockfull/screens/login_page.dart';
import 'package:stockfull/screens/registro_loja_page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

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
            Image.asset(
              "assets/images/logo-appII.png",
              width: 300,
            ),
            Text("Crie sua conta",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  labelText: "E-mail ",
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.green[900]),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.password, color: Colors.white),
                  labelText: "Crie uma senha",
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.green[900]),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: "Confirme sua senha",
                  prefixIcon: Icon(Icons.check_circle_outline_rounded,
                      color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.green[900]),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegistroLoja()));
              },
              child: Text(
                "Registrar",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[900],
                  foregroundColor: Colors.white,
                  fixedSize: Size(200, 50)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Já tem uma conta?"),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Fazer login"),
                style: TextButton.styleFrom(foregroundColor: Colors.green[900]),
              )
            ])
          ],
        )),
      ),
    );
  }
}
