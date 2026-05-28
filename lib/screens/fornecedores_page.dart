import 'package:flutter/material.dart';
import 'package:stockfull/widgets/menu_nav.dart';

class FornecedoresPage extends StatelessWidget {
  const FornecedoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MenuNav(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        child: Center(
          child: Column(spacing: 30, children: [
            Text(
              'Fornecedores',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 330,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      content: SizedBox(
                                          width: 150,
                                          height: 130,
                                          child: Column(
                                            spacing: 15,
                                            children: [
                                              TextField(
                                                decoration: InputDecoration(
                                                    labelText: 'Nome',
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                    labelText: 'Contato',
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                              )
                                            ],
                                          )));
                                });
                          },
                          label: Text(''),
                          iconAlignment: IconAlignment.end,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'MeuFornecedor',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          '(XX)XXXXX-XXXX',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
