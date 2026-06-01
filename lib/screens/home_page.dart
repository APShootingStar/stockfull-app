import 'package:flutter/material.dart';
import 'package:stockfull/screens/configuracao_page.dart';
import 'package:stockfull/widgets/menu_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        bottomNavigationBar: MenuNav(),
        appBar: AppBar(
          title: Text(
            'Bem vindo, usuário!',
            style: TextStyle(
              color: Colors.green[900],
            ),
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfiguracaoPage()));
                },
                icon: Icon(
                  Icons.settings,
                  size: 27,
                  color: Colors.green[900],
                ))
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 30,
          ),
          child: Column(spacing: 15, children: [
            Text(
              "Últimas Atualizações",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Row(
                spacing: 5,
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                              "Produtos mais vendidos",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child:
                                  Image.asset('assets/images/circle-chart.png'),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                              "Rendimentos",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child:
                                    Image.asset('assets/images/line-chart.png'))
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Avisos",
              style: TextStyle(
                color: Colors.green[900],
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(
                      Icons.inventory_2,
                      color: Colors.white,
                    ),
                    Text(
                      "Encomendas:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Nenhuma",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(
                      Icons.warning,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Produtos em Falta:",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Nenhum",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        )));
  }
}
