import 'package:flutter/material.dart';
import 'package:stockfull/screens/home_page.dart';

class RegistroLoja extends StatelessWidget {
  const RegistroLoja({super.key});

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
            child: SingleChildScrollView(
              child: Column(
                spacing: 30,
                children: [
                  Image.asset("assets/images/logo-appII.png", width: 300),
                  Text(
                    "Registre sua Loja",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.shopping_bag, color: Colors.white),
                      labelText: "Nome",
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.green[900],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.business, color: Colors.white),
                        labelText: "CNPJ",
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.green[900]),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.category, color: Colors.white),
                        labelText: "Nicho",
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.green[900]),
                  ),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon:
                              Icon(Icons.calendar_today, color: Colors.white),
                          labelText: "Ano de inauguração",
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.green[900])),

                  //Adicionar botão para adição de imagens
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Adicione sua logo",
                      style: TextStyle(fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      foregroundColor: Colors.white,
                      fixedSize: Size(200, 50),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Adicionar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[900],
                        foregroundColor: Colors.white,
                        fixedSize: Size(200, 50),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
