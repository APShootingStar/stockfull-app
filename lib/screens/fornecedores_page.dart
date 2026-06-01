import 'package:flutter/material.dart';
import 'package:stockfull/widgets/menu_nav.dart';

class FornecedoresPage extends StatelessWidget {
  const FornecedoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MenuNav(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Fornecedores',
          style: TextStyle(
              fontSize: 24,
              color: Colors.green[900],
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        child: Center(
          child: Column(spacing: 30, children: [
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
                                          height: 160,
                                          child: Column(
                                            spacing: 15,
                                            children: [
                                              TextField(
                                                  cursorColor: Colors.green[
                                                      900],
                                                  decoration: InputDecoration(
                                                      labelText: 'Nome',
                                                      labelStyle: TextStyle(
                                                        color:
                                                            Colors.green[900],
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .green),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)))),
                                              TextField(
                                                  cursorColor: Colors.green[
                                                      900],
                                                  decoration: InputDecoration(
                                                      labelText: 'Contato',
                                                      labelStyle: TextStyle(
                                                        color:
                                                            Colors.green[900],
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .green),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)))),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.green[900],
                                                    foregroundColor:
                                                        Colors.white),
                                                child: Text(
                                                  'Salvar',
                                                ),
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
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: SizedBox(
                                width: 150,
                                height: 160,
                                child: Column(
                                  spacing: 15,
                                  children: [
                                    TextField(
                                        cursorColor: Colors.green[900],
                                        decoration: InputDecoration(
                                            labelText: 'Nome',
                                            labelStyle: TextStyle(
                                              color: Colors.green[900],
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)))),
                                    TextField(
                                        cursorColor: Colors.green[900],
                                        decoration: InputDecoration(
                                            labelText: 'Contato',
                                            labelStyle: TextStyle(
                                              color: Colors.green[900],
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)))),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green[900],
                                          foregroundColor: Colors.white),
                                      child: Text(
                                        'Salvar',
                                      ),
                                    )
                                  ],
                                )));
                      });
                },
                child: Text(
                  'Novo Fornecedor',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    foregroundColor: Colors.white,
                    fixedSize: Size(200, 50)))
          ]),
        ),
      ),
    );
  }
}
